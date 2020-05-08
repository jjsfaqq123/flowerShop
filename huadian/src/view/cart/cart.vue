<template>
    <div class="">
        <header class="headerbar">
            <div class="headerbar-left">
                <a href="" class="navigation">
                    <img src="@/assets/img/cart/1.png" alt="" class="imgs">
                </a>
            </div>
            <div class="headerbar-center">
                <p class="headerbar-content">购物车</p>
            </div>
        </header>
        <m-scroll>
        <section class="main animationLeft">
            <div class="login">
                <span class="login-tips">登录后将同步您的购物车商品</span>
                <router-link to="" class="login-btn">登录</router-link>
            </div>
            <div class="emptycart">
                <img src="@/assets/img/cart/m_shopping_empty_cart.png"  class="img">
                <p class="text">购物车内暂时没有商品.</p>
                <router-link to='/' class="home">去逛逛</router-link>
            </div>
            <div class="guess">
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
</style>
