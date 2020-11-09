<template>
    <div class="">
        <header class="headerbar">
            <div class="headerbar-left">
                <router-link to="/" class="navigation">
                    <img src="@/assets/img/cart/1.png" alt="" class="imgs">
                </router-link>
            </div>
            <div class="headerbar-center">
                <p class="headerbar-content">购物车</p>
            </div>
        </header>
        <m-scroll>
        <section class="main animationLeft">
            <!-- <div class="login">
                <span class="login-tips">登录后将同步您的购物车商品</span>
                <router-link to="" class="login-btn">登录</router-link>
            </div> -->
            <div class="emptycart" >
                <img src="@/assets/img/cart/m_shopping_empty_cart.png"  class="img">
                <p class="text">购物车内暂时没有商品.</p>
                <router-link to='/' class="home">去逛逛</router-link>
            </div>
            <!-- <div >
                <div class="promo-list">
                    <div class='cart-item' v-for="(item,index) in addtoIndex" :key="index">
                        <div class="cart-item-check">
                            <i class="iconfont icon-checkbox"></i>
                        </div>
                        <div class="cart-item-right">
                            <div class="cart-item-details">
                                <div class="cart-item-pic">
                                    <router-link to="javascript:void(0)">
                                        <img :src="'http://127.0.0.1:5000/'+item.flower_img" alt="">
                                    </router-link>
                                </div>
                                <div class="cart-item-info">
                                    <p class="cart-item-title">
                                        <router-link to="">
                                            {{item.flowers_always}}
                                        </router-link>
                                    </p>
                                     <div class="cart-item-inputs">
                                        <span>数量</span>
                                        <div class="cart-item-setnum">
                                            <span class="btn-cut">
                                                <i class="iconfont icon-iconfontdelete" ></i>
                                            </span>
                                            <input type="text" name="" id="" value="1" class="num-count">
                                            <span class="btn-add">
                                                <i class="iconfont icon-icon10"></i>
                                            </span>
                                        </div>
                                     </div>
                                     <p class="cart-item-price">
                                         ￥
                                         <span>{{item.flowers_blodprice}}</span>
                                     </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <span class="footer-left">
                    合计
                    <em>￥121</em>
                </span>
            </footer> -->
            <div class="guess" >
                <div class="guess-title">猜你喜欢</div>
                <ul class="guess-list">
                    <li class="guess-item" @click="btn" v-for="(item,i) of list" :key="i">
                        <a href="javascript:;">
                            <div class="guess-item-img">
                                <img :src="item.imgs" class="show_img">
                            </div>
                            <div class="guess-item-detail">
                                <div class="guess-item-info">
                                    <span class="guess-item-name">{{item.title}}</span>
                                </div>
                                <div class="guess-item-price">{{item.price}}</div>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="guess-bottom">
                    <span>已经到底了哦</span>
                </div>
            </div>
        </section>
        </m-scroll>
        <tabbar></tabbar>
    </div>
