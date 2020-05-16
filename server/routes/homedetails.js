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
  //创建sql语句
  let sql = 'SELECT * FROM flowerDetails';
  pool.query(sql,(err,result) => {
    console.log(result)
    if(err) throw err;
    if(result.length>0) {
      res.send({ code:1, msg:"", flowerDetails:result});
    }else {
      res.send({ code:0 ,msg:'没有你要查找的数据'});
    }
  })
})






module.exports = router