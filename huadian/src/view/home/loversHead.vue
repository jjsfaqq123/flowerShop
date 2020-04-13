<template>
  <div>
    <section class="swiper-container">
      <van-swipe :autoplay="3000">
        <van-swipe-item v-for="(image, index) in images" :key="index">
          <img v-lazy="image.imgs" class="swipet" />
          <img error="@/assets/img/body/1.jpg" alt />
        </van-swipe-item>
      </van-swipe>
    </section>
    <div class="conpay-info">
      <div class="conpay-info-item">
        认证龙头企业
      </div>
      <div class="conpay-info-item">
        15年品牌
      </div>
      <div class="conpay-info-item">
        3小时送花
      </div>
      <div class="conpay-info-item">
        最近
        <router-link to='javascript:;'>
          <u>113</u>
        </router-link>
        条好评
      </div>
    </div>
    <nav class="procate">
      <div class="procate-item" v-for="(item,index) in procat" :key="index">
        <router-link to="javascript:;" class="navigation">
          <img :src="item.procat_img" alt="">
        </router-link>
        <p>{{item.procat_title}}</p>
      </div>
    </nav>
    <!-- scenc -->
    <section class="scenc">
      <div class="modetitle">
        一秒选花
      </div>
      <div class="scene-list">
        <div class="scene-item scene-item-radius" v-for="(scent , index) in scenc" :key="index">
          <router-link to="javasript:;" class="navigation">
            <img :src="scent.scenc_img" alt="送恋人">
          </router-link>
          <span class="scene-item-use-title">{{scent.scenc_title}}</span>
        </div>
      </div>
      <div class="scene-list">
        <div class="scene-item scene-item-radius" v-for="(lover ,index) in lovers" :key="index">
          <router-link to="javasript:;" class="navigation">
            <img :src="lover.lovers_img" alt="送恋人">
          </router-link>
          <span class="scene-item-title">{{lover.lovers_title}}</span>
        </div>
      </div>
      <div class="scene-list">
        <router-link to="javscript:;" class="scene-item scene-item-bg" >
          <p class="scene-item-name">热销榜</p>
          <p class="scene-item-desc">集万千宠爱</p>
          <div class="scene-item-bottom">
            <span class="scene-item-bottom-label">大家都在买</span>
            <span class="scene-item-bottom-text">热销11.7万束</span>
          </div>
        </router-link>
        <router-link to="" class="scene-item scene-item-bg  scenc-img">
          <p class="scene-item-name">特价专区</p>
          <p class="scene-item-desc">超值好货</p>
          <div class="scene-item-bottom">
            <span class="scene-item-bottom-label">限时直降</span>
            <span class="scene-item-bottom-text">
              ￥158
              <s>￥186</s>
              </span>
          </div>
        </router-link>
      </div>
      <!-- mode 2 -->
      <div class="scene-list">
        <div class="scene-item" v-for="(freshs ,index) in fresh" :key="index">
          <router-link to="" class="navigation" >
            <img :src="freshs.fresh_img" :alt="freshs.fresh_title">
            <span class="scene-item-pange">{{freshs.fresh_title}}</span>
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<script>

export default {
  data() {
    return {
      images: [
        { imgs: require("@/assets/img/body/18_byz_m.jpg") },
        { imgs: require("@/assets/img/body/18_youflower_m.jpg") },
        { imgs: require("@/assets/img/body/19_birthday_banner_m.jpg") }
      ],
      procat: [
         {procat_img:require('@/assets/img/body/m_home_category_flower.png') , procat_title:'鲜花' },
         {procat_img:require('@/assets/img/body/m_home_category_ppf.png') , procat_title:'永生花' },
         {procat_img:require('@/assets/img/body/m_home_category_cake.png') , procat_title:'蛋糕' },
         {procat_img:require('@/assets/img/body/m_home_category_gift.png') , procat_title:'礼品' },
         {procat_img:require('@/assets/img/body/m_home_category_chocolate.png') , procat_title:'巧克力' },
      ],
      scenc: [
        {scenc_img:require('@/assets/img/body/m_home_use_lover.png') , scenc_title:'送恋人'},
        {scenc_img:require('@/assets/img/body/m_home_use_elder.png') , scenc_title:'送长辈'},
        {scenc_img:require('@/assets/img/body/m_home_use_friends.png') , scenc_title:'送朋友'},
      ],
      lovers: [
        {lovers_img:require('@/assets/img/body/m_home_use.png') , lovers_title:"生日祝福"},
        {lovers_img:require('@/assets/img/body/m_home.png') , lovers_title:"表白求婚"},
        {lovers_img:require('@/assets/img/body/m_home_use_business2.png') , lovers_title:"开业商务"},
        {lovers_img:require('@/assets/img/body/m_home_use_anniversary2.png') , lovers_title:"周年纪念"},
      ],
      fresh: [
        {fresh_img:require('@/assets/img/body/m_home_category_new2.png'),fresh_title:'新品来袭'},
        {fresh_img:require('@/assets/img/body/m_home_category_quality2.png'),fresh_title:'品味之选'},
        {fresh_img:require('@/assets/img/body/m_home_category_you2.png'),fresh_title:'设计师臻选'}
      ]
    };
  },
  created() {},
 
};
</script>

