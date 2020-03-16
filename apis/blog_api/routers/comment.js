const router = require('express').Router()
const { Jwt_verify, regexp } = require('../util')
// 引入数据库
const db = require('../db')

// 获取留言
router.get('/:id',async (req,res,next) => {
    let retsult = await db.queryAsync(`
    SELECT * FROM comment WHERE user_id=? ORDER BY time desc
    `,req.params.id)
    if(!retsult) return next('服务器错误')
    res.json({
        ok:1,
        data:retsult
    })
})
// 添加留言
router.post('/',async (req,res,next) => {
    req.body.time = Date.now()
    let retsult = await db.queryAsync('INSERT INTO comment SET ?',req.body)
    if(!retsult || retsult.affectedRows != 1) return next('服务器错误')
    res.json({
        ok:1,
        msg:'添加成功'
    })
})
// 删除留言
router.delete('/:id',async (req,res,next) => {
    let retsult = await db.queryAsync('DELETE FROM comment WHERE id=?',req.params.id)
    if(!retsult || retsult.affectedRows != 1) return next('服务器错误')
    res.json({
        ok:1,
        msg:'删除成功'
    })
})


module.exports = router