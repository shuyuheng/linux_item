const router = require('express').Router()
const db = require('../db')
const { Jwt_verify, regexp } = require('../util')
// 获取图片
router.get('/:id', async (req, res, next) => {
    // 获取id
    let id = req.params.id
    let result = await db.queryAsync(`SELECT * FROM imgs WHERE user_id=?;SELECT COUNT(*) total FROM imgs WHERE user_id=?`, [id, id])
    if (!result) return next('服务器错误')
    res.json({
        total: result[1][0].total,
        data: result[0]
    })
})
// 点赞
router.post('/zan',async (req,res,next) => {
    let id = req.body.id
    let result = await db.queryAsync(`UPDATE imgs SET zan=zan+1 WHERE id=?`,id)
    if (!result) return next('服务器错误')
    // 潘顿
    if(result.affectedRows == 1) return res.json({
        ok:1,
        msg:"修改成功"
    })
    next('修改失败')
})
// 删除图片
router.delete('/:id',async (req,res,next)=>{
    let id = req.params.id
    let result = await db.queryAsync(`DELETE FROM imgs WHERE id=?`,id)
    if (!result) return next('服务器错误')
    if(result.affectedRows == 1) return res.json({
        ok:1,
        msg:"删除成功"
    })
    next('删除失败')
})
// 添加图片
router.post('/',Jwt_verify,async (req,res,next) => {
    let userId = req.userId
    let result = await db.queryAsync(`INSERT INTO imgs SET ?`,{
        user_id:userId,
        img:req.body.img,
        text:req.body.title
    })
    if (!result) return next('服务器错误')
  // 潘顿
  if(result.affectedRows == 1) return res.json({
    ok:1,
    msg:"添加成功"
})
next('添加失败')
})
module.exports = router