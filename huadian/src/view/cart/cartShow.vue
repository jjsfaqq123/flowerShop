<template>
    <div class="">
        <headerBox to="/" title="购物车" classif="cart"></headerBox>
        <section class="main animationLeft">
            <div class="cart-list">
                <div class="promo-list">
                    <div class='cart-item' v-for="(item,index) in addtoIndex" :key="index">
                        <div class="cart-item-check">
                            <i :class="objNum[index]===true?'iconfont icon-gouxuan':'iconfont icon-checkbox'" @click="addCount(index,item)"></i>
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
        </section>
        <footer class="footer">
            <span class="footer-left">
                合计:
                <em>￥{{price}}</em>
            </span>
            <div class="footer-right">
                <van-button type="warning">去结算({{count}})</van-button>
            </div>
        </footer>
    </div>
</template>
<script>
import { mapState } from "vuex"
import headerBox from "@/components/header/headBox"
export default {
    components: {
        headerBox
    },
    data(){
        return{
            count:0,
            icons:'iconfont icon-checkbox',
            objNum:{},
            price:0,
            itemArr :[]
        }
    },
    methods:{
        btn(){
            this.$router.push("/detail")
        },  
        addCount(index,item) {
            if(this.objNum[index] == true) {
                this.$delete(this.objNum, index)
                this.count--;
                // this.itemArr.pop(item.flowers_blodprice);
                for(var i=0;i<this.itemArr.length;i++) {
                     console.log(i)
                    this.itemArr.splice(i,1);
                    
                }
                 console.log(index)
                // if(this.itemArr.length!=0){
                //     this.price = this.itemArr.reduce(function(prev,elem) {
                //         console.log(prev,elem)
                //         return prev-elem;
                //     },this.price)
                // }else {
                //     this.price = 0
                // }
            }else {
                this.$set(this.objNum,index,true);
                this.icons ='iconfont icon-gouxuan'  
                this.count++;
                this.itemArr.push(item.flowers_blodprice)
                this.price = this.itemArr.reduce(function(prev,elem) {
                    return prev+elem;
                })
            }
          
        }
    },
    computed: {
    ...mapState(['addtoIndex'])
  },
}
</script>
<style lang="less" scoped>
    /deep/ .van-button {
        width:100%;
        height: 57px;
    }
    .van-button--warning {
        background-color: #FF734C;
    }
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
    height: 1000px;
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
                border-bottom: 1px solid #E9ECF0;
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
    bottom: -1px;
    left: 0;
    right: 0;
    height: 3.5rem;
    font-size: 0;
    background-color: #fff;
    line-height: 3.5rem;
    border-top: 1px solid rgba(180, 186, 191, 0.5);
        .footer-left {
            width:66.67%;
            display: inline-block;
            box-sizing: border-box;
            font-size: 1rem;
            padding-left: 1.14285714rem;
            vertical-align: top;
            em {
                color: #FF734C;
                font-size: 1.14285714rem;
                font-weight: 500;
                margin-left: 0.57142857rem;
                font-style:normal
            }
        }
        .footer-right {
            width:33.3%;
            display: inline-block;
            font-size: 1rem;
            height: 100px;
        }
   }
</style>
