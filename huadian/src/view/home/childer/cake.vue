<template>
  <div style="background: #E9ECF0;">
    <headBox to='/' title='蛋糕' classif='classif' ></headBox>
    <nav class="filter">
      <div class="filter-item" v-for="(fils,index) in fil" :key="index">
        <router-link to="" class="navigation" @click.native="filClick(index)"  :class="Active===index?'active':''">{{fils.fil_title}}
          <i class="filter-item-price"></i>
        </router-link>
      </div>
    </nav>
    <!-- purpose -->
    <nav class="purpose">
      <div class="purpose-list">
      <div class="purpose-item" v-for="(purpos,index) in purpo" :key="index" :class="{'actives':purpoIndex==index&&purpos.purpo_show===true}">
          <router-link to="" class="navigation"  @click.native="purs(index,purpos)">
            {{purpos.purpo_title}}
            <i class="iconfont icon-triangle-down" v-if="index==4"></i>
            </router-link>
        </div>
      </div>
    </nav>
    
    <section class="product">
      <vue-scroll 
        :ops = options
         ref="vs"
         style="position:initial"
         @refresh-before-deactivate="handleRBD"
         @load-start="handleLoadStart"
         
         >
      <div class="product-list product-list-vertical">
        <!-- <em v-if='flow.length == 0' >没有你要查找的数据哦</em> -->
        <div class="product-item product-item-vertical" v-for="(flows,index) in flow" :key="index">
          <router-link to='' class="navigation">
            <div class="product-item-pic">
              <img :src="'http://127.0.0.1:5000/'+flows.homeDetails_img" alt="">
            </div>
            <div class="product-item-info">
              <div class="product-item-info-tags">
                <span v-if='flows.homeDetails_title!==null'>{{flows.homeDetails_title}}</span>
              </div>
              <p class="product-item-info-name  text-overflow">
                {{flows.homeDetails_titles}}
              </p>
              <div class="product-item-info-bottom">
                <strong>￥{{flows.homeDetails_price}}</strong>
              </div>
            </div>
          </router-link>
        </div>
       
      </div>
       </vue-scroll>
      
    </section>
    <van-popup v-model="show" loseable
      position="right"
      :style="{ height: '100%' }" >
      <div class="purpose-layer-warp">
        <h4>人群</h4>
        <div class="purpose-layer-list" >
          <div class="purpose-layer-item" v-for="(crowds,index) in crowd" :key="index" :class="prowdIndex===index?'actives':''">
            <router-link to="" class="navigation"  @click.native='crowdClick(index)'>{{crowds.crowd_title}}</router-link>
          </div>
        </div>
        <h4>场合</h4>
        <div class="purpose-layer-list" >
          <div class="purpose-layer-item" v-for="(occasions,index) in occasion" :key="index" :class="occasionIndex===index?'actives':''" >
            <router-link to="" class="navigation" @click.native="occasionClick(index)">{{occasions.occasion_title}}</router-link>
          </div>
        </div>
        <h4>花材</h4>
        <div class="purpose-layer-list" >
          <div class="purpose-layer-item" v-for="(flowerss,index) in flowers" :key="index" :class="flowerIndex===index?'actives':''" >
            <router-link to="" class="navigation" @click.native="flowerClick(index)">{{flowerss.flowers_title}}</router-link>
          </div>
        </div>
        <h4>类别</h4>
        <div class="purpose-layer-list" >
          <div class="purpose-layer-item" v-for="(categorys,index) in category" :key="index" :class="categoryIndex===index?'actives':''" >
            <router-link to="" class="navigation" @click.native="categoryClick(index)">{{categorys.category_title}}</router-link>
          </div>
        </div>
        <h4>颜色</h4>
        <div class="purpose-layer-list" >
          <div class="purpose-layer-item" v-for="(flowerColors,index) in flowerColor" :key="index" :class="colorIndex===index?'actives':''" >
            <router-link to="" class="navigation" @click.native="colorClick(index)">{{flowerColors.flowerColor_title}}</router-link>
          </div>
        </div>
      </div>
      <div class="purpose-layer-clear">
        <router-link to="/fresh" @click.native='submit'>清除选择</router-link>
      </div>
      </van-popup>
     <!-- 调用动画 -->
    <view-loading v-show ='loading' ></view-loading>
  </div>
</template>
<script>
import headBox from "@/components/header/headBox";
import headindicator from "@/view/home/loversindicator";
import { mapMutations, mapState } from 'vuex';
import { 
  homeDetailsFlower,homeDetailsGive,
  homeDetailsBoyfrienf,homeDetailsfriend,
  homeDetailsolder,homeDetailsalesGirlfriend } from "@/service/api"
