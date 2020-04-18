import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入vant
import Vant from 'vant';
import 'vant/lib/index.css';
//引入全局组件
import tabbar from "@/components/header/tabbar"
Vue.component('tabbar',tabbar)
import { 
  Swipe, 
  SwipeItem,
  Lazyload

} from 'vant';
Vue.use(
  Vant,
  Swipe,
  SwipeItem,
  )
  //图片懒加载
  Vue.use(Lazyload,{
    lazyComponent: true
  })
//引入iconfont图标
import './assets/font/iconfont.css'
//引入全局less
import "./assets/classifiction/classifiction.less"
Vue.config.productionTip = false
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
