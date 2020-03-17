const router = require('express').Router()
let db = require('../db')
const { regexp, Jwt_sign, Jwt_verify } = require('../util')
router.get('/:id',async (req,res,next) => {
    let id = req.params.id
    // 通过这个id获取个人简介
    let resule = await db.queryAsync('SELECT content FROM resume WHERE user_id=?',id)
    if (!resule || resule.length == 0) return next('服务器错误')
    res.json({
        ok:1,
        content:resule[0].content
    })
})
router.post('/',Jwt_verify,async (req,res,next) => {
    let userId = req.userId
    // 通过这个id获取个人简介
    let resule = await db.queryAsync(`INSERT INTO resume (content,user_id) VALUES(?,${userId}) ON DUPLICATE KEY UPDATE content=?;`,[req.body.content,req.body.content])
    if (!resule) return next('服务器错误')
    res.json({
        ok:1,
        msg:"更改成功！"
    })
})
module.exports = router