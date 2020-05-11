<template>
    <div>
      <section class="product">
        <h3 class="product-title">礼品推荐</h3>
        <div class="product-list product-list-vertical">
          <div class="product-item product-item-vertical" v-for="(gifts,index) in  gift" :key="index">
            <router-link to="" class="navigation">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+gifts.gift_img" alt="">
              </div>
              <div class="product-item-info">
                <div class="product-item-info-tags">
                  <span>{{gifts.gift_best}}</span>
                </div>
                <div class="product-item-info-name  text-overflow ">{{gifts.gift_my}}</div>
                <div class="product-item-info-bottom">
                  <div class="product-item-info-bottom-left">
                    <p class="product-item-info-prices">
                      <strong>{{gifts.gift_original}}</strong>
                      <s>{{gifts.gift_activity}}</s>
                    </p>
                    <p class="product-item-info-sales">{{gifts.gift_slod}}</p>
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
    </div>
</template>
<script>
import { homeGift } from "@/service/api";
export default {
    data() {
      return {
        gift:null,
      }
    },
    created() {
      this.getGift()
    },
    methods: {
     async getGift() {
        let res = await homeGift();
          if(res.data.code === 1 ) {
          this.gift = res.data.homeGift;
        }else {
          this.gift = res.data.msg;
        }
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
</style>
