<template>
  <div>
    <div class="scroll" @click="scrollClick" :style="scrollStaus==1?'display:block':'display:none'">
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
        scrollStaus:0
      }
    },
    created() {
     this.getaddEvent()
    },
    destroyed() {
      window.removeEventListener('scroll', this.getaddEvent);
    },
    methods: {
      getaddEvent() {
         window.addEventListener('scroll',()=>{
        //获得目前滚动的距离
        var scrollTop =document.documentElement.scrollTop||document.body.scrollTop;
        //找到要显示试图
        if(scrollTop>770) {
          this.scrollStaus = 1;
        }else {
            this.scrollStaus = 0;
        }
      })
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
