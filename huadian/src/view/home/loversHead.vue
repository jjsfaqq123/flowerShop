<template>
  <div>
    <section class="swiper-container">
      <van-swipe :autoplay="3000">
        <van-swipe-item v-for="(image, index) in images" :key="index">
          <router-link :to="image.path_img">
            <van-image lazy-load :src="'http://127.0.0.1:5000'+image.imgs" :show-loading="true" class="swipet" />
            <van-image onerror='@/assets/img/body/18_byz_m.jpg' alt='加载失败' />
          </router-link>
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
      <div class="procate-item" v-for="(item,index) in proca" :key="index">
        <router-link to="javascript:;" class="navigation">
          <img :src="'http://127.0.0.1:5000/'+item.procat_img" alt="">
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
            <img :src="'http://127.0.0.1:5000/'+scent.scenc_img" alt="送恋人">
          </router-link>
          <span class="scene-item-use-title">{{scent.scenc_title}}</span>
        </div>
      </div>
      <div class="scene-list">
        <div class="scene-item scene-item-radius" v-for="(lover ,index) in lovers" :key="index">
          <router-link to="javasript:;" class="navigation">
            <img :src="'http://127.0.0.1:5000/'+lover.lovers_img" alt="送恋人">
          </router-link>
          <span class="scene-item-title">{{lover.lovers_title}}</span>
        </div>
      </div>
      <div class="scene-list">
        <router-link to="" class="scene-item scene-item-bg  " v-for="(hs,index) in fonts" :key="index">
          <img :src="'http://127.0.0.1:5000/'+hs.font_img" alt="" class="scenc-img">
          <p class="scene-item-name">{{hs.font_title}}</p>
          <p class="scene-item-desc">{{hs.font_subtitle}}</p>
          <div class="scene-item-bottom">
            <span class="scene-item-bottom-label">{{hs.font_mytitle}}</span>
            <span class="scene-item-bottom-text">{{hs.font_sell}}</span>
            <span class="scene-item-bottom-text">
              {{hs.font_price}}
              <s>{{hs.font_netprice}}</s>
              </span>
          </div>
        </router-link>
      </div>
      <!-- mode 2 -->
      <div class="scene-list">
        <div class="scene-item" v-for="(freshs ,index) in fresh" :key="index">
          <router-link to="" class="navigation" >
            <img :src="'http://127.0.0.1:5000/'+freshs.fresh_img" :alt="freshs.fresh_title">
            <span class="scene-item-pange">{{freshs.fresh_title}}</span>
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>
<script>
// import { homeUser } from "@/service/api";
export default {
  data() {
    return {
      images:null,
      proca:null,
      scenc:null,
      lovers:null,
      fresh:null,
      fonts:null,
    };
  },
  created() {
    this.procatBarthday()
  },
  methods: {
      procatBarthday() {
      let url = "api/home/barthday"
      this.axios.get(url).then((res)=> {
        //判断返回数据是否返回
        if(res.data.code === 1) {
          this.proca = res.data.barthday[0];
          this.scenc = res.data.barthday[1];
          this.lovers = res.data.barthday[2];
          this.fresh = res.data.barthday[3];
          this.images = res.data.barthday[4];
          this.fonts = res.data.barthday[5]
        }
      })
    }
  }
};
</script>

<style lang="less" scoped>
 .van-swipe {
  height: 200px;
}
.van-swipe__indicator--active {
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
.scenc-img {
  position: relative;
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
      .scene-item-name {
        position: absolute;
        top:0.4rem;
        left: 0.1rem;
      }
      .scene-item-desc {
        position: absolute;
        top:2rem;
        left: 0.1rem;
      }
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
// .scenc-img{
//   background-image:url('') !important;
// }
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