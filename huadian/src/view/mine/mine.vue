<template>
  <div style="background: #E9ECF0;height: 700px;" class="">
    <headBox title='个人中心' to='/' ></headBox>
    <m-scroll>
      <section class="main  ssw animationLeft">
        <div class="userinformation">
          <div class="userinformation-notlogin" v-if="this.loginKey">
            <p class="userinformation-notlogin-hi">昵称：{{userInfo.uname}}</p>
            <p class="userinformation-notlogin-gologin">
              <img :src="'http://127.0.0.1:5000'+userInfo.img" alt="">
            </p>
          </div>
          <div class="btns">
             <van-button type="default" size="small" @click="quit">退出登录</van-button>
          </div>
        </div>
        <!-- order -->
        <div class="panel">
          <div class="panel-head">
            <div class="panel-head-title">我的订单</div>
            <div class="panel-head-title-right">
              <router-link to="" class="navation">
                全部订单
                <i class="iconfont icon-left1"></i>
              </router-link>
            </div>
          </div>
          <div class="panel-body">
            <div class="order">
              <div class="order-item" v-for="(item,index) in payment" :key="index">
                <router-link to="" class="navigation">
                  <img :src="item.payment_img" alt="" class="order-item-icon">
                  <p class="order-item-reddot"></p>
                  <p >{{item.payment_text}}</p>
                </router-link>
              </div>
            </div>
          </div>
        </div>
        <div class="panel">
          <div class="panel-body">
            <div class="linkbox">
              <div class="linkbox-item" v-for="(discounts,index) in discount" :key="index">
                <router-link to="" class="navigation">
                  <i :class="discounts.discount_icon"></i>
                  <p class="linkbox-item-txt">{{discounts.discount_text}}</p>
                </router-link>
              </div>
            </div>
            <div class="linkbox">
              <div class="linkbox-item" v-for="(receipts,index) in receipt" :key="index">
                <router-link to="" class="navigation">
                  <i :class="receipts.receipt_icon"></i>
                  <p class="linkbox-item-txt">{{receipts.receipt_text}}</p>
                </router-link>
              </div>
            </div>
          </div>
        </div>
        <div class="panel">
          <div class="panel-body">
            <div class="linkbox">
              <div class="linkbox-item" v-for="(contacts,index) in contact" :key="index">
                <router-link :to="contacts.path" class="navigation">
                  <i :class="contacts.contact_icon"></i>
                  <p class="linkbox-item-txt">{{contacts.contact_text}}</p>
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </section>
      </m-scroll>
    <tabbar></tabbar>
  </div>
