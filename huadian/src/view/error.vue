<template>
    <div>
      <div class="header">你要找的页面不存在哦！ 不如回到首页试试</div>
        <div>
          <img src="@/assets/img/header/010343araga4w7dd8dgdvp.jpg" alt="">
        </div>
        <router-link to="/">返回首页</router-link>
    </div>
</template>
<script>
export default {
  
}
</script>
<style lang='less' scoped>
  .header {
    width: 100%;
    text-align: center;
    margin:3rem 0;
    color:#f00;
    font-size: 1.3rem;
  }
  a {
    width:100px;
    height:50px;
    line-height: 50px;
    text-align: center;
    margin: 0  auto;
    margin-top: 20px;
    display: block;
    background-color: #f00;
    color:#fff;
    border-radius: 5px;
    border: 0;
  }
</style>
