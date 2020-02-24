// 暴露对象
module.exports = {
    // 数据库配置
    mysql_config: {
        host: '127.0.0.1',
        port: 3306,
        user: 'root',
        password: 'root',
        database: 'syhblog',
        multipleStatements: true //运行多条语句查询
    },
    // 服务器配置
    server:{
        ip:'0.0.0.0',
        port:'8888',
        version:'',
    },
    key:'ZBX_SYH'
    // 等 ..... 需要的对象配置都写在这里
}