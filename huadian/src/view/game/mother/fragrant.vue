<template>
  <div class="product">
    <div class="product-title">
      <img src="@/assets/img/homedetails/m_mother_title_3.png" alt="">
    </div>
    <div class="product-list">
       <div class="product-item-normal" v-for="(fragrants,index) in fragrant" :key="index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+fragrants.fragrant_img" alt="">
                <div class='product-item-tag1'>{{fragrants.fragrant_title}}</div>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-name">{{fragrants.fragrant_titles}}</div>
                <div class="product-item-info-desc">{{fragrants.fragrant_titleTo}}</div>
                <div class="product-item-info-footer">
                  <span class="product-item-info-price">{{fragrants.fragrant_price}}</span>
                  <img :src="'http://127.0.0.1:5000/'+fragrants.fragrant_imgs" alt="购物车" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
    </div>
  </div>
</template>
<script>
import { homeDetailsMother } from "@/service/api";
export default {
  data() {
    return {
      fragrant:null,
    }
  },
  created() {
    this.getFragrant();
  },
  methods: {
    async getFragrant() {
      let res = await homeDetailsMother();
        if(res.data.code === 1) {
          this.fragrant = res.data.homeDetailsMother[3];
        }else {
           this.fragrant = res.data.msg
        }
    }
  }
}
</script>
<style lang='less' scoped>

</style>
