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
//请求首页接口 api/home/barthday
server.get("/api/home/barthday",(req,res) => {
  //创建sql语句
  let sql =
   "SELECT * FROM homeProcat;SELECT * FROM homeScenc;SELECT * FROM homeLovers;SELECT * FROM homeFresh;SELECT * FROM homeImages;"+
   "SELECT * FROM homeFont"
 pool.query(sql,(err,result) => {
  if(err)throw err;
  if(result.length>0){
    res.send({ code:1, msg:"", barthday:result });
  }else {
    res.send( {code:0, msg:"没有您要查找的数据"});
  }
 })
})

//请求首页送恋人花 接口api/home/flower
server.get("/api/home/flower",(req,res) => {
  //创建sql语句
  let sql = "SELECT * FROM homeLove"
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"" ,homeLove:result});
    }else {
      res.send({ code:0,msg:'没有你要查找的数据'})
    }
  })
})

// 请求首页鲜花2接口 /api/home/elder
server.get('/api/home/elder',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeElder";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeEler:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页鲜花3接口 /api/home/eternal
server.get('/api/home/eternal',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeEternal";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeEternal:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页蛋糕接口 /api/home/cake
server.get('/api/home/cake',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeCake";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeCake:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页礼品 /api/home/gift
server.get('/api/home/gift',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeGift";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeGift:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页巧克力 /api/home/chocolate
server.get('/api/home/chocolate',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeChocolate";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeChocolate:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页团队介绍  /api/home/what
server.get('/api/home/what',(req,res) => {
  // 创建sql语句
  let  sql = "SELECT * FROM homeWtat";
  pool.query(sql,(err,result) => {
    if(err)throw err;
    if(result.length>0) {
      res.send({ code:1,msg:'',homeWhat:result});
    }else {
      res.send({ code:0, msg:'没有你要查找的数据'})
    }
  })
})

//请求接口首页详情页母亲节接口 /api/homeDetaild/mother
server.get('/api/homeDetails/mother',(req,res) => {
  //创建sql语句
  let sql = "SELECT * FROM homeDetailsMother;SELECT * FROM homeDetailsUnder;SELECT * FROM homeDetailsElegant;"+
  "SELECT * FROM homeDetailsFragrant"
  pool.query(sql, (err,result) => {
    console.log(result)
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:'' , homeDetailsMother:result});
    }else {
      res.send({ code:0 , msg:'没有你要查找的数据'});
    }
  })
})
//监听端口
server.listen(5000,function() {
  console.log("服务器监听在5000端口")
})