</template>
<script>
import { mapState } from "vuex"
export default {
    data(){
        return{
            list:[
                {imgs:require("@/assets/img/cart/9010966.jpg"),
                title:"一往情深.精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎",price:"¥249"},
                 {imgs:require("@/assets/img/cart/9010011.jpg"),
                title:"一心一意.玫瑰11枝，粉色勿忘我0.3扎",price:"¥139"},
                 {imgs:require("@/assets/img/cart/9012177.jpg"),
                title:"不变的承诺.99枝红玫瑰",price:"¥520"},
                 {imgs:require("@/assets/img/cart/9012009.jpg"),
                title:"忘情巴黎.33枝红玫瑰",price:"￥298"},
                 {imgs:require("@/assets/img/cart/9012450.jpg"),
                title:"韩式系列/初心不负. 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝",price:"¥229"},
                 {imgs:require("@/assets/img/cart/9012441.jpg"),
                title:" 语笑嫣然.粉佳人玫瑰9枝、粉色小菊、洋桔梗、大叶尤加利",price:"¥198"},
            ],
        }
    },
    methods:{
        btn(){
            this.$router.push("/detail")
        },
        
    },
    computed: {
    ...mapState(['addtoIndex'])
  },
}
</script>
<style lang="less" scoped>
    .headerbar {
        display: flex;
        height: 3.14285714rem;
        line-height: 3.14285714rem;
        background: #fff;
    }
    .headerbar-left{
        text-align: left;
        width: 6.28571429rem;
        height: 3.14285714rem;
        font-size: 0;
    }
    .headerbar-left > .navigation{
        display: inline-block;
        width: 3.14285714rem;
        height: 3.14285714rem;
        text-align: center;
    }
    .imgs{
        width:30px; 
        padding:10px; 
    }
    .headerbar-center{
        flex: 1;
        max-width: calc(100% - 12.57142857rem);
        text-align: center;
    }
    .headerbar-content{
        font-size: 1.14285714rem;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    p{
        margin: 0;
    
    }
    section.main .emptycart{
        border-top: 1px solid #E9ECF0;
        background-color: #fff;
        padding: 3.14285714rem 0 2.28571429rem;
        text-align: center;
    }
    section.main .emptycart img.img{
        width: 9.14285714rem;
        height: 7.14285714rem;
    }
    img {
        width: 100%;
        vertical-align: middle;
    }
    section.main .emptycart p.text{
        margin-top: 1.14285714rem;
        color: #232628;
        font-size: 1rem;
    }
    section.main .guess{
        margin-top: 0.57142857rem;
        padding-bottom: 3.5rem;
        background-color: #fff;
         border-top: 9px solid #E9ECF0;
    }
    section.main .guess-title{
        height: 4rem;
        font-size: 1.14285714rem;
        color: #232628;
        padding: 0 1.14285714rem;
        line-height: 4rem;
        text-align: left;
    }
    section.main .guess-list{
        font-size: 0;
        padding: 0 1.2%;
        text-align: left;
    }
    section.main .guess-item{
        display: inline-block;
        float: left;
        width: 48.08743169%;
        margin: 0 0.93333333% 0.57142857rem;
        border-radius: 0.28571429rem;
        overflow: hidden;
        box-shadow: 0px 4px 6px 0px #dee2e5;
    }
   section.main .guess-item-detail{
       height: 3.71428571rem;
       padding: 0.42857143rem 0.57142857rem;
   }
   section.main .guess-item-detail .guess-item-info{
       font-size: 0.85714286rem;
        color: #232628;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
   }
   section.main .guess-item-detail .guess-item-price{
       margin-top: 0.42857143rem;
        font-size: 1rem;
        color: #FF734C;
   }
   section.main .guess-bottom{
         height: 2.57142857rem;
        margin-top: 0.14285714rem;
        text-align: center;
        font-size: 0.85714286rem;
        line-height: 2.57142857rem;
        color: #71797F
   }
   section.main .login {
        height: 2.85714286rem;
        line-height: 2.85714286rem;
        text-align: center;
        background: #fff0ec;
        border: 0.07142857rem solid rgba(255, 115, 76, 0.2);
   }
   .login {
       .login-tips {
           font-size: 0.92857143rem;
        }
        .login-btn {
            display: inline-block;
            margin-left: 1.14285714rem;
            width: 4.57142857rem;
            height: 1.71428571rem;
            line-height: 1.71428571rem;
            text-align: center;
            border-radius: 1.92857143rem;
            border: 0.07142857rem solid #ff734c;
            color: #FF734C;
            font-size: 0.92857143rem;
        }
   }
   .emptycart {
       .home {
            display: inline-block;
            margin-top: 1rem;
            width: 8.28571429rem;
            height: 2rem;
            line-height: 2rem;
            background: #ff734c;
            border-radius: 1.92857143rem;
            color: #ffffff;
            font-size: 1.07142857rem;
            font-weight: 600;
       }
   }
   .guess-list::after {
       display: block;
       content:"";
       clear: both;
   }
   .cart-list {
    border-top:1px solid #E9ECF0;   
    background:#fff;
    font-size: 0;
    .promo-list {
        border-bottom: 1px solid #E9ECF0;
        .cart-item {
            padding:10px 0 0 ;
            border:0;
            overflow: hidden;
            color: #232628;
            .cart-item-check {
                position: relative;
                display: inline-block;
                width: 11.73%;
                height: 8.14285714rem;
                vertical-align: top;
                text-align: center;
                i {
                    display: inline-block;
                    font-size: 1.42857143rem;
                    margin-top: 3.28571429rem;
                }
            }
            .cart-item-right {
                padding-bottom: 1rem;
                display: inline-block;
                width:88.27%;
                vertical-align: top;
                .cart-item-details {
                    .cart-item-pic {
                        display: inline-block;
                        width:31.41993958%;
                        vertical-align: top;
                        a {
                            img {
                                width: 100%;
                                vertical-align: middle;
                            }
                        }
                    }
                    .cart-item-info {
                        position: relative;
                        display: inline-block;
                        width: 60.58006%;
                        height: 8.14285714rem;
                        padding: 0 0.85714286rem;
                        vertical-align: top;
                        .cart-item-title {
                            width:100%;
                            a {
                                display: inline-block;
                                max-width: 100%;
                                font-size: 1rem;
                                line-height: 1.28571429rem;
                                overflow: hidden;
                                -o-text-overflow: ellipsis;
                                text-overflow: ellipsis;
                                white-space: nowrap;
                            }
                        }
                        .cart-item-inputs {
                            margin-top: 0.42857143rem;
                            overflow: hidden;
                            span {
                                font-size: 0.85714286rem;
                                line-height: 1.71428571rem;
                                vertical-align: top;
                            }
                            .cart-item-setnum {
                                height: 1.71428571rem;
                                display: inline-block;
                                margin-left: 1rem;
                                background:  #F7F9FA;
                                border:1px solid #E9ECF0 !important;
                                span {
                                     width: 1.71428571rem;
                                    display: inline-block;
                                    line-height: 1.57142857rem;
                                    text-align: center;
                                    font-size: 0.85714286rem;
                                    vertical-align: top;
                                }
                                .btn-cut { 
                                    border-right:1px solid #E9ECF0 !important;
                                }
                                .btn-add {
                                     border-left:1px solid #E9ECF0 !important;
                                }
                                .num-count {
                                    width: 3.92857143rem;
                                    background-color: #F7F9FA;
                                    font-size: 0.85714286rem;
                                    line-height: 1.57142857rem;
                                    text-align: center;
                                    vertical-align: top;
                                    outline: none;
                                    border:0px solid #E9ECF0 !important;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
   }
   .cart-item-price {
       position: absolute;
       left: 0.85714286rem;
       bottom:0;
       font-size: 1rem;
       color: #FF734C;
       font-weight: 500;
   }
   .footer {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    height: 3.5rem;
    font-size: 0;
    background-color: #fff;
    line-height: 3.5rem;
    .footer-left {
        width:66.67%;
        display: inline-block;
        box-sizing: border-box;
        font-size: 1rem;
        padding-left: 1.14285714rem;
        vertical-align: top;
        border-top: 1px solid rgba(180, 186, 191, 0.5);
    }
   }
</style>
