const express = require("express")
const app = express()


// 1.设置静态资源
app.use(express.static('my_public'));


app.listen('9999','0.0.0.0',()=>{
    console.log('监听端口:9999')
})