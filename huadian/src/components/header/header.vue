<template>
  <div>
    <header class="headerbar">
      <div class="headerbar-left">
        <router-link to="javascript:;">
          <i class="iconfont icon-iconfontcategoryfill"></i>
        </router-link>
      </div>
      <div class="headerbar-logo">
        <img src="@/assets/img/header/m_hualogo.png" alt="">
      </div>
      <div class="headerbar-right">
        <i class="iconfont icon-sevice" @click="cus"></i>
      </div>
    </header>
  </div>
</template>

<script>
export default {
  data() {
    return {

    }
  },
  methods: {
    cus() {
      this.$router.push('/customer')
    }
  }
}
</script>

<style lang="less" scoped >
  .headerbar {
    display: flex;
    align-items: center;
    background: #435448;
    overflow: hidden;
    justify-content: center;
    color: #fff;
    width:100%;
    .headerbar-left,.headerbar-right {
      width: 3.42857143rem;
      height: 3.42857143rem;
      line-height: 3.42857143rem;
      box-sizing: content-box;
      text-align: center;
    }
    .headerbar-logo {
      flex: 1;
      text-align: center;
      img {
        width: 10.71428571rem;
      }
    }
  }
  img {
    vertical-align: middle;
    width:100%;
  } 
</style>