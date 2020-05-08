<template>
  <div class="animationLeft">
    <headBox title="登录注册" to="mine"  classif='classif'></headBox>
    <div class="hualogo ">
      <img src="@/assets/img/mine/wx_login_logo.png" alt="">
    </div>
    <div class="login " >
      <div class="login-item" v-if="Login==0">
        <div class="login-item-title" >手机号</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入手机号" v-model="phone" minlength="11" maxlength="11">
          <div class="login-item-info-icon">
            <i class="iconfont icon-shanchu" @click="empty"></i>
        </div>
      </div> 
      </div>
      <!-- 手机号短信登录 -->
      <div class="login-item" v-if="Login==1">
        <div class="login-item-title" >手机号/邮箱</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入手机号或邮箱" v-model="phoneEmail">
          <div class="login-item-info-icon">
            <i class="iconfont icon-shanchu" @click="empty"></i>
        </div>
        </div>
      </div>

      <div class="login-item" v-if="Login==0" >
        <div class="login-item-title">验证码</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入验证码" maxlength="4" v-model="captcha">
          <div class="login-item-info-btn" >{{obtain}}</div>
        </div>
      </div>
      <!-- 密码 -->
      <div class="login-item" v-if="Login==1">
        <div class="login-item-title">密码</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入验证码" maxlength="4" v-model="password" >
          <div class="login-item-info-icon">
            <i class="iconfont icon-yey2-copy"></i>
          </div>
          <div class="login-item-info-icon">
            <i class="iconfont icon-zhengyan"></i>
          </div>
          <div class="login-item-info-btn">忘记密码</div>
        </div>
      </div>
      <!-- <van-button type="warning" size="large">大号按钮</van-button> -->
      <button class="to-login" @click="login" >{{cellPhone}}</button>
      <div class="login-by-password" @click="account">{{accountSms}}</div>
    </div>
    <div class="quick">
      <div class="quick-tips">其他登录方式</div>
      <div class="quick-login">
        <div class="quick-login-item" v-for="(others,index) in other" :key="index">
          <i :class="others.other_icon"></i>
          <span>{{others.other_text}}</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import headBox from "@/components/header/headBox"

export default {
  data() {
    return {
      Login:0,
      accountSms:'账号密码登录',
      cellPhone:'手机登录/注册',
      phone:'',
      captcha:'',
      obtain:'获取验证码',
      phoneEmail:'',
      password:'',
      other: [
        {other_icon:"iconfont icon-qq",other_text:'QQ'},
        {other_icon:"iconfont icon-zhifubao",other_text:'支付宝'},
        {other_icon:"iconfont icon-youxiang",other_text:'邮箱注册'},
      ]
    }
  },
  watch: {
    phone(){
      var login_item = document.querySelector('.login-item-info-btn');
      var iconfonts = document.querySelector('.login-item-info-icon')
      if(this.phone) {
        login_item.style.color="#f00"
        iconfonts.style.display = 'block'
      }else {
        login_item.style.color=""
        iconfonts.style.display = 'none'
      }
    },
    phoneEmail(){
      var login_it = document.querySelector('.login-item-info-btn');
      var iconf = document.querySelector('.login-item-info-icon')
      if(this.phoneEmail) {
        login_it.style.color="#f00"
        iconf.style.display = 'block'
      }else {
        login_it.style.color=""
        iconf.style.display = 'none'
      }
    }
  },
  methods: {
    account() {
     if(!this.Login) {
      this.accountSms = '手机短信登录'
      this.cellPhone = '登录'
      this.Login = 1;
     }else if(this.Login) {
       this.accountSms = '账号密码登录'
      this.cellPhone = '手机登录/注册'
       this.Login = 0
     }
  },
  //清空用户的输入
  empty() {
    if(this.phone){
    this.phone=""
    }else if(this.phoneEmail) {
      this.phoneEmail = ''
    }
  },
    //手机登录注册
    login() {
      var phoneReg = /^1[345789]\d{9}$/;   //手机号正则格式
      var emailReg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;//邮箱
      //验证手机号是否为空
      if(!this.phone &&this.Login==0 ) {
        this.$toast({
          message:"手机号不能为空",
          position:'bottom'
      })
      return false;
  }
    //验证手机号长度
    if( this.Login===0 && !phoneReg.test(this.phone)) {
      this.$toast({
          message:"手机号格式错误",
          position:'bottom'
        });
        return false;
      };
      //验证验证码
      if(!this.captcha &&this.Login===0) {
        this.$toast({
          message:"验证码不能为空",
          position:"bottom"
        })
        return false;
      };
      //验证验证码长度
      if(this.captcha.length<4 &&this.Login===0) {
         this.$toast({
          message:"验证码最少4位",
          position:"bottom"
        })
        return false;
      }
      //验证手机邮箱
      if(!this.phoneEmail && this.Login === 1) {
        this.$toast({
          message:"账号不能为空",
          position:"bottom"
        })
        return false;
      };
      //验证邮箱和手机格式是否正确
      if(!emailReg.test(this.phoneEmail) && !phoneReg.test(this.phoneEmail)  && this.Login === 1) {
        this.$toast({
          message:"邮箱或手机号格式不对",
          position:"bottom"
        })
        return false;
      };
      //验证密码是否为空
      if(!this.password && this.Login === 1) {
        this.$toast({
          message:"密码不能为空",
          position:"bottom"
        })
        return false;
      };
      //验证密码长度
      if(this.password<4 && this.Login === 1) {
        this.$toast({
          message:"密码最少4位",
          position:"bottom"
        })
        return false;
      };
    }
  },
  components:{
    headBox
  }
}
</script>