import { setTimeout } from 'timers';
export default {
  data() {
    return {
      loading:true,
      show:false,
      triggerType:'load',
      noData:false,
      params:{
        pageIndex:1,
        pageSize:10
      },
      paramsGive: {
        pageIndex:1,
        pageSize:10
      },
      paramsBoyfrienf: {
        pageIndex:1,
        pageSize:10
      },
      paramsfriend: {
        pageIndex:1,
        pageSize:10
      },
      paramsolder: {
        pageIndex:1,
        pageSize:10
      },
      paramsGirlfriend: {
         pageIndex:1,
        pageSize:10
      },
      fil: [
        {fil_title:'综合'},
        {fil_title:'销量'},
        {fil_title:'价格'},
        {fil_title:'新品'},
      ],

      purpo: [
        {purpo_title:"送女友",purpo_show:true },
        {purpo_title:"送男性",purpo_show:true},
        {purpo_title:"送朋友",purpo_show:true},
        {purpo_title:"送长辈",purpo_show:true},
        {purpo_title:"筛选",purpo_show:false},
      ],
      crowd: [
        {crowd_title:'送女友'},
        {crowd_title:'送男性'},
        {crowd_title:'送朋友'},
        {crowd_title:'送长辈'},
      ],
      occasion: [
        {occasion_title:'爱情鲜花'},
        {occasion_title:'生日鲜花'},
        {occasion_title:'探病慰问'},
        {occasion_title:'商务鲜花'},
        {occasion_title:'祝福庆贺'},
        {occasion_title:'婚庆鲜花'},
        {occasion_title:'道歉鲜花'},
        {occasion_title:'哀思鲜花'},
      ],
      flowers: [
        {flowers_title:'玫瑰'},
        {flowers_title:'百合'},
        {flowers_title:'康乃馨'},
        {flowers_title:'向日葵'},
        {flowers_title:'扶朗'},
        {flowers_title:'绣球'},
        {flowers_title:'郁金香'},
        {flowers_title:'马蹄莲'},
      ],
      category: [
        {category_title:"传情花束"},
        {category_title:"创意花盒"},
        {category_title:"瓶插花"},
        {category_title:"精致花篮"},
        {category_title:"开业花篮"},
        {category_title:"设计师款"},
      ],
      flowerColor: [
        {flowerColor_title:'红色'},
        {flowerColor_title:'粉色'},
        {flowerColor_title:'香槟色'},
        {flowerColor_title:'黄色'},
        {flowerColor_title:'白色'},
        {flowerColor_title:'紫色'},
        {flowerColor_title:'篮色'},
      ],
      Active:0,
      flow:[],
    }
  },
  mounted() {
    this.getFlower();
  },
  methods:{
    ...mapMutations(['setPurpo','setProwd','setOccasion','setFlower','setCategory','setColor','setNavbar']),
    //请求数据
    async getFlower() {
      let res = await homeDetailsFlower(this.params);
      setTimeout(() => {
        this.loading = false;
      },500)
      if(res.data.code === 1) {
          this.flow = res.data.flowerDetails;
      }else {
        this.flow = res.data.msg;
      }
    },
    async filClick(index) {
      this.setNavbar(index)
      this.Active = index;
      if(index === 1 && this.purpoIndex === 0) {
        let res = await homeDetailsalesGirlfriend(this.paramsGirlfriend)
        if(res.data.code === 1) {
          this.flow = res.data.flfriend;
        }else {
          this.flow = res.data.msg;
        }
      }
    },
    async purs(index,purpos) {
      
      this.setPurpo(index);
      if(this.purpoIndex === 0) {
         let res = await homeDetailsGive(this.paramsGive);
         if(res.data.code === 1) {
          this.flow = res.data.flowerDetailsGive;
          }else {
            this.flow = res.data.msg;
          }
        }else if(this.purpoIndex === 1) {
          let res = await homeDetailsBoyfrienf(this.paramsBoyfrienf);
          if(res.data.code === 1) {
            this.flow = res.data.flowerDetailsBoyfrienf;
          }else {
            this.flow = res.data.msg;
          }
        }else if(this.purpoIndex === 2) {
          let res = await homeDetailsfriend(this.paramsfriend);
          if(res.data.code === 1) {
            this.flow = res.data.flowerDetailsFriend;
          }else {
            this.flow = res.data.msg;
          }
        }else if(this.purpoIndex === 3) {
          let res = await homeDetailsolder(this.paramsolder);
          if(res.data.code === 1) {
            this.flow = res.data.flowerDetailsDlder
          }else {
            this.flow = res.data.msg;
          }
        }
      //判断下标是否未4
      if(index == 4 &&purpos.purpo_show === false) {
        //显示右侧遮罩层
        this.show = true;
        
      }
    },
    //人群
    crowdClick(index) {
      this.setProwd(index);
    },
    //场合
    occasionClick(index) {
       this.setOccasion(index);
    },
    flowerClick(index) {
      this.setFlower(index)
    },
    //类别
    categoryClick(index) {
      this.setCategory(index)
    },
    //颜色
    colorClick(index) {
      this.setColor(index)
    },
    //清除所有的状态
    submit() {
      this.setPurpo(null)
       this.show = false;
    },
    trigger() {
      //隐藏加载动画
      this.$refs["vs"].triggerRefreshOrLoad(this.triggerType);
    },
   async handleLoadStart(vm, dom, done) {
     if(this.purpoIndex === -1) {
     this.params.pageIndex++;
     //上拉加载鲜花数据
      let res = await homeDetailsFlower(this.params);
      if(res.data.code === 1) {
        this.flow =this.flow.concat(res.data.flowerDetails); 
      }else {
        this.flow = res.data.msg;
      }
     }
      //判断上拉下标
      if(this.purpoIndex === 0) {
        this.paramsGive.pageIndex++;
        let res = await homeDetailsGive(this.paramsGive);
          if(res.data.code === 1) {
            this.flow =this.flow.concat(res.data.flowerDetailsGive); 
          }else {
            this.flow = res.data.msg;
          }
      }else if(this.purpoIndex === 1) {
        this.paramsBoyfrienf.pageIndex++;
        let res = await homeDetailsBoyfrienf(this.paramsBoyfrienf);
          if(res.data.code === 1) {
            this.flow =this.flow.concat(res.data.flowerDetailsBoyfrienf); 
          }else {
            this.flow = res.data.msg;
          }
      }else if(this.purpoIndex === 2) {
        this.paramsfriend.pageIndex++;
          let res = await homeDetailsfriend(this.paramsfriend);
          if(res.data.code === 1) {
            this.flow =this.flow.concat(res.data.flowerDetailsFriend); 
          }else {
            this.flow = res.data.msg;
          }
      }else if(this.purpoIndex === 3) {
        this.paramsolder.pageIndex++;
         let res = await homeDetailsolder(this.paramsolder);
          if(res.data.code === 1) {
            this.flow =this.flow.concat(res.data.flowerDetailsDlder); 
          }else {
            this.flow = res.data.msg;
          }
      }else if(this.navbarIndex === 1 && this.purpoIndex === 0) {
        this.paramsGirlfriend.pageIndex++;
        let res = await homeDetailsalesGirlfriend(this.paramsGirlfriend);
        console.log(res)
        if(res.data.code === 1) {
            this.flow =this.flow.concat(res.data.flfriend); 
          }else {
            this.flow = res.data.msg;
          }
      }
      setTimeout(() => {
        const random = Math.floor(Math.random() * 2) + 1;
        if (random == 1) {
          this.noData = true;
        } else {
          this.noData = false;
        }
        done();
      }, 600);
    },
    //下拉刷新
    async handleRBD(vm, loadDom, done) {
      setTimeout(() => {
        done();
      }, 500);
    },
  },
  components: {
    headBox,
    headindicator
  },
  computed:{
    ...mapState(['purpoIndex','prowdIndex','occasionIndex','flowerIndex','categoryIndex','colorIndex','navbarIndex'])
  }
}
</script>
<style lang="less" scoped>
    /deep/ .purpose-layer-warp {
      height: 90%;
    }
    /deep/ .van-popup {
      width:90%;
    }
   .filter-item:nth-child(3) {
     .navigation {
      .filter-item-price {
        position: relative;
        top: 0.14285714rem;
        margin-left: 0.28571429rem;
      }
     }
   }
