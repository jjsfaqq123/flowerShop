<template>
  <div>
    <div class="scroll" @click="scrollClick">
      <div class="scroll-item">
        <router-link to="#" class="iconfont icon-xiangshangjiantou-copy" id="backTop"></router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data() {
      return {
        as:""
      }
    },
    mounted() {
      window.addEventListener('scroll',this.getaddEvent,true);
    },
    destroyed() {
      window.removeEventListener('scroll', this.getaddEvent,true);
      
    },
    methods: {
      getaddEvent() {
         window.onscroll=function() {
        //获得目前滚动的距离
        var scrollTop =document.documentElement.scrollTop||document.body.scrollTop;
        // console.log(scrollTop)
        //找到要显示试图
        var scroll = document.querySelector('.scroll');
        if(scrollTop>770) {
          scroll.style.display="block";
        }else {
           scroll.style.display="none";
        }
      }
    },
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
  
</style>
