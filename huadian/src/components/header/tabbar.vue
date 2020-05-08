<template>
    <nav class="tabbar">
      <div class="tabbar-item" >
        <router-link  
        v-for="(tabbars,index) in tabbar" :key="index"
        :to='tabbars.tabbar_url' 
        :class="{active:guideIndex==index}"
        @click.native="setGuidIndex(index)"
        class="navigation" >
          <i :class="tabbars.tabbar_icon"></i>
          <p>{{tabbars.tabbar_title}}</p>
        </router-link>
      </div>
    </nav>
 
</template>
<script>
import {mapMutations, mapState} from "vuex"
// import { watch, constants } from 'fs';
export default {
  data() {
    return {
      tabbar: [
        {tabbar_url:'/',tabbar_icon:"iconfont icon-shouye",tabbar_title:'首页', },
        {tabbar_url:'/classification',tabbar_icon:'iconfont icon-fenlei',tabbar_title:'分类'},
        {tabbar_url:'/cart',tabbar_icon:'iconfont icon-gouwuche',tabbar_title:'购物车'},
        {tabbar_url:'/mine',tabbar_icon:'iconfont icon-weixiao',tabbar_title:'我的'},
      ],
    }
  },
  computed: {
    ...mapState(['guideIndex'])
  },
  methods:{
    ...mapMutations(["setGuidIndex"]),
  },
}
</script>
<style lang="less" scoped>
.tabbar {
    position: fixed;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 9;
    align-items: center;
    overflow: hidden;
    background: #F7F9FA;
    width:100%;
}

.tabbar-item {
  height: 3.5rem;
  text-align: center;
  display: flex;
  .navigation {
    height: 3.5rem;
    padding-top: 0.88571429rem;
    box-sizing: border-box;
    display: block;
    flex: 1;
  }
}
</style>
