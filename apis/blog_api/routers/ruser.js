const router = require('express').Router()
const db = require('../db')
const { Jwt_verify, regexp } = require('../util')
// 返回某用户所有数据
router.post('/',async (req,res,next) => {
    // 第一步插叙出当前用户的id
    let userdata = await db.queryAsync('SELECT id FROM users WHERE username=? OR phone=?',[req.body.name,req.body.phone])
    if (!userdata) return next('服务器错误')
    // 判断
    if(userdata.length == 0) return next('查无此人')
    let userId = userdata[0].id
    let navs = await db.queryAsync(`
    SELECT * FROM navs WHERE user_id=${userId}
    `)
    if (!navs) return next('服务器错误')
    // 返回数据
    res.json({
        ok:1,
        navs:navs[0],
        userId
    })
})
module.exports = router