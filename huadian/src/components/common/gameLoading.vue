<template>
  <div >
    <div class="loading animationLeft">
     <img src="@/assets/img/timg.png" alt="">
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      Intervals:null,
      time:0,
      loading:true,
    }
  },
  created() {
   this.setLoading()
  },
  methods: {
     setLoading() {
      
      this.Intervals = setInterval(() => {
      this.time++;
      if(this.time > 10) {
         console.log(1);
        clearInterval(this.Intervals);
        this.loading = false
      }
    },1000)
  }
  }
}
</script>
<style lang='less' scoped>
  .loading{
    position: fixed;
    top:0;
    left:0;
    z-index:121;
    width: 100%;
    height: 100%;
    background:#f6f6f6;
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    span{
      position: absolute;
      top:0%;
      left: 0;
      margin-top: 110%;
      margin-left: 45%;
      font-size: 1rem;
      color: #460046;
    }
    img {
      position: absolute;
      top:0;
      left: 0;
      margin-left: 0%;
      margin-top:50%;
       background:#460046;
       background-size: 100%;
       width:100%;
       border:0;
    }
  }
  

</style>
