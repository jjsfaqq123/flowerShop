<template>
  <div>
    <nav class="tabbar">
      <div class="tabbar-item" v-for="(tabbars,index) in tabbar" :key="index">
        <router-link :to='tabbars.tabbar_url' class="navigation" @click.native="switchs(index)" :class="Active==index?'active':''">
          <i :class="tabbars.tabbar_icon"></i>
          <p>{{tabbars.tabbar_title}}</p>
        </router-link>
      </div>
    </nav>
  </div>
</template>
<script>
export default {
  data() {
    return {
      Active:0,
      tabbar: [
        {tabbar_url:'/',tabbar_icon:"iconfont icon-shouye",tabbar_title:'首页', },
        {tabbar_url:'/classification',tabbar_icon:'iconfont icon-fenlei',tabbar_title:'分类'},
        {tabbar_url:'/cart',tabbar_icon:'iconfont icon-gouwuche',tabbar_title:'购物车'},
        {tabbar_url:'/mine',tabbar_icon:'iconfont icon-weixiao',tabbar_title:'我的'},
      ]
    }
  },
  methods:{
    switchs(index) {
       this.Active=index;
    }
  }
}
</script>
<style lang="less" scoped>
.tabbar {
    position: fixed;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 9;
    display: flex;
    align-items: center;
    overflow: hidden;
    background: #F7F9FA;
    max-width: 640px;
}
.active {
 color: #FF734C;
}
.tabbar-item {
  height: 3.5rem;
  flex: 1;
  text-align: center;
  .navigation {
    height: 3.5rem;
    padding-top: 0.28571429rem;
    box-sizing: border-box;
    display: block;
  }
}
</style>
