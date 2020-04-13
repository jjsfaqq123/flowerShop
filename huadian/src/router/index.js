import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const home = (resolve) => {
  import('@/view/home/home').then((module)=>{
    resolve(module)
  })
}
const router = new VueRouter({
  routes :[
    { path:'/' , name:" home", component:home },
  ]
})

export default router
