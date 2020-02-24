// 所有工具函数都写到这里

// ---验证函数
function regexp(arr) {
    for (let i = 0; i < arr.length; i++) {
        //    每一个对象
        let item = arr[i]
        // 开始验证
        if (!(item.pattern.test(item.value))) {
            return item.message
        }
    }
    return 1
}
// jsonwebtoken
const JWT = require('jsonwebtoken')
const { key } = require('./config')
// 解析令牌
function Jwt_verify(req, res, next) {
    // 1. 取出令牌（在协议头的 authorization上）
    let token = req.headers.authorization
    if (token == undefined) return res.json({
        ok: 0,
        error: '请上传令牌'
    })
    try {
        // 2. 提取出令牌（令牌前有 Bearer 七个字符）
        token = token.replace('Bearer ', '')
        // 3. 解析令牌，返回对象：{id:管理员ID, exp: 过期时间, crt：创建时间 ...}
        let data = JWT.verify(token, key)
        // 把解析的ID放到 req 上然后在下一个中羊件中就可以从 req 中取出来了 
        req.userId = data.id
        // 进入下一个中间件
        next()
    } catch (err) {
        res.json({
            'ok': 0,
            'error': '令牌无效！'
        })
    }
}
// 生成令牌
function Jwt_sign(id) {
    return JWT.sign({ id }, key)
}
// 上传文件
const multer = require('multer')
const fs = require('fs')
// 设置储存位置和文件名称
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        // 检查有没有文件目录
        fs.access('./public/upload_files', fs.constants.F_OK, (error) => {
            if (error) {
                fs.mkdir('./public/upload_files', (err) => { })
            }
            // 获取今天的日期
            let date = new Date().toLocaleDateString()
            // 判断有没有今天上传的文件
            let dir = './public/upload_files/' + date
            fs.access(dir, fs.constants.F_OK, (err) => {
                if (err) {
                    fs.mkdir(dir, (err) => { })
                }
                // 给定文件夹路径
                req.dir = dir
                cb(null, dir)
            })
        })

    },
    filename: function (req, file, cb) {
        let dir = Date.now().toString() + file.originalname.match(/\.\w*$/g)[0]
        // 拼接具体相对路径
        req.dir += ('/'+dir)
        cb(null, dir)
    }
})
const upload = multer({
    storage,
    // 最大尺寸限制
    limits: {
        fileSize: 1024 * 1024 * 4 //最大4M 单位: 字节
    },
    // 自定义锅炉函数
    fileFilter: (req, file, cb) => {
        // 文件类型
        if (['image/png', 'image/jpeg', 'image/jpg', 'image/gif'].indexOf(file.mimetype) !== -1)
            cb(null, true)
        else{
              cb(new Error('不允许上传的类型'))
        }
          
    }
})
module.exports = {
    // 验证
    regexp,
    // 解析令牌
    Jwt_verify,
    // 生成令牌
    Jwt_sign,
    // 上传文件
    upload
}