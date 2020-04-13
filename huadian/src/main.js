import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入vant
import Vant from 'vant';
import 'vant/lib/index.css';
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
  Vue.use(Lazyload,{
    lazyComponent: true
  })
//引入iconfont图标
import './assets/font_1749214_y14hec7y2n9/iconfont.css'
Vue.config.productionTip = false
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
