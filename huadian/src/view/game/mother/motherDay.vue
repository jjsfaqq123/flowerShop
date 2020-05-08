<template>
  <div>
    <headBox classif="classif" title="母亲节鲜花礼物" to="/"></headBox>
    <section class="main animationLeft">
      <div class="banner">
        <img src="@/assets/img/homedetails/m_mother_banner.png" alt="">
        <img src="@/assets/img/homedetails/m_mother_letter.png" alt="">
      </div>
      <nav class="procateav" >
        <ul class="procateav-box" :class="{'active':Active}">
          <li class="procateav-item"  v-for="(procats,index) in procat" :key="index">{{procats.title}}</li>
        </ul>
      </nav>
      <!-- 人气爆品 -->
      <div class="product">
        <div class="product-title">
          <img src="@/assets/img/homedetails/m_mother_title_1.png" alt="">
        </div>
        <div class="product-list">
          <div class="product-item-row" v-for="(pros,index) in pro" :key="'av'+index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="pros.pro_img" alt="">
                <span class="product-item-tag1">{{pros.pro_title}}</span>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-header">
                  <span class="product-item-info-name">{{pros.pro_titles}}</span>
                </div>
                <div class="product-item-info-desc">{{pros.pro_titleTo}}</div>
                <div class="product-item-info-right">
                  <span class="product-item-info-price">{{pros.pro_price}}</span>
                  <img :src="pros.pro_imgs" alt="" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
        

          <div class="product-item-normal" v-for="(normals,index) in normal" :key="index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="normals.normal_img" alt="">
                <div class='product-item-tag1'>{{normals.normal_title}}</div>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-name">{{normals.normal_titles}}</div>
                <div class="product-item-info-desc">{{normals.normal_titleTo}}</div>
                <div class="product-item-info-footer">
                  <span class="product-item-info-price">{{normals.normal_price}}</span>
                  <img :src="normals.normal_imgs" alt="购物车" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
        </div>
      </div>
        <div class="scroll" @click="scrollClick">
        <div class="scroll-item">
          <router-link to="#" class="iconfont icon-xiangshangjiantou-copy" id="backTop"></router-link>
        </div>
      </div>
    </section>
  </div>
