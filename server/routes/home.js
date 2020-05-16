var express = require('express');
var router = express.Router();
var pool = require('../pool')
/* GET users listing. */
router.get("/barthday",(req,res) => {
  //创建sql语句
  let sql =
    "SELECT * FROM homeScenc;SELECT * FROM homeLovers;SELECT * FROM homeFresh;SELECT * FROM homeImages;"+
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
router.get("/flower",(req,res) => {
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
router.get('/elder',(req,res) => {
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
router.get('/eternal',(req,res) => {
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
router.get('/cake',(req,res) => {
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
router.get('/gift',(req,res) => {
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
router.get('/chocolate',(req,res) => {
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
router.get('/what',(req,res) => {
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

module.exports = router;
