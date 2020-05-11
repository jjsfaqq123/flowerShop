<template>
    <div>
      <section class="product">
        <h3 class="product-title">巧克力推荐</h3>
        <div class="product-list product-list-vertical">
          <div class="product-item product-item-vertical" v-for="(chocolates,index) in  chocolate" :key="index">
            <router-link to="" class="navigation">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+chocolates.chocolate_img" alt="">
              </div>
              <div class="product-item-info">
                <!-- <div class="product-item-info-tags">
                  <span>{{eternals.eternal_best}}</span>
                </div> -->
                <div class="product-item-info-name  text-overflow ">{{chocolates.chocolate_my}}</div>
                <div class="product-item-info-bottom">
                  <div class="product-item-info-bottom-left">
                    <p class="product-item-info-prices">
                      <strong>{{chocolates.chocolate_original}}</strong>
                      <s>{{chocolates.chocolate_activity}}</s>
                    </p>
                    <p class="product-item-info-sales">{{chocolates.chocolate_slod}}</p>
                  </div>
                  <div class="product-item-info-bottom-right">
                    <i class="iconfont icon-gouwuche"></i>
                  </div>
                </div>
              </div>
            </router-link>
          </div>
        </div>
        <div class="product-more">
          <router-link to="" class="product-more-btn">查看跟多</router-link>
        </div>
      </section>
      <section class="qiyetuangou">
        <router-link to="">
          <img src="@/assets/img/body/m_home_qiyetuangou.png" alt="" class="navigation">
        </router-link>  
      </section> 
      <section class="brand">
        <h3 class="brand-title">为什么要选择我们</h3>
        <div class="brand-list">
          <div class="brand-item" v-for="(whats,index) in what" :key="index">
            <img :src="'http://127.0.0.1:5000/'+whats.homeWhath_img" alt=""> 
            <p>{{whats.homeWhathwhat_what}}</p>
          </div>
        </div>
      </section> 
    </div>
</template>
<script>
import { homeChocclate,homeTeam } from "@/service/api";
export default {
    data() {
      return {
        chocolate:null,
        what:null,
      }
    },
    created() {
      this.getChocolate()
      this.getWhat()
    },
    methods: {
     async getChocolate() {
        let res = await homeChocclate();
         this.chocolate = res.data.homeChocolate;
      },
      // 团队介绍
     async getWhat() {
         let res = await homeTeam();
         this.what = res.data.homeWhat;
      }
    }
}
</script>
<style lang="less" scoped>
.product {
    margin-top: 0.57142857rem;
    background: #fff;
    padding-bottom: 1.428571rem;
    .product-title {
      padding:1.4rem 0;
      text-align: center;
      font-size: 1.14285714rem;
      font-weight: normal; 
    }
  }
  .product-list.product-list-vertical {
    padding:0 0.28571429rem 1.71428571rem
  }
  .product-item.product-item-vertical {
    float: left;
    padding:0.28571429rem;
    width:50%;
    margin-bottom:  0.57142857rem; 
    box-sizing: border-box;
  }
  .product-item > .navigation {
    overflow: hidden;
    box-shadow: 0 0.28571429rem 0.85714286rem 0 #e9ecf0;
    border-radius: 0.28571429rem;
    display: block;
  }
  .product-item.product-item-vertical .product-item-pic {
    max-height: 13.57142857rem;
    overflow: hidden;
  }
  img{
    width:100%;
    vertical-align: middle;
  }
  .product-item.product-item-vertical .product-item-info {
    padding: 0.57142857rem 0.57142857rem 1.14285714rem;
    height: 5.85714286rem;
    overflow: hidden;
    position: relative;
  }
  .product-item.product-item-vertical .product-item-info-tags {
    margin-bottom: 0.57142857rem;
  }
  .product-item-info-tags > span {
    display: inline-block;
    border-radius: 10rem;
    border:1px solid #FF734C;
    color:#FF734C;
    font-size: 0.71428571rem;
    padding: 0 0.28571429rem;
  }
  .product-item-info-name {
    font-weight: 300;
  }
  .text-overflow {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .product-item.product-item-vertical .product-item-info-bottom {
    position: absolute;
    left: 0.57142857rem;
    right: 0.57142857rem;
    bottom: 1.14285714rem;
    z-index: 1;
  }
  .product-item-info-bottom {
    display: flex;
    align-items: center;
  }
  .product-item-info-bottom-left {
    flex: 1;
  } 
  .product-item-info-prices > strong {
    font-size: 1.28571429rem;
    color: #FF734C;
    font-weight: 500;  
  }
  .product-item-info-prices >s {
    font-size: 0.71428571rem;
    color: #71797F;
    margin-left: 0.42857143rem;
  }
  .product-item-info-sales {
    font-size: 0.71428571rem;
    color: #71797F;
  }
  .product-item-info-bottom-right {
    text-align: right;
  }
  .product-list:after {
    content: "";
    display: block;
    height: 0;
    clear: both;
}
.brand-list::after {
  content: "";
  display: block;
  clear: both;
  height: 0;
}
.product-more-btn {
  display: block;
  margin: 0 auto;
  font-size: 0.85714286rem;
  border: 1px solid #232628;
  width: 6.71428571rem;
  height: 1.71428571rem;
  text-align: center;
  line-height:1.71428571rem;
  border-radius: 0.14285714rem;
}
.brand {
  background:#fff;
  .brand-title {
    font-size: 1.14285714rem;
    padding: 1.42857143rem 0;
    text-align: center;
    font-weight: normal;
  }
}

.brand-item {
  float: left;
  width: 33.33333333%;
  text-align: center;
  padding-bottom: 1.71428571rem;
  img {
    width: 4.571429rem;
    height: 4.571429rem;
  }
  p {
    font-size: 0.85714286rem;
    margin-top: 0.28571429rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
}
</style>
