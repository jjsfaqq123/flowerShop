var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
//引入cors
const cors = require('cors')
//引入session模块
var session =require('express-session')
//引入history模块
const  fallback = require('connect-history-api-fallback')
// console.log(fallback())
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/home');
var homeDetails = require('./routes/homedetails');
var login = require('./routes/login');
var app = express();
var server=require('http').createServer(app);
//2：创建io对象
var io=require("socket.io")(server);
io.listen(3000)

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(cors({
  //允许程序列表
  origin: ["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true, //每次请求都需要验证
}))
//session模块配置
app.use(session({
    secret:"64位字符串",  //64位安全字符串
    resave:true ,        //每次请求更新数据
    saveUninitialized: true,  //保存初始化数据
    cookie: {
      maxAge:1000,
    }
  }))
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public/images/')));
//监听客户端请求，如果不是服务器请求就直接返回给浏览器端解析
app.use(fallback())
app.use('/', indexRouter);
app.use('/api/home', usersRouter);
app.use('/api/homeDetails',homeDetails);
app.use('/api/user',login);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

io.on("connection",(socket)=> {
  io.emit('lists','欢迎来到小爱客服，请问有什么可以帮到您?');
  console.log('有客户连接到服务器')
  socket.on('message',(data)=> {
    if(data == "你好"||data == "您好") {
      io.emit('list','先生/女士,有什么可以帮到您');
    }else {
     
    }
  })
})
module.exports = app;