.filter-item-price::after {
    border-top-color: #B4BABF !important;
    top: 0.57142857rem !important;
  }
  .filter-item-price::before {
     border-bottom-color: #B4BABF !important;
  }
  .filter-item-price::after, .filter-item-price::before {
    content: "";
    display: block;
    position: absolute;
    top: -1px;
    left: 0;
    width: 0;
    height: 0;
    font-size: 0;
    border: 0.28571429rem solid transparent;
  }
  .purpose-item.actives .navigation {
    background-color: #fff;
    color: #FF734C;
    border-color: #FF734C;
  }
    .purpose-layer-warp {
      padding: 0 1em;
      overflow-x: hidden;
      overflow-y: auto;
      h4 {
        font-weight: 500;
        font-size: 1.14285714rem;
        padding: 1.14285714rem 0; 
      }
    }
  .purpose-layer-list {
    .purpose-layer-item {
      float: left;
      width: 33.33333333%;
      text-align: center;
      padding: 0 0.42857143rem;
      margin-bottom: 0.85714286rem;
      box-sizing: border-box;
      .navigation {
        height: 2.42857143rem;
        line-height: 2.42857143rem; 
        border-radius: 0.14285714rem;
        border: 1px solid #F7F9FA;
        font-size: 0.85714286rem;
        display: block
      }
    }
  }
  .purpose-layer-list::after {
    content: "";
    clear: both;
    height: 0;
    display: block;
  }
  .purpose-layer-item.actives > .navigation {
    background-color: #fff;
    border-color: #FF734C;
    color: #FF734C;
  }
  .purpose-layer-clear {
    position: fixed;
    height: 100%;
    bottom: 0;
    left: 0;
    text-align: center;
    right: 0;
    height: 3.42857143rem;
    line-height: 3.42857143rem;
    font-size: 1.14285714rem;
    text-align: center;
    background-color: #E9ECF0;
  }
</style>
