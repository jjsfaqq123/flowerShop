import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);
//首页  路由懒加载
const home = (resolve) => {
  import("@/view/home/home").then((module) => {
    resolve(module);
  });
};
//分类
const classification = (resolve) => {
  import("@/view/classification/classification").then((module) => {
    resolve(module);
  });
};

//购物车
const cart = (resolve) => {
  import("@/view/cart/cart").then((module) => {
    resolve(module);
  });
};

//我的
const mine = (resolve) => {
  import("@/view/mine/mine").then((module) => {
    resolve(module);
  });
};

//登录
const login = (resolve) => {
  import("@/view/login/login").then((module) => {
    resolve(module);
  });
};

//首页轮播图详情
const motherDay = (resolve) => {
  import("@/view/game/mother/motherDay").then((module) => {
    resolve(module);
  });
};
//访问页面不存在
const error = (resolve) => {
  import("@/view/error").then((module) => {
    resolve(module)
  })
}
const router = new VueRouter({
  routes: [
    {
      path: "/",
      name: " home",
      component: home,
    },
    {
      path: "/classification",
      name: " classification",
      component: classification,
    },
    { 
      path: "/cart", 
      name: "cart", 
      component: cart 
    },
    { 
      path: "/mine", 
      name: "mine", 
      component: mine 
    },
    { 
      path: "/login", 
      name: "login", 
      component: login 
    },
    { 
      path: "/motherDay", 
      name: "motherDay", 
      component: motherDay 
    },
    {
      path:'*',
      name:'error',
      component:error
    }
  ],
});

export default router;
