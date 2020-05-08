<template>
  <div>
    <header class="headerbar">
      <div class="headerbar-left">
        <router-link :to='to' class="navigation">
          <i class="iconfont icon-left"></i>
        </router-link>
      </div>
      <div class="headerbar-center">
        <p class="headerbar-content" >{{title}}</p>
      </div>
      <div class="headerbar-right" v-show="classif">
        <div class="navigation headerbar-menu-toggle">
          <i class="iconfont icon-icon-test1" @click="iconFenlei" ></i>
          <nav class="headerbar-menu" :class="{'actives':Actives}">
            <div class="headerbar-menu-item" v-for="(ifcations,index) in ifcation" :key='index'>
              <router-link :to="ifcations.path" class="navigation" :class="{active:guideIndex==index}" @click.native="setGuidIndex(index)" >
                <i :class="ifcations.ifcation_icon"></i>
                <span>{{ifcations.ifcation_text}}</span>
              </router-link>
            </div>
          </nav>
        </div>
      </div>
    </header>
  </div>
</template>
<script>
import { mapState, mapMutations } from 'vuex';
export default {
  data() {
    return {
      Actives:'',
      ifcation: [
        {path:'/',ifcation_icon:'iconfont icon-shouye',ifcation_text:'首页'},
        {path:'/classification',ifcation_icon:'iconfont icon-fenlei',ifcation_text:'分类搜索'},
        {path:'/cart',ifcation_icon:'iconfont icon-gouwuche',ifcation_text:'购物车'},
        {path:'mine',ifcation_icon:'iconfont icon-weixiao',ifcation_text:"我的"},
      ]
    }
  },
  computed: {
    ...mapState(["guideIndex"])
  },
  methods: {
    ...mapMutations(["setGuidIndex"]),
    iconFenlei() {
     if(!this.Actives) {
       this.Actives='active'
     }else {
       setTimeout(() => {
         this.Actives=''
       },200)
     }
    }
  },
  props: {
    title: {
      type:String,
    },
    to:{
      type:String,
    },
    classif:{
      type:String
    }
  }
}
</script>
<style lang="less" scoped>
  .headerbar {
    position: relative;
    z-index:1;
    left: 0;
    display: flex;
    height: 3.14285714rem;
    line-height: 3.14285714rem;
    background: #fff;
  }
  .headerbar-left {
    text-align: left;
    .navigation {
      display: inline-block;
      width: 3.14285714rem;
      height: 3.14285714rem;
      text-align: center;
      .iconfont {
        font-size: 1.5rem;
      }
    }
  }
  .headerbar-left,.headerbar-right {
    width: 6.28571429rem;
    height: 3.14285714rem;
    font-size: 0;
  }
.headerbar-center {
  flex: 1;
  max-width: calc(100% - 12.57142857rem);
  text-align: center;
  .headerbar-content {
    font-size: 1.14285714rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap; 
  }
} 
.headerbar-right {
  text-align: right;
  .navigation {
    display: inline-block;
    width: 3.14285714rem;
    height: 3.14285714rem;
    text-align: center;
  }
}
.headerbar-menu-toggle {
  position: relative;
}
.headerbar-menu {
  position: absolute;
  top:100%;
  right: 0.57142857rem;
  z-index: 9;
  background: #fff;
  border: 1px solid #E9ECF0;
  border-radius: 0.28571429rem;
  box-shadow: 0 4px 12px 0 #E9ECF0;
  display: none;
}
 .actives {
   display: block;
 }
.headerbar-menu::before {
  content: "";
    position: absolute;
    top: -0.285714rem;
    right: 0.85714286rem;
    width: 0.285714rem;
    height: 0.28571429rem;
    background: #fff;
    border-top: 1px solid #E9ECF0;
    border-left: 1px solid #E9ECF0;
    transform: rotate(45deg);
}
.headerbar-menu-item {
    height: 3.42857143rem;
    text-align: left;
    .navigation {
      padding: 0 0.85714286rem;
      font-size: 14px;
      color: #232628;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      width: 83px;
      text-align: left;
      .iconfont {
        vertical-align: middle;
        font-size: 1.2rem;
        color:#232628;
      }
      span {
        margin-left: 0.42857143rem;
      }
    }
}
</style>
