var express = require('express');
var router = express.Router();
var pool = require('../pool');
var base64 = require('base-64');
//保存用户的登录状态
//用户注册
//http://127.0.0.1:5000/api/user/registered?name=tom&upwd=123
router.post("/login",(req,res)=>{
    //6.1:接收网页传递数据 用户名和密码
    var u = base64.decode(req.body.name);
    var p = base64.decode(req.body.upwd);
    //6.2:创建sql
    var sql = "SELECT id FROM flower_login";
    sql+=" WHERE uname = ? AND upwd = md5(?)";
    //6.3:执行sql语句并且获取返回结果
    pool.query(sql,[u,p],(err,result)=>{
     //6.4:判断登录是否成功
     if(err)throw err;
     //6.5:将结果返回网页
     if(result.length==0){
       res.send({code:-1,msg:"用户名或密码有误"})
     }else{
       //获取当前登录用户id
       //result=[{id:2}]
       var  id = result[0].id;
       //将用户id保存session对象中
       //uid当前登录：用户凭证
       res.send({code:1,msg:"登录成功",loginKey:id});
     }
    });
  })
  //用户信息
  router.get('/userInfo',(req,res)=> {
   console.log(req.session.id)
    if(req.session.id) {
      //创建sql语句
      var sql = 'SELECT * FROM flower_userInfo';
      pool.query(sql,(err,result)=> {
        if(err) throw err;
        console.log(result)
        res.send({code:1,userInfon:result})
      })
    }
  })
module.exports = router;