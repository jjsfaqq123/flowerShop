<template>
  <div id="app">
    <div id="nav"></div>
      <!-- <load v-show ='loading' ></load> -->
      <keep-alive>
          <router-view v-if="$route.meta.keepAlive"/>
        </keep-alive>
      <transition :name="transitionName">
        <router-view v-if="!$route.meta.keepAlive"/>
    </transition>
  </div>
</template>
<script>
import load from "@/components/common/gameLoading";
import { mapMutations, mapState } from "vuex";
import { userInfo } from "@/service/api";

export default {
  data() {
    return {
      Intervals:null,
      transitionName:'',
      time:0,
      loading:true,
    }
  },
  created() {
    this.setLoading();
    this.Info();
  },
  methods: {
    ...mapMutations(['userIn']),
    setLoading() {
      this.Intervals = setInterval(() => {
      this.time++;
      if(this.time > 3) {
        clearInterval(this.Intervals);
        this.loading = false
      }
    },1000)
  },
  //获取用户信息
   async Info() {
      //获取登录状态
      let loginKey = sessionStorage.getItem('loginKey');
      if(loginKey) {
        var res = await userInfo();
        this.userIn(res.data.userInfon)
      }
    }
},
  watch: {
     '$route' (to, from) {
        let rouerLoading = ['/','/classification','/cart','/mine'];
        if(to.path == '/') {
          this.$store.state.guideIndex = 0
        }else if(to.path == '/classification') {
          this.$store.state.guideIndex = 1
        }else if(to.path == '/cart') {
            if(this.addtoIndex.length !=0) {
              this.$router.push('/cartShow')
            }
          this.$store.state.guideIndex = 2
        }else if(to.path == '/mine') {
          this.$store.state.guideIndex = 3
        }
       if(this.guideIndex) {
       if(rouerLoading.indexOf(to.path) > -1) {
         this.setLoading()
       }
      }
        const toDepth = to.path.split('/').length
        const fromDepth = from.path.split('/').length
        this.transitionName = toDepth < fromDepth ? 'slide-right' : 'slide-left'
    }
  },
  computed: {
    ...mapState(['guideIndex','addtoIndex'])
  },
  components: {
    load
  }
}
</script>

<style>
*{margin: 0;padding:0 };

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

/* #nav {
  padding: 30px;
} */

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
* {margin: 0;padding: 0;}
</style>
