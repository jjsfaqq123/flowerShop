//引入第三方模块
const express  = require('express');
//引入连接池
const pool = require('./pool');
//引入cors
const cors = require('cors')
//引入body-parser中间件
const bodyParser = require("body-parser")
//调用第三方模块
const server = express();
//解析应用程序
server.use(bodyParser.urlencoded({ extended: false }))
//解析JSON
server.use(bodyParser.json())
//配置跨越模块
//允许那个程序跨域访问服务器
//脚手架 8080
//服务器 5050
server.use(cors({
  //允许程序列表
  origin: ["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true, //每次请求都需要验证
}))
//配置session模块
// server.use(session({
//   secret:"64位字符串",  //64位安全字符串
//   resave:true ,        //每次请求更新数据
//   saveUninitialized: true  //保存初始化数据
// }))
//配置项目静态目录 Public
server.use(express.static("public"))
//请求homeBathday
server.get("/homebarthday",(req,res) => {
  
  //创建sql语句
  let url =
   "SELECT * FROM homeProcat;SELECT * FROM homeScenc;SELECT * FROM homeLovers;SELECT * FROM homeFresh;SELECT * FROM homeImages"
 pool.query(url,(err,result) => {
  if(err)throw err;
  if(result.length>0){
    console.log(result)
    res.send({ code:1, msg:"", barthday:result });
  }else {
    res.send( {code:0, msg:"没有您要查找的数据"});
  }
 })
})
//监听端口
server.listen(5000,function() {
  console.log("服务器监听在5000端口")
})