</template>
<script>
import headBox from "@/components/header/headBox";
export default {
  data() {
    return {
      Active:'',
      procat:[
        {title:"人气爆品"},
        {title:"送老妈"},
        {title:"送辣妈"},
        {title:"永生花"},
        {title:"精挑细选"},
      ],
      pro: [
        {pro_img:require("@/assets/img/homedetails/m_mother_pro_1.jpg"),
        pro_title:'韩式新品',pro_titles:"韩式系列/温柔以待",pro_titleTo:"母亲节新品",
        pro_price:"￥275",pro_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
        {pro_img:require("@/assets/img/homedetails/m_mother_pro_2.jpg"),
        pro_title:'热销爆款',pro_titles:"母爱",pro_titleTo:"浪漫配色.美好寓意",
        pro_price:"￥186",pro_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
      ],
      normal: [
        {normal_img:require('@/assets/img/homedetails/9012204.jpg_220x240.jpg'),
        normal_title:"请选爆款",normal_titles:"幸福万年长",normal_titleTo:"长情陪伴.默默守护",
        normal_price:"￥389" ,normal_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
        {normal_img:require('@/assets/img/homedetails/9012332.jpg_220x240.jpg'),
        normal_title:"精美花篮",normal_titles:"留住好时光",normal_titleTo:"守护她曼妙的少女心",
        normal_price:"￥275" ,normal_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
        {normal_img:require('@/assets/img/homedetails/1073173.jpg_220x240.jpg'),
        normal_title:"定制礼盒",normal_titles:"柔情时光-进口香氛款",normal_titleTo:"倾情设计·为爱守护",
        normal_price:"￥388" ,normal_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
        {normal_img:require('@/assets/img/homedetails/1073276.jpg_220x240.jpg'),
        normal_title:"创意新品",normal_titles:"花好月圆永生花台灯/母亲节定制",normal_titleTo:"母亲节定制款",
        normal_price:"￥298" ,normal_imgs:require("@/assets/img/homedetails/m_mother_buy_btn.png")},
      ]
    }
  },
  components: {
    headBox
  },
  mounted() {
    window.onscroll =() => {
      let scollTop = document.documentElement.scrollTop || document.body.scrollTop;
      var scroll = document.querySelector('.scroll');
      if(scollTop>748) {
        this.Active = scollTop
        scroll.style.display="block";
      }else {
        this.Active = ''
        scroll.style.display="none";
      }
    }
  },
  methods: {
    scrollClick() {
       var top =document.documentElement.scrollTop||document.body.scrollTop;
       let timeTop = setInterval(() => {
         document.body.scrollTop = document.documentElement.scrollTop = top-=50;
         if(top<=0) {
           clearInterval(timeTop)
         }
       },10)
    }
  }
}
</script>
<style lang="less" scoped>
  section.main {
    background-color:#C35C52;
    .banner {
      position: relative;
      overflow: hidden;
    }
  } 
  .procateav {
    height: 2.57142857rem;
    background-color: #C35C52;
    font-size: 0;
  }
  .procateav-box {
    display: flex;
    background-color: #C35C52;
    .procateav-item {
      height: 2.57142857rem;
      line-height:2.57142857rem;
      flex: 1;
      color:#B82A20;
      font-size: 0.92857143rem;
      text-align: center;
      background: linear-gradient(90deg, #fbd4d0 0%, #f0aba6 100%);
    }
  }
  .active {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 9;
    width: 100%;
    max-width: 45.71428571rem;
  }
  .product{
    .product-title {
      padding:0 2.26666667%;
      font-size: 0;
    }
    .product-list {
      padding:0 2.26666667%;
      font-size: 0;
    } 
    .product-item-normal {
      display: inline-block;
      width: 48.04469274%;
      margin: 0 0.97765363% 0.5rem;
      vertical-align: top;
      position: relative;
    }
  }
  section.main .product-item-row ,.product-item-normal{
    margin: 0 0.97765363% 0.5rem;
    border-radius: 0.57142857rem;
    overflow: hidden;
    a{
      .product-item-pic {
        position: relative;
        .product-item-tag1 {
          position: absolute;
          top: 0.57142857rem;
          left: 0;
          height: 1.42857143rem;
          line-height: 1.42857143rem;
          background-size: cover;
          background-position: right center;
          color: #ffffff;
          font-size: 0.85714286rem;
          font-weight: 500;
          padding: 0 0.42857143rem;
          background:url('../../../assets/img/homedetails/m_mother_tag_bg.png') no-repeat;
        }
      }
      .product-item-info {
        position: relative;
        padding: 0.85714286rem;
        background: linear-gradient(90deg, #fff4f3 0%, #f7d3d1 100%);
        .product-item-info-header {
          .product-item-info-name {
            font-size: 0.92857143rem;
            font-weight: 400;
            color: #232628;
            line-height: 1rem;
          }
        }
        .product-item-info-desc {
          margin-top: 0.64285714rem;
          font-size: 0.85714286rem;
          font-weight: 600;
          color: #EB4247;
          max-width: 55%;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }
        .product-item-info-right {
          position: absolute;
          bottom: 0.85714286rem;
          right: 0.85714286rem;
          .product-item-info-price {
            color: #232628;
            font-size: 1.07142857rem;
            font-weight: 600;
            line-height: 1.5rem;
            vertical-align: middle;
          }
          .product-item-info-buy {
            margin-left: 1.78571429rem;
            width: 1.71428571rem;
          }
        }
        .product-item-info-name {
          font-size: 0.92857143rem;
          line-height: 1rem;
          font-weight: 400;
          max-width: 100%;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }
        .product-item-info-desc {
          margin-top: 0.57142857rem;
          font-size: 0.85714286rem;
          font-weight: 600;
          color: #EB4247;
          line-height: 0.92857143rem;
          max-width: 100%;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }
        .product-item-info-footer {
          margin-top: 0.85714286rem;
          .product-item-info-price {
            font-size: 1.07142857rem;
            font-weight: 600;
            line-height: 1.5rem;
          }
          .product-item-info-buy {
            float: right;
            width:1.71428571rem;
          }
        }
      }
    }
  }
</style>