<style lang="less" scoped>
/deep/ .van-swipe {
  height: 200px;
}
/deep/.van-swipe__indicator--active {
  background: #ff734c;
  width: 2.28571429rem;
  border-radius: 03rem;
}
.swipet {
  width: 100%;
}
.swiper-container {
  margin: 0 auto;
  position: relative;
  overflow: hidden;
  list-style: none;
  padding: 0;
  z-index: 1;
}
.conpay-info {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 2.57142857rem;
  overflow: hidden;
  background: #fff;
  .conpay-info-item {
    width: auto;
    height: 2.57142857rem;
    line-height: 2.57142857rem;
    text-align: center;
    font-size: 0.7rem;
  }
}
.conpay-info>.conpay-info-item::before {
    content: "\e652";
    font-family: "iconfont" !important;
    font-size: 2.5rem;
    font-style: normal;
    color: #435448;
    vertical-align: bottom;
    display: inline-block;
    width: 26px;
}
.conpay-info>.conpay-info-item+.conpay-info-item{
  margin-left: 0.85714286rem;
}
.procate {
    display: flex;
    background: #fff;
    padding: 0.57142857rem 0;
    .procate-item {
      flex: 1;
      text-align:center;
      font-size: 0.85714286rem; 
      img {
        width: 2.57142857rem;
      }
    }
}
.navigation{
  display: block;
}
.scenc {
  background: #fff;
  padding-bottom: 1.14285714rem;
  .modetitle {
    display: flex;
    align-items: center;
    align-items: center;
    padding: 0.85714286rem;
    line-height: 1em;
    background: #fff;
    font-size: 1.14285714rem;
  }
  .scene-list {
    display: flex;
    padding: 0 6px;
  }
}
.modetitle::before {
    content: '';
    display: inline-block;
    width: 0.21428571rem;
    height: 1em;
    background: #435448;
    margin-right: 0.42857143rem;
  }
  .scene-item.scene-item-radius {
    border-radius: 0.28571429rem;
    img {
      width:100%;
    }
  }
  .scene-item-use-title {
    position: absolute;
    bottom: 0.5rem;
    left: 0px;
    right: 0;
    z-index: 1;
    color: #fff;
    text-align: center;
  }
  .scene-item {
      flex: 1;
      display: block;
      position: relative;
      margin: 0 0.14285714rem;
      overflow: hidden;
    }
  .scene-item-title {
    position: absolute;
    top: 0.85714286rem;
    left: 0;
    right: 0;
    z-index: 1;
    text-align: center;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
.scene-list + .scene-list {
    margin-top: 0.57142857rem;
  }
  img{
    width:100%;
    vertical-align: middle;
  }
  .scene-item.scene-item-bg {
    margin: 0;
    height: 9.57142857rem;
    background-repeat: no-repeat;
    background-size: contain;
    background-position: center center;
    padding: 0.85714286rem;
    border: 1px solid #E9ECF0;
    background-image: url('../../assets/img/body/m_home_ranklist2.png');
}
.scene-item-desc {
    font-size: 0.78571429rem;
    color: #71797F;
}
.scene-item-bottom {
    position: absolute;
    bottom: 0.85714286rem;
    left: 0.85714286rem;
    z-index: 1;
    font-size: 0.71428571rem;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.scene-item-bottom-label {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    border-radius: 2rem;
    background: #FF734C;
    padding: 0.07142857rem 0.42857143rem;
    color: #fff;
    margin-right: 2.14285714rem;
}
.scenc-img{
  background-image:url('../../assets/img/body/m_home_special2.png') !important;
}
.scene-item-pange {
    position: absolute;
    bottom: 0;
    left: 1px;
    right: 0;
    background: rgba(35, 38, 40, 0.8);
    color: #fff;
    text-align: center;
    font-size: 0.85714286rem;
    padding: 0.28571429rem 0;
}
</style>