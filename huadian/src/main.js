import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入vant
import Vant from 'vant';
import 'vant/lib/index.css';
//引入全局组件
import tabbar from "@/components/header/tabbar";
Vue.component('tabbar',tabbar)
import { 
  Lazyload,
} from 'vant';

Vue.use(Vant)
  //图片懒加载
  Vue.use(Lazyload,{
    lazyComponent: true
  })
//引入iconfont图标
import './assets/font/iconfont.css';
//引入全局less
import "./assets/classifiction/classifiction.less"
//全局注册better-scroll滚动组件
import BScroller from "@/components/common/BScroller";
Vue.component('m-scroll',BScroller);

//上拉加载下拉刷新
import vuescroll from 'vuescroll';
Vue.use(vuescroll)

//全局vuescroll option配置
Vue.prototype.options = {
  vuescroll:{
    mode: 'slide',
    pullRefresh: {
      enable: true,
      tips: {
        deactive: '下拉刷新',
        active: '释放刷新',
        start: '刷新中...',
        beforeDeactive: '刷新成功!'
      }
    },
    pushLoad: {
      enable: true,
      auto: true,
      autoLoadDistance: 10,
      tips: {
        deactive: '上拉加载',
        active: '释放加载',
        start: '加载中...',
        beforeDeactive:'加载成功!'
      }
    }
},
  bar: {
    disable:true,
    onlyShowBarOnScroll: false
  }
}
Vue.config.productionTip = false
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
