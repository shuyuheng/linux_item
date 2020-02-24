const router = require('express').Router()
const { Jwt_verify, regexp } = require('../util')
// 引入数据库
const db = require('../db')
// 获取评论
router.get('/', Jwt_verify, async (req, res, next) => {
    // 获取用户的id 通过这个id查询对应的评论
    let id = req.query.id || req.userId
    // 当前页码
    let page = req.query.page || 1
    // 当前每页数量
    let pagenum = req.query.pagenum || 5

    let resule = await db.queryAsync(`SELECT a.id,a.user_id,b.head_src,a.comment,a.img_src,b.username,b.phone FROM comment a,users b WHERE user_com_id=? AND b.id=a.user_id ORDER BY create_time LIMIT ${(page - 1) * pagenum} , ${pagenum}`, id)
    if (!resule) return next('服务器错误')
    // 递归实现层级查询
    let fn = async function (resule) {
        for (let i in resule) {
            let item = resule[i]
            let resule1 = await db.queryAsync(`SELECT a.*,b.head_src,b.username,b.phone,c.username reply_name,c.phone reply_phone FROM comment a, users b, users c WHERE parent_id=? AND a.user_id = b.id AND a.reply_id = c.id`, item.id)
            if (!resule1) return next('服务器错误')
            if (resule1.length == 0) return
            item.children = resule1
            await fn(resule1)
        }
    }
    await fn(resule)
    res.json({
        ok: 1,
        resule
    })
})
// 添加评论
router.post('/', Jwt_verify, async (req, res, next) => {
    // 获取用户的id 通过这个id查询对应的评论
    let user_com_id = req.body.id
    let id = req.userId
    let comment = req.body.comment.trim()
    // 验证方法
    let flage = regexp([
        {
            value: comment,
            pattern: /^.+$/,
            message: '请输入评论内容'
        }
    ])
    if (flage !== 1) return next(flage)

    let data = {
        comment,
        parent_id:req.body.parent_id,
        img_src:req.body.img_src,
        user_id:id,
        user_com_id,
        create_time:Date.now(),
        reply_id:req.body.reply_id
    }
    await db.queryAsync('INSERT INTO comment set ?', data)
    res.json({
        id,
        comment
    })
})

module.exports = router