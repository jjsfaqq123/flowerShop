<template>
    <nav class="tabbar">
      <div class="tabbar-item" >
        <router-link  
        v-for="(tabbars,index) in tabbar" :key="index"
        :to='tabbars.tabbar_url' 
        :class="{active:guideIndex==index}"
        @click.native="setTo(index)"
        
        class="navigation" >
          <i :class="tabbars.tabbar_icon" class="posting">
            <p v-if="index == 2" v-for="(items,indexs) in addtoIndex" :key="indexs">{{items.id}}</p>
          </i>
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
      as:'',
      addIndex:'',
      tabbar: [
        {tabbar_url:'/',tabbar_icon:"iconfont icon-shouye",tabbar_title:'首页', },
        {tabbar_url:'/classification',tabbar_icon:'iconfont icon-fenlei',tabbar_title:'分类'},
        {tabbar_url:'/cart',tabbar_icon:'iconfont icon-gouwuche',tabbar_title:'购物车'},
        {tabbar_url:'/mine',tabbar_icon:'iconfont icon-weixiao',tabbar_title:'我的'},
      ],
    }
  },
  
  computed: {
    ...mapState(['guideIndex','addtoIndex'])
  },
  methods:{
    ...mapMutations(["setGuidIndex"]),
    setTo(index) {
      this.setGuidIndex(index)
    }
  },
}
</script>
<style lang="less" scoped>
.tabbar {
    position: fixed;
    left: 0;
    right: 0;
    bottom: -1px;
    z-index: 9;
    align-items: center;
    overflow: hidden;
    background: #F7F9FA;
    width:100%;
    max-width: 653px;
}

.tabbar-item {
  height: 3.5rem;
  text-align: center;
  display: flex;
  .navigation {
    height: 3.5rem;
    padding-top: 0.4rem;
    box-sizing: border-box;
    display: block;
    flex: 1;
  }
}
.posting {
  position: relative;
  p {
    position: absolute;
    top: -3px;
    left: 96%;
    min-width: 0.71428571rem;
    line-height: 1;
    padding: 0 0.14285714rem;
    font-size: 0.71428571rem;
    color: #fff;
    background: #FF734C;
    border-radius: 1rem;
    height: 14px;
    line-height: 14px;
  }
}
</style>
