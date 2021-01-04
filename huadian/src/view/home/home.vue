<template>
    <div>
      <!-- 由于页面内容过多写在一个组件里后期不好维护而且一个组件承受的压力太太 -->
      <div>
      <!-- 主页头部 -->
      <headBox></headBox>
      <!-- <m-scroll> -->
      <!-- 主页主体一 -->
      <headHead ></headHead>
      <!-- 主页主体二 -->
      <headBody></headBody>
      <!-- 主页主体三 -->
      <headselder></headselder>
      <!-- 主页主体四 -->
      <headseternal></headseternal>
      <!-- 主页主体五 -->
      <headcake></headcake>
      <!-- 主页主体六 -->
      <headgift></headgift>
      <!-- 主页主体七 -->
      <headchocolate></headchocolate>
      <!-- 主页主体八 -->
      <fonter></fonter>
      <!-- scrooll -->
      <headindicator></headindicator>
       <!-- </m-scroll> -->
      </div>
      <!-- 底部 -->
       <tabbar></tabbar>  
    </div>
</template>

<script>
import headBox from "@/components/header/header";
import headHead from "@/view/home/loversHead";
import headBody from "@/view/home/loversBody";
import headselder from "@/view/home/loverselder";
import headseternal from "@/view/home/loverseternal";
import headcake from "@/view/home/loverscake";
import headgift from "@/view/home/loversgift";
import headchocolate from "@/view/home/loverschocolate";
import headindicator from "@/view/home/loversindicator";
import fonter from "@/components/fonter/fonter";
import tabbar from "@/components/header/tabbar";
import load from "@/components/common/gameLoading";

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
    headseternal,
    headcake,
    headgift,
    headchocolate,
    fonter,
    headindicator,
    tabbar,
  }
}
</script>

<style lang='less' scoped>
 
</style>