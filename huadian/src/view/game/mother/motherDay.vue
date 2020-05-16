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
          <li class="procateav-item"  v-for="(procats,index) in procat" :key="index" :class="procats.show ? 'tianactive' : ''">{{procats.title}}</li>
        </ul>
      </nav>
      <!-- 人气爆品 -->
      <div class="product" id="pic">
        <div class="product-title">
          <img src="@/assets/img/homedetails/m_mother_title_1.png" alt="">
        </div>
        <div class="product-list">
          <div class="product-item-row" v-for="(mothers,index) in mother" :key="'av'+index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+mothers.pro_img" alt="">
                <span class="product-item-tag1">{{mothers.pro_title}}</span>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-header">
                  <span class="product-item-info-name">{{mothers.pro_titles}}</span>
                </div>
                <div class="product-item-info-desc">{{mothers.pro_titleTo}}</div>
                <div class="product-item-info-right">
                  <span class="product-item-info-price">{{mothers.pro_price}}</span>
                  <img :src="'http://127.0.0.1:5000/'+mothers.pro_imgs" alt="" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
          <div class="product-item-normal" v-for="(normals,index) in normal" :key="index">
            <router-link to="">
              <div class="product-item-pic">
                <img :src="'http://127.0.0.1:5000/'+normals.normal_img" alt="">
                <div class='product-item-tag1'>{{normals.normal_title}}</div>
              </div>
              <div class="product-item-info">
                <div class="product-item-info-name">{{normals.normal_titles}}</div>
                <div class="product-item-info-desc">{{normals.normal_titleTo}}</div>
                <div class="product-item-info-footer">
                  <span class="product-item-info-price">{{normals.normal_price}}</span>
                  <img :src="'http://127.0.0.1:5000/'+normals.normal_imgs" alt="购物车" class="product-item-info-buy">
                </div>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      <!-- 淡雅馨香 -->
      <elegant></elegant>
      <!-- 浪漫永生花-->
      <fragrant></fragrant>
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
import { homeDetailsMother } from "@/service/api";
import elegant from "@/view/game/mother/elegant";
import fragrant from "@/view/game/mother/fragrant";
export default {
  data() {
    return {
      Active:'',
      mother:null,
      normal:null,
      procat:[
        {title:"人气爆品" ,show:true},
        {title:"送老妈" ,show:false},
        {title:"送辣妈" ,show:false},
        {title:"永生花" ,show:false},
        {title:"精挑细选" ,show:false},
      ],
     
    }
  },
  components: {
    headBox,
    elegant,
    fragrant,
  },
  created() {
    this.getMother();
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
      };
      //js实现楼层效果
      // var pros = document.getElementById('pic');
      // pros = window.document.body.clientHeight
      // console.log(pros)
      for (var i = 0; i < this.procat.length; i++) {  
        let pro = this.procat[i];
        if(scollTop>=748&&scollTop<=2030) {
          //this.tianActive = this.procat[0];
          this.procat[0].show = true;
        }else {
          this.procat[0].show = false;
        }
        if(scollTop>=2030&&scollTop<=3300) {
           this.procat[1].show = true;
        }else {
          this.procat[1].show = false;
        }
        if(scollTop>=3300&&scollTop<=4300) {
           this.procat[2].show = true;
        }else {
          this.procat[2].show = false;
        }
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
    },
    async getMother() {
      let res = await homeDetailsMother();
      if(res.data.code === 1) {
        this.mother = res.data.homeDetailsMother[0];
        this.normal = res.data.homeDetailsMother[1];
      }else {
        this.mother = res.data.msg;
        this.normal = res.data.msg;
      }
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
  .tianactive {
    font-weight: bold;
    color: #FFFFFF;
    background: linear-gradient(90deg, #e487af 0%, #bc7cc7 100%) !important;
  }
</style>
