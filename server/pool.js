const  mysql = require('mysql');
const createdPool = mysql.createConnection({
  host: "localhost",   //数据库地址
  user:"root",         //用户名
  password:"",         //密码
  database:"flowershop", //数据库名
  connectionLimit:15,    //15个连接
  multipleStatements:true   //执行多条sql语句
})
module.exports = createdPool