<template>
  <div>
    <footer class="footer">
      <div class="footer-links" style="padding-bottom:1rem;">
        <router-link to="" class="footer-links-item" v-for="(enterprises,index) in enterprise" :key="index">{{enterprises.enterprise_title}}</router-link>
      </div>
      <div class="footer-links" style="padding-top:0;">
        <router-link to=""  class="footer-links-item" v-for="(flowerss,index) in flowers" :key="index">{{flowerss.flowers_title}}</router-link>
      </div>
      <div class="footer-entry">
        <div class="footer-entry-item">
          <router-link to="" class="navigation">
            <i class="iconfont icon-shouji"></i>
            <p>客户端</p>
          </router-link>
        </div>
        <div class="footer-entry-item">
          <router-link to="" class="navigation">
            <i class="iconfont icon-sevice"></i>
            <p>客服</p>
          </router-link>
        </div>
      </div>
      <p class="footer-copyright">
        Copyright © 2005~2020 花礼网（中国鲜花礼品网）版权所有<br>
        中国鲜花网领先品牌，鲜花速递专家！<br>
        深圳市百易信息技术有限公司  粤ICP备09171662号
      </p>
    </footer>
  </div>
</template>
<script>
export default {
  data() {
    return {
      enterprise: [
        {enterprise_title:'企业团购'},
        {enterprise_title:'设计师款'},
        {enterprise_title:'同城鲜花'},
        {enterprise_title:'花语大全'},
      ],
      flowers: [
        {flowers_title:'严选花材'},
        {flowers_title:'勇敢爱'},
        {flowers_title:'常见问题'},
        {flowers_title:'关于我们'},
      ]
    }
  }
}
</script>
<style lang="less" scoped>
  .footer {
    margin-top: 0.57142857rem;
    background: #fff;
    padding-bottom: 3.5rem;
  }
  .footer-links {
    display: flex;
    padding: 1.42857143rem 0rem;
  }
  .footer-links-item {
    flex: 1;
    display: block;
    padding: 0.485714rem 0.471429rem;
    margin: 0 1rem;
    background: #E9ECF0;
    font-size: 0.85714286rem;
    text-align: center;
  }
  .footer-entry {
    display: flex;
    justify-content: center;
  }
  .footer-entry-item {
    cursor: pointer;
    color: #232628;
    text-align: center;
    .icon-shouji {
      color:#333333;
    }
  }
  .footer-entry-item .iconfont {
    display: block;
    width: 2.57142857rem;
    height: 2.57142857rem;
    line-height: 2.57142857rem;
    text-align: center;
    border-radius: 50%;
    background: #E9ECF0;
    font-size: 1.42857143rem;
  }
  .footer-entry-item+.footer-entry-item {
    margin-left: 7.57142857rem;
  }
  .footer-copyright {
    padding: 1rem 0;
    font-size: 0.71428571rem;
    color: #B4BABF;
    text-align: center;
  }
</style>
