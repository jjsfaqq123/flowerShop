<template>
    <div>
      <section class="product">
        <h3 class="product-title">巧克力推荐</h3>
        <div class="product-list product-list-vertical">
          <div class="product-item product-item-vertical" v-for="(eternals,index) in  eternal" :key="index">
            <router-link to="" class="navigation">
              <div class="product-item-pic">
                <img :src="eternals.eternal_img" alt="">
              </div>
              <div class="product-item-info">
                <!-- <div class="product-item-info-tags">
                  <span>{{eternals.eternal_best}}</span>
                </div> -->
                <div class="product-item-info-name  text-overflow ">{{eternals.eternal_my}}</div>
                <div class="product-item-info-bottom">
                  <div class="product-item-info-bottom-left">
                    <p class="product-item-info-prices">
                      <strong>{{eternals.eternal_original}}</strong>
                      <s>{{eternals.eternal_activity}}</s>
                    </p>
                    <p class="product-item-info-sales">{{eternal.eternal_slod}}</p>
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
          <div class="brand-item" v-for="(selectmys,index) in selectmy" :key="index">
            <img :src="selectmys.selectmy_img" alt=""> 
            <p>{{selectmys.selectmy_what}}</p>
          </div>
        </div>
      </section> 
    </div>
</template>
<script>
export default {
    data() {
      return {
        eternal: [
          { eternal_img:require('@/assets/img/body/1201003.jpg_220x240.jpg')
          ,eternal_best:'礼盒装畅销款',eternal_my:'奢悦之美巧克力礼盒·夹心巧克力',
          eternal_original:'¥158',eternal_activity:'¥358',eternal_slod:'已销售5062件' },
          { eternal_img:require('@/assets/img/body/1204041.jpg_220x240.jpg')
          ,eternal_best:'火热畅销款',eternal_my:'Felchlin妃亭16粒装巧克力礼盒·德国进口夹心手工巧克力',
          eternal_original:'¥298',eternal_activity:'¥298',eternal_slod:'已销售3327件' },
          { eternal_img:require('@/assets/img/body/1207010.jpg_220x240.jpg')
          ,eternal_best:'新品',eternal_my:'迪奥口红#999+迪奥花漾淡香水30ml·口红+香水礼盒套装',
          eternal_original:'¥288',eternal_activity:'¥388',eternal_slod:'已销售4621件' },
          { eternal_img:require('@/assets/img/body/1204060.jpg_220x240.jpg')
          ,eternal_best:'热销新品',eternal_my:'德国进口LAUENSTEIN巧克力手工松露酒味夹心金装礼盒·德国进口酒心黑巧克力20粒',
          eternal_original:'¥318',eternal_activity:'¥418',eternal_slod:'已销售23件' },
        ],
        selectmy: [
          { selectmy_img:require('@/assets/img/body/m_details_brand_01.png'), selectmy_what:'获评鲜花龙头企业'},
          { selectmy_img:require('@/assets/img/body/m_details_brand_02.png'), selectmy_what:'1~3小时送花上门'},
          { selectmy_img:require('@/assets/img/body/m_details_brand_03.png'), selectmy_what:'赛事冠军花艺师团队'},
          { selectmy_img:require('@/assets/img/body/m_details_brand_04.png'), selectmy_what:'严选花材'},
          { selectmy_img:require('@/assets/img/body/m_details_brand_05.png'), selectmy_what:'12道严苛品控标准'},
          { selectmy_img:require('@/assets/img/body/m_details_brand_06.png'), selectmy_what:'500万用户信赖好评'},
        ]
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
