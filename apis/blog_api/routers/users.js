const router = require('express').Router()
// 引入验证函数
const { regexp, Jwt_sign, Jwt_verify } = require('../util')
// 引入数据库
const db = require('../db')
// 授权码数组
let Authorizations = []

// 授权码获取
router.get('/token', (req, res, next) => {
    if (req.query.pwd == '17768938295') {
        let arr = [
            "A", "B", "C", "D", "E",
            "F", "G", "H", "I", "J",
            "K", "L", "M", "N", "O",
            "P", "Q", "R", "S", "T",
            "U", "V", "W", "X", "Y",
            "Z",
        ]
        let maxnum = 0
        function redom() {
            let str = `${arr[Math.floor(Math.random() * arr.length)]}${arr[Math.floor(Math.random() * arr.length)]}-${arr[Math.floor(Math.random() * arr.length)]}${arr[Math.floor(Math.random() * arr.length)]}${arr[Math.floor(Math.random() * arr.length)]}-${arr[Math.floor(Math.random() * arr.length)]}${arr[Math.floor(Math.random() * arr.length)]}`
            for (let i = 0; i < Authorizations.length; i++) {
                // 判断授权码是否等于其中某一个
                if (str == Authorizations[i]) {
                    maxnum++
                    if (maxnum >= 50) return next('无法生成')
                    return redom()
                }
            }
            return str
        }
        let auth_code = redom()
        Authorizations.push(auth_code)
        res.json({
            auth_code
        })
    } else next('获取失败')
})

// 用户注册
router.post('/', async (req, res, next) => {
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
    ])
    // 验证授权码
    let ffllgg = true
    for (let i = 0; i < Authorizations.length; i++) {
        // 判断授权码是否等于其中某一个
        if (req.body.auth_code == Authorizations[i]) {
            Authorizations.splice(i, 1)
            ffllgg = false
        }
    }
    if (ffllgg) return next('请填写正确的授权码');
    if (flage !== 1) return next(flage)
    // 判断该手机号是否已经注册
    let resule1 = await db.queryAsync('SELECT * FROM users WHERE phone=?', req.body.phone)
    if (!resule1) {
        Authorizations.push(req.body.auth_code)
        return next('服务器错误')
    }
    if (resule1.length != 0) {
        Authorizations.push(req.body.auth_code)
        return next('该手机号已经注册')
    }
    // 开始准备写入数据
    let resule = await db.queryAsync('INSERT INTO users SET ?', {
        phone: req.body.phone,
        password: req.body.password,
    })
    if (!resule) {
        Authorizations.push(req.body.auth_code)
        return next('服务器错误')
    }
    // 插入navs初始数据
    let navs = await db.queryAsync('INSERT INTO navs SET ?', { user_id: resule.insertId })
    if (!navs) {
        Authorizations.push(req.body.auth_code)
        return next('服务器错误')
    }
    res.json({
        'ok': 1,
        'msg': '注册成功'
    })
})
// 用户登录
router.post('/login', async (req, res, next) => {
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
            head_src: resule[0].head_src
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
    // 如果修改昵称
    if (req.body.username != undefined) {
        // 验证方法---------------------------
        let flage = regexp([
            {
                value: req.body.username,
                pattern: /^.{3,16}$/,
                message: '用户名位3-16任意字符'
            }
        ])
        if (flage !== 1) return next(flage)
        // -------------------------------------
        // 判断该用户名是否已经注册
        let resule1 = await db.queryAsync(`SELECT * FROM users WHERE username=? AND id != ${userId}`, req.body.username)
        if (resule1.length != 0) {
            return next('该用户名已存在')
        }
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
// 获取用户信息
router.post('/getuserbytoken', Jwt_verify, async (req, res, next) => {
    let userId = req.userId
    // 查询信息
    let resule = await db.queryAsync('SELECT * FROM users WHERE id=?', userId)
    if (!resule) return next('服务器错误')
    res.json({
        loginuser: resule[0]
    })
})

module.exports = router