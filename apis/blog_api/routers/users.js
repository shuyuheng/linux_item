const router = require('express').Router()
// 引入验证函数
const { regexp, Jwt_sign, Jwt_verify } = require('../util')
// 引入数据库
const db = require('../db')
// 用户注册
router.post('/', async (req, res, next) => {
    console.log(req.body.auth_code)
    // 验证方法
    let flage = regexp([
        {
            value: req.body.phone,
            pattern: /^1[457389]\d{9}$/,
            message: '请填写正确的手机号'
        },
        {
            value: req.body.password,
            pattern: /^\w{6,12}$/,
            message: '请输入6-12位密码'
        },
        {
            value: req.body.auth_code,
            pattern: /^SYH-YQY-SYCZ-QZ34$/,
            message: '请填写正确的授权码'
        },
    ])
    if (flage !== 1) return next(flage)
    // 判断该手机号是否已经注册
    let resule1 = await db.queryAsync('SELECT * FROM users WHERE phone=?', req.body.phone)
    if (!resule1) return next('服务器错误')
    if (resule1.length != 0) return next('该手机号已经注册')
    // 开始准备写入数据
    let resule = await db.queryAsync('INSERT INTO users SET ?', {
        phone: req.body.phone,
        password: req.body.password,
    })
    if (!resule) return next('服务器错误')
    res.json({
        'ok': 1,
        'msg': '注册成功'
    })
})
// 用户登录
router.post('/login', async (req, res, next) => {
    console.log(req.body.phone)
    // 验证方法
    let flage = regexp([
        {
            value: req.body.phone,
            pattern: /^1[457389]\d{9}$/,
            message: '请填写正确的手机号'
        },
        {
            value: req.body.password,
            pattern: /^\w{6,12}$/,
            message: '请输入6-12位的数字字母下划线'
        }
    ])
    if (flage !== 1) return next(flage)
    let resule = await db.queryAsync('SELECT id, phone,username,head_src FROM users WHERE phone=? AND password=?', [req.body.phone, req.body.password])
    if (!resule) return next('服务器错误')
    if (resule.length != 0) {
        let token = Jwt_sign(resule[0].id)
        res.json({
            ok: 1,
            token,
            head_src:resule[0].head_src
        })
    } else {
        next('账号或密码错误')
    }
})
// 用户修改
router.put('/', Jwt_verify, async (req, res, next) => {
    let userId = req.userId
    let obj = {}
    if (req.body.password == undefined && req.body.username == undefined) return next('修改无意义')
    // 如果修改密码
    if (req.body.password != undefined) {
        // 验证方法---------------------------
        let flage = regexp([
            {
                value: req.body.password,
                pattern: /^\w{6,12}$/,
                message: '请输入6-12位的数字字母下划线'
            },
            {
                value: req.body.new_password,
                pattern: /^\w{6,12}$/,
                message: '请输入6-12位的数字字母下划线'
            }
        ])
        if (flage !== 1) return next(flage)
        // -------------------------------------
        obj.password = req.body.new_password
        // 验证原密码是否一样
        let resule = await db.queryAsync('SELECT * FROM users WHERE id=? AND password=?', [userId, req.body.password])
        if (!resule) return next('服务器错误')
        if(resule.length !== 1) return next('密码错误')
    }
    // 如果修改昵称
    if (req.body.username != undefined) {
        // 验证方法---------------------------
        let flage = regexp([
            {
                value: req.body.username,
                pattern: /^.{4,6}$/,
                message: '用户名位4-6任意字符'
            }
        ])
        if (flage !== 1) return next(flage)
        // -------------------------------------
        obj.username = req.body.username
    }
    // 如果修改头像
    if (req.body.head_src != undefined) {
        // 验证方法---------------------------
        let flage = regexp([
            {
                value: req.body.head_src,
                pattern: /^\/upload_files.*/,
                message: '请输入正确地址'
            }
        ])
        if (flage !== 1) return next(flage)
        // -------------------------------------
        obj.head_src = req.body.head_src
    }
    await db.queryAsync('UPDATE users SET ? WHERE id=' + userId, obj)
    res.json({
        ok: 1,
        msg: '修改成功'
    })
})

module.exports = router