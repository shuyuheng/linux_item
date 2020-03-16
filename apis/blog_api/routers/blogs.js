const router = require('express').Router()
// 引入验证函数
const { regexp, Jwt_sign, Jwt_verify } = require('../util')
// 引入数据库
const db = require('../db')
// 获取文章
router.get('/:id', async (req, res, next) => {
    let id = req.params.id
    let page = req.query.page || 1
    let pagenum = req.query.pagenum || 8
    let startindex = (page - 1) * pagenum
    // 开始查询
    let resule = await db.queryAsync('SELECT * FROM blogs WHERE user_id=? ORDER BY isStick desc LIMIT ?,?;SELECT COUNT(*) total FROM blogs WHERE user_id=?', [
        id, startindex, Number(pagenum), id
    ])
    if (!resule) return next('服务器错误')
    res.json({
        ok: 1,
        total: resule[1][0].total,
        data: resule[0]
    })
})
// 添加文章
router.post('/', Jwt_verify, async (req, res, next) => {
    let content = req.body.content
    req.body.user_id = req.userId
    // 重新赋值
    req.body.isStick = req.body.isStick ? 1 : 0
    delete req.body.content
    req.body.time = Date.now()
    // 插入数据
    let resule = await db.queryAsync('INSERT INTO blogs SET ?', req.body)
    if (!resule) return next('服务器错误')
    let addid = resule.insertId;
    let resule1 = await db.queryAsync(`INSERT INTO blogx (id,content) VALUES(${addid},?)`,content)
    if (!resule1) return next('服务器错误')
    res.json({
        ok:1,
        msg:"添加成功"
    })
})
// 查看某一篇文章
router.get('/blogx/:id',async (req,res,next) => {
    let id = req.params.id
    let result1 = await db.queryAsync('UPDATE blogs SET browse=browse+1 WHERE id=?',id)
    if(!result1) return next('服务器错误')
    let result = await db.queryAsync('SELECT * FROM blogx WHERE id=?',id)
    if(!result) return next('服务器错误')
    if(result.length <= 0) return next('未获取到')
    res.json({
        ok:1,
        data:result[0]
    })
})
// 删除文章
router.delete('/:id',Jwt_verify,async (req,res,next) => {
    let result = await db.queryAsync('DELETE FROM blogs WHERE id=?;DELETE FROM blogx WHERE id=?',[req.params.id,req.params.id])
    if(!result) return next('服务器错误')
    res.json({
        ok:1,
        msg:'删除成功~'
    })
})
module.exports = router