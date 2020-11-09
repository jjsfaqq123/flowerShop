var express = require('express');
var router = express.Router();
var pool = require('../pool');
//请求接口首页详情页母亲节接口 /api/homeDetaild/mother
router.get('/mother',(req,res) => {
  //创建sql语句
  let sql = "SELECT * FROM homeDetailsMother;SELECT * FROM homeDetailsUnder;SELECT * FROM homeDetailsElegant;"+
  "SELECT * FROM homeDetailsFragrant"
  pool.query(sql, (err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:'' , homeDetailsMother:result});
    }else {
      res.send({ code:0 , msg:'没有你要查找的数据'});
    }
  })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flower
router.get('/flower',(req,res) => {
    var  params = req.query;
    var pon = params.pageIndex;
    var  ps = params.pageSize;
    if(!pon){pon=1};
    if(!ps){ps=10};
    let offset = (pon-1)*ps;
    ps = parseInt(ps);
    //创建sql语句
    let sql = "SELECT  * FROM flowerDetails  LIMIT ?,?";
    pool.query(sql,[offset,ps],(err,result) => {
      if(err) throw err;
      if(result.length>0) {
        res.send({ code:1, msg:"", flowerDetails:result});
      }else {
        res.send({ code:0 ,msg:'没有你要查找的数据'});
      }
    })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flowerGive
router.get('/flowerGive',(req,res) => {
  var  params = req.query;
  var pon = params.pageIndex;
  var  ps = params.pageSize;
  if(!pon){pon=1};
  if(!ps){ps=10};
  let offset = (pon-1)*ps;
  ps = parseInt(ps);
  //创建sql语句
  let sql = "SELECT  * FROM flowerDetailsGive  LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flowerDetailsGive:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flowerBoyfrienf
router.get('/flowerBoyfrienf',(req,res) => {
  var  params = req.query;
  var pon = params.pageIndex;
  var  ps = params.pageSize;
  if(!pon){pon=1};
  if(!ps){ps=10};
  let offset = (pon-1)*ps;
  ps = parseInt(ps);
  //创建sql语句
  let sql = "SELECT  * FROM flowerDetailsBoyfrienf  LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flowerDetailsBoyfrienf:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flowerfriend
router.get('/flowerfriend',(req,res) => {
  var  params = req.query;
  var pon = params.pageIndex;
  var  ps = params.pageSize;
  if(!pon){pon=1};
  if(!ps){ps=10};
  let offset = (pon-1)*ps;
  ps = parseInt(ps);
  //创建sql语句
  let sql = "SELECT  * FROM flowerDetailsFriend  LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flowerDetailsFriend:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flowerolder
router.get('/flowerolder',(req,res) => {
  var  params = req.query;
  var pon = params.pageIndex;
  var  ps = params.pageSize;
  if(!pon){pon=1};
  if(!ps){ps=10};
  let offset = (pon-1)*ps;
  ps = parseInt(ps);
  //创建sql语句
  let sql = "SELECT  * FROM flowerDetailsDlder  LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flowerDetailsDlder:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})

//请求接口首页详情页鲜花接口 /api/homeDetails/flowersalesgflfriend
router.get('/flowersalesgflfriend',(req,res) => {
  var  params = req.query;
  var pon = params.pageIndex;
  var  ps = params.pageSize;
  if(!pon){pon=1};
  if(!ps){ps=10};
  let offset = (pon-1)*ps;
  ps = parseInt(ps);
  //创建sql语句
  let sql = "SELECT  * FROM flowerDetailssalesGiflfriend  LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result) => {
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flfriend:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})
module.exports = router