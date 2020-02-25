const router = require('express').Router()
const db = require('../db')
const { Jwt_verify, regexp } = require('../util')
// 获取首页配置
router.get('/',Jwt_verify,async (req,res,next) => {
    let result = await db.queryAsync(`
    SELECT * FROM navs WHERE user_id=${req.userId}
    `)
    res.json({
        ok:1,
        data:result[0]
    })
})
// 修改接口
router.post('/',Jwt_verify,async (req,res,next) => {
    let id = req.userId
    let result = await db.queryAsync(`UPDATE navs SET ? WHERE user_id=?`,[req.body,id])
    if (!result) return next('服务器错误')
    res.json({ok:1})
})
module.exports = router