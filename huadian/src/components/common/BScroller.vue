<template>
  <div ref="wrapScroll" class="van-scroll-wrapper" >
    <div class="van-scroll">
      <div>
        <!-- 这里放真实显示DOM内容 -->
        <slot></slot>
      </div>
    </div>
  </div>
</template>
<script>
import BSroller from "better-scroll";
export default {
  name:'BScroller',
  data() {
    return {
    wrapScroll:{},

    }
  },
  components: {
    BSroller
  },
  created() {
    this.$nextTick(()=> {
      this.initScroll()
    })
  },
  methods: {
    initScroll() {
      this.wrapScroll = new BSroller(this.$refs.wrapScroll, {
        scrollY: true,
        click: true,
        tap:true,
        bounce:true,
        probeType:true,
        mouseWheel: {
        speed: 20,
        invert: false,
        easeTime: 300
        }
      })
    },
    //滚动到指定距离
    scrollTo(x,y,time) {
      console.log(4)
      console.log(y)
      console.log()
    }
  }
}
</script>
<style lang="less" scoped> 
  .van-scroll-wrapper {
    position: fixed;
    z-index:0;
    overflow: hidden;
    width:100%;
    height:99%;
    left: 0;
    user-select: none;
  }
</style>

