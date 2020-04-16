<template>
  <div>
    <div class="scroll" @click="scrollClick">
      <div class="scroll-item">
        <a href="#" class="iconfont icon-xiangshangjiantou-copy " id="backTop"></a>
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data() {
      return {

      }
    },
    created() {
      window.onscroll=function() {
        //获得目前滚动的距离
        var scrollTop =document.documentElement.scrollTop||document.body.scrollTop;
        //找到要显示试图
        var scroll = document.querySelector('.scroll');
        if(scrollTop>770) {
          scroll.style.display="block";
        }else {
           scroll.style.display="none";
        }
      }
    },
    methods: {
      scrollClick() {
         var top =document.documentElement.scrollTop||document.body.scrollTop;
         const timeTop=setInterval(() => {
           document.body.scrollTop = document.documentElement.scrollTop = top-=50;
           if(top<=0) {
             clearInterval(timeTop)
           }
         },10)
    }
  }
}
</script>
<style lang="less" scoped>
  .scroll {
    position: fixed;
    display: none;
    right: 30px;
    top: 595px;
    .scroll-item {
      display: block;
      width: 2.57142857rem;
      height: 2.57142857rem;
      line-height: 2.57142857rem;
      text-align: center;
      border-radius: 50%;
      background: #fff;
      box-shadow: 0 0.28571429rem 0.42857143rem 0 #dee2e5;
      cursor: pointer;
    }
  }
</style>
