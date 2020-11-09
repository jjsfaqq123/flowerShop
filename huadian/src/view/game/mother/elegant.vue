<template>
  <div class="product">
    <div class="product-title">
      <img src="@/assets/img/homedetails/m_mother_title_2.png" alt="">
    </div>
    <div class="product-list">
       <div class="product-item-normal" v-for="(elegants,index) in elegant" :key="index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+elegants.elegant_img" alt="">
                <div class='product-item-tag1'>{{elegants.elegant_title}}</div>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-name">{{elegants.elegant_titles}}</div>
                <div class="product-item-info-desc">{{elegants.elegant_titleTo}}</div>
                <div class="product-item-info-footer">
                  <span class="product-item-info-price">{{elegants.elegant_price}}</span>
                  <img :src="'http://127.0.0.1:5000/'+elegants.elegant_imgs" alt="购物车" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
    </div>
     <!-- 调用动画 -->
    <view-loading v-show ='loading' ></view-loading>
  </div>
</template>
<script>
import { homeDetailsMother } from "@/service/api";
import { setTimeout } from 'timers';
export default {
  data() {
    return {
      elegant:null,
      loading:true,
    }
  },
  created() {
    this.getElegant();
    
  },
  methods: {
    async getElegant() {
      let res = await homeDetailsMother();
      setTimeout(() => {
        this.loading = false;
      },500)
        if(res.data.code === 1) {
          this.elegant = res.data.homeDetailsMother[2];
        }else {
           this.elegant = res.data.msg;
        }
    }
  }
}
</script>
<style lang='less' scoped>

</style>
