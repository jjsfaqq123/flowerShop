<template>
  <div>
    <section class="product">
      <h3 class="product-title">送长辈鲜花</h3>
      <div class="product-list">
        <div class="product-item product-item-horizontal" v-for="(elders , index) in elder" :key="index">
          <router-link to="" class="navigation">
            <div class="product-item-pic">
              <img :src="'http://127.0.0.1:5000/'+elders.Elder_img" alt="">
            </div>
            <div class="product-item-info">
              <p class="product-item-info-name text-overflow">{{elders.Elder_always}}</p>
              <p class="product-item-info-desc text-overflow-line2 ">{{elders.Elder_boutique}}</p>
              <div class="product-item-info-tags">
                <span class="tag-promo">{{elders.Elder_classic}}</span>
              </div>
              <div class="product-item-info-promo">￥{{elders.Elder_blodprice}}</div>
              <div class="product-item-info-bottom">
                <div class="product-item-info-bottom-left">
                  <p class="product-item-info-prices">
                    <strong>￥{{elders.Elder_price}}</strong>
                    <s>{{elders.Elder_sell}}</s>
                  </p>
                  <p class="product-item-info-sales">{{elders.Elder_sest}}</p>
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
        <router-link to="" class="product-more-btn">查看更多</router-link>
      </div>
    </section>
  </div>
</template>

<script>
import { homeElder } from "@/service/api"
export default {
  data() {
    return {
      elder:null,
    }
  },
  created() {
    this.getElder();
  },
  methods: {
     async getElder() {
      let res = await homeElder();
      if(res.data.code === 1){
        this.elder = res.data.homeEler;
      }else {
        this.elder = res.data.msg;
      }
    }
  }
}
</script>

<style lang="less" scoped>
.product{
  margin-top: 0.57142857rem;
  background: #fff;
  padding-bottom: 1.42857143rem;
  .product-title {
    font-size: 1.14285714rem;
    padding: 1.42857143rem 0;
    text-align: center;
    font-weight: normal;
  }
}
.product-list {
  padding: 0 0.57142857rem 1.71428571rem;
}
.product-item.product-item-horizontal > .navigation{
  display: flex;
}
.product-item > .navigation {
  overflow: hidden;
  box-shadow: 0 0.28571429rem 0.85714286rem 0 #e9ecf0;
  border-radius: 0.28571429rem;
}
.product-item.product-item-horizontal .product-item-pic {
  width: 12.57142857rem;
  min-width: 12.57142857rem;
  max-width: 12.57142857rem;
}
.product-item.product-item-horizontal .product-item-info {
  flex: 1;
  max-width: 8.07142857rem;
  padding: 0 1.42857143rem;
  position: relative;
}
.product-item.product-item-horizontal .product-item-info-name {
  padding-top: 1.28571429rem;
}
.product-item-info-name {
  font-weight: 300;
}
.text-overflow {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
img {
  width:100%;
}
.product-item-info-desc {
  font-size: 0.85714286rem;
  font-weight: 300;
}
.text-overflow-line2 {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.product-item.product-item-horizontal .product-item-info-promo {
  margin-top: 0.85714286rem;
  padding: 0.71428571rem 0;
  border-top: 1px solid #E9ECF0;
  border-bottom: 1px solid #E9ECF0;
  font-size: 0.78571429rem;
  font-weight: 500;
}
.product-item.product-item-horizontal .product-item-info-bottom {
  position: absolute;
  left: 1.42857143rem;
  right: 1.42857143rem;
  bottom: 1.142857rem;
  z-index: 1;
}
.product-item-info-bottom-left {
  flex: 1;
}
.product-item-info-prices {
  opacity: 1;
}
.product-item-info-prices > strong {
  font-size: 1.28571429rem;
  color: #FF734C;
  font-weight: 500;
}
.product-item-info-prices > s {
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
.product-item-info-bottom {
  display: flex;
  justify-content: center;
}
.product-item-info-tags {
  margin-top: 0.42857143rem;
  .tag-promo {
    background-color: #FF734C;
    color: #fff;
  }
  span {
    display: inline-flex;
    border-radius: 10rem;
    border: 1px solid #FFF;
    color: #FF734C;
    font-size: 0.71428571rem;
    padding: 0 0.28571429rem;
  }
}
.product-more-btn {
    display: block;
    margin: 0 auto;
    font-size: 0.85714286rem;
    border: 1px solid #232628;
    width: 6.71428571rem;
    height: 1.71428571rem;
    line-height: 1.71428571rem;
    text-align: center;
    border-radius: 0.14285714rem;
}
</style>