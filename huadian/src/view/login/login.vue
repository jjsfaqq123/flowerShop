<template>
  <div>
    <headBox title="登录注册" to="mine"  classif='classif'></headBox>
    <div class="hualogo">
      <img src="@/assets/img/mine/wx_login_logo.png" alt="">
    </div>
    <div class="login">
      <div class="login-item">
        <div class="login-item-title" >手机号</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入手机号" minlength="11" maxlength="11">
        </div>
      </div>
      <div class="login-item">
        <div class="login-item-title">验证码</div>
        <div class="login-item-info">
          <input type="text" placeholder="请输入验证码" maxlength="6">
          <div class="login-item-info-btn">获取验证码</div>
        </div>
      </div>
      <!-- <van-button type="warning" size="large">大号按钮</van-button> -->
      <button class="to-login">手机登录/注册</button>
      <div class="login-by-password">账号密码登录</div>
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
      other: [
        {other_icon:"iconfont icon-qq",other_text:'QQ'},
        {other_icon:"iconfont icon-zhifubao",other_text:'支付宝'},
        {other_icon:"iconfont icon-youxiang",other_text:'邮箱注册'},
      ]
    }
  },
  components:{
    headBox
  }
}
</script>

<style lang="less" scoped>
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
      flex: 1;
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
</style>