<style lang="less" scoped>
.obtainActive {
  color:#f00
}
//   /deep/.van-button--warning {
//     background-color: #ff734c;
//     border: 1px solid #ff734c;
// }
.hualogo {
  text-align: center;
  margin-top: 2.42857143rem;
  img {
    width: 13.07142857rem;
    height: 1.71428571rem;
  }
}
.login {
  margin-top: 2.21428571rem;
  padding: 0 1.42857143rem;
  .login-item {
    border-bottom: 0.07142857rem #e9ecf0 solid;
  }
}
.login-item-title {
    font-size: 0.92857143rem;
  }
  .login-item-info {
    margin-top:0.28571429rem;
    display: flex;
    align-items: center;
    input {
      flex: 9;
      font-size: 1.014286rem;
      outline: none;
      border: none;
      padding: 0.5rem 0 0.5rem 0.14285714rem;
      color: #232628;
    }
  }
  ::-webkit-input-placeholder { 
    color:#c8c8c8;
  }
  .login-item + .login-item {
    margin-top: 1.78571429rem;
  }
  .login-item-info-btn {
    padding: 0.28571429rem 0.57142857rem;
    color: #71797f;
    font-size: 0.92857143rem;
    white-space: nowrap;
    text-align: center;
  }
  .to-login {
    margin-top: 2.92857143rem;
    height: 3rem;
    line-height: 3rem;
    background: #ff734c;
    color: #fff;
    font-size: 1.21428571rem;
    border-radius: 1.5rem;
    width: 100%;
    text-align: center;
    border: 0.07142857rem solid #ff734c;
    outline: none;
    appearance: none;
    transition: 0.3s;
  } 
  .login-by-password {
    margin-top: 2.14285714rem;
    color: #71797f;
    font-size: 1.21428571rem;
    text-align: center;
  }
  .quick {
    margin: 5.71428571rem auto 1.42857143rem;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
    width: 89.4%;
    .quick-tips {
      color: rgba(0, 0, 0, 0.2);
      width: 10rem;
      margin: -0.78571429rem auto 1.14285714rem;
      background: #fff;
      text-align: center;
    }
  }
  .quick-login {
    display: flex;
    height: 1.71428571rem;
  }
  .quick-login-item {
    flex: 1;
    height: 100%;
    line-height: 1.71428571rem;
    text-align: center;
    .iconfont {
      color: #1CACEA;
      font-size: 1.71428571rem;
      vertical-align: middle;
    }
    span {
      margin-left: 0.57142857rem;
      font-size: 0.92857143rem;
      vertical-align: middle;
    }
  }
  .login-item-info-icon {
    width: 3.14285714rem;
    text-align: center;
    cursor: pointer;
    color: #b4babf;
    display: none;
  }
</style>
