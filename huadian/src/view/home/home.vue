<template>
    <div>
      <!-- 由于页面内容过多写在一个组件里后期不好维护而且一个组件承受的压力太太 -->
      <!-- 主页头部 -->
      <headBox></headBox>
      <!-- 主页主体一 -->
      <headHead></headHead>
      <!-- 主页主体二 -->
      <headBody></headBody>
      <!-- 主页主体三 -->
      <headselder></headselder>
      <!-- 主页主体四 -->
      <headseternal></headseternal>
    </div>
</template>

<script>
import headBox from "@/components/header/header";
import headHead from "@/view/home/loversHead";
import headBody from "@/view/home/loversBody";
import headselder from "@/view/home/loverselder";
import headseternal from "@/view/home/loverseternal";
export default {
  data() {
    return {

    }
  },
  components:{
    headBox,
    headHead,
    headBody,
    headselder,
    headseternal
  }
}
</script>

<style>

</style>