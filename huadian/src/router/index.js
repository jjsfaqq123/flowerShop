import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)
//首页
const home = (resolve) => {
  import('@/view/home/home').then((module)=>{
    resolve(module)
  })
}
//分类
const classification = (resolve) => {
  import('@/view/classification/classification').then((module)=>{
    resolve(module)
  })
}
const router = new VueRouter({
  routes :[
    { path:'/' , name:" home", component:home },
    { path:'/classification' , name:" classification", component:classification },
  ]
})

export default router