</template>
<script>
import headBox from "@/components/header/headBox";
import { mapState } from "vuex";
import {  Dialog ,Toast} from "vant";
export default {
    data() {
      return {
        payment:[
          {payment_img:require('@/assets/img/mine/myinfo_pendingpay.png'),payment_text:"代付款"},
          {payment_img:require('@/assets/img/mine/myinfo_distribution.png'),payment_text:"今日配送"},
          {payment_img:require('@/assets/img/mine/myinfo_evaluation.png'),payment_text:"待评价"},
        ],
        discount: [
          {discount_icon:"iconfont icon-youhuiquan",discount_text:'优惠劵'},
          {discount_icon:"iconfont icon-quanyiqia",discount_text:'权益卡'},
          {discount_icon:"iconfont icon-yue",discount_text:'余额'},
          {discount_icon:"iconfont icon-integral",discount_text:'会员积分'},
        ],
        receipt:[
          {receipt_icon:'iconfont icon-shouhuodizhi',receipt_text:'收货地址'},
          {receipt_icon:'iconfont icon-naozhong1',receipt_text:'生日纪念提醒'},
          {receipt_icon:'iconfont icon-wujiaoxingxingxing',receipt_text:'我的收藏'},
          {receipt_icon:'iconfont icon-naozhong',receipt_text:'浏览记录'},
        ],
        contact: [
          {contact_icon:'iconfont icon-sevice',contact_text:"联系客服",path:"/customer"},
          {contact_icon:'iconfont icon-bangzhu666',contact_text:"帮助中心",path:"/customer"},
          {contact_icon:'iconfont icon-guanyu',contact_text:"关于花礼",path:"/customer"},
          {contact_icon:'iconfont icon-shezhi',contact_text:"设置",path:"/customer"},
        ],
        userInfo:{},
      }
    },
    components:{
      headBox
    },
    mounted() {
      if(this.loginKey) {
        this.userInfo = this.userArrar[0];
      }
    },
    methods: {
      quit() {
          Dialog.confirm({
          title:"系统提示",
          message:'你确定要退出吗?'
        }).then(() => {
          sessionStorage.clear()
          this.$router.push('/')
        }).catch((err) => {
          console.log(err)
        })
      } 
    },
     computed: {
      ...mapState(['userArrar','loginKey'])
  },
}
</script>
<style lang="less" scoped>
.ssw {
  background: url('../../assets/img/mine/backgroundv3.png');
}
  .main {
    width: 100%;
    min-height: 9.28571429rem;
    background-repeat: no-repeat;
    background-size: 100% 9.42857143rem;
    background-position: top center;
    
    .userinformation {
      display: flex;
      width: 100%;
      height:8rem;
      justify-content: center;
      align-items: center;
      position: relative;
    }
  }
  .userinformation-notlogin-hi {
    color:#fff;
    text-align: center;
  }
  .userinformation-notlogin-gologin {
    margin-top: 0.57142857rem;
    text-align: center;
    // a {
    //   display: block;
    //   width: 9rem;
    //   height: 2.57142857rem;
    //   line-height: 2.57142857rem;
    //   background-color: #fff;
    //   border-radius: 4rem;
    //   font-weight: 500;
    // }
    img {
      width: 70px;
      height: 70px;
      border-radius: 50%;
    }
  }
  .panel {
    margin: 0 0.57142857rem;
    background: #fff;
    border-radius: 0.28571429rem;
    box-shadow: 0 0.28571429rem 0.42857143rem 0 #DEE2E5;
    .panel-head {
      display: flex;
      width:100%;
      height: 3.14285714rem;
      line-height: 3.14285714rem;
      padding: 0 1.14285714rem;
      overflow: hidden;
      position: relative;
      box-sizing: border-box;
      .panel-head-title {
        flex: 1;
        font-size: 1.14285714rem;
        font-weight: 400;
      }
    }
  }
.panel-head-title-right {
  flex: 1;
  text-align: right;
}
.panel-head:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 1.14285714rem;
    right: 1.14285714rem;
    width: 100%;
    height: 0;
    border-bottom: 1px solid #E9ECF0;
}
.panel-body {
  .order {
    display: flex;
    align-items: center;
    .order-item {
      padding: 0.85714286rem 0.42857143rem;
      flex: 1;
      max-width: 33.33333333%;
      text-align: center;
      position: relative;
      font-size: 0.92857143rem;
    }
  } 
}
.order-item-reddot {
    position: absolute;
    z-index: 1;
    top: 0.92857143rem;
    right: 32%;
    width: 0.42857143rem;
    height: 0.42857143rem;
    border-radius: 50%;
    background: #FF734C;
    font-size: 0;
}
.order-item-reddot:empty {
  display: none;
}
.order-item-icon {
    width: 2.28571429rem;
    height: 2.28571429rem;
}
.linkbox-item {
  float: left;
    width: 24%;
    height: 6.42857143rem;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
  .navigation {
    padding:1rem 0;
    width:100%;
    .iconfont {
      font-size: 1.5rem;
    }
  }
}
.panel + .panel {
    margin-top: 0.57142857rem;
  }
  .linkbox-item-txt {
    font-size: 0.85714286rem;
    margin-top: 0.57142857rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .linkbox::after {
    content: "";
    display: block;
    clear: both;
  }
  .linkbox + .linkbox {
    position: relative;
  }
  .linkbox + .linkbox::before {
    content: "";
    position: absolute;
    left: 1.14285714rem;
    right: 1.14285714rem;
    top: 0;
    border-top: 1px solid #E9ECF0;
}
.btns {
  position: absolute;
  top:15px;
  right: 11px;
}
.colors {
  color:red;
  
}
</style>
