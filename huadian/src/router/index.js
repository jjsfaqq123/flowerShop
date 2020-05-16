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

//鲜花详情页
const fresh = (resolve) => {
  import("@/view/home/childer/fresh").then((module) => {
    resolve(module)
  })
}

//永生花详情
const eternal = (resolve) => {
  import("@/view/home/childer/eternal").then((module) => {
    resolve(module)
  })
}

//蛋糕详情
const cake = (resolve) => {
  import("@/view/home/childer/cake").then((module) => {
    resolve(module)
  })
}

//礼品详情
const gift = (resolve) => {
  import("@/view/home/childer/gift").then((module) => {
    resolve(module)
  })
}

//巧克力详情
const chocolate = (resolve) => {
  import("@/view/home/childer/chocolate").then((module) => {
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
    },
    {
      path:'/fresh',
      name:'fresh',
      component:fresh
    },
    {
      path:'/eternal',
      name:'eternal',
      component:eternal
    },
    {
      path:'/cake',
      name:'cake',
      component:cake
    },
    {
      path:'/gift',
      name:'gift',
      component:gift
    },
    {
      path:'/chocolate',
      name:'chocolate',
      component:chocolate
    },
  ],
});

export default router;
