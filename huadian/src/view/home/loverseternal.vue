<template>
    <div>
      <section class="product">
        <h3 class="product-title">永生花推荐</h3>
        <div class="product-list product-list-vertical">
          <div class="product-item product-item-vertical">
            <router-link to="" class="navigation">
              <div class="product-item-pic">
                <img src="@/assets/img/body/1073185.jpg_220x240.jpg" alt="">
              </div>
              <div class="product-item-info">
                <div class="product-item-info-tags">
                  <span>畅销</span>
                </div>
                <div class="product-item-info-name  text-overflow ">我如此爱你-口红款999·专柜正品Dior#999口红＋进口永生玫瑰礼盒</div>
                <div class="product-item-info-bottom">
                  <div class="product-item-info-bottom-left">
                    <p class="product-item-info-prices">
                      <strong>￥598</strong>
                      <s>￥698</s>
                    </p>
                    <p class="product-item-info-sales">已销售6780件</p>
                  </div>
                  <div class="product-item-info-bottom-right">
                    <i class="iconfont icon-gouwuche"></i>
                  </div>
                </div>
              </div>
            </router-link>
          </div>
        </div>
      </section>
    </div>
</template>
<script>
export default {
  
}
</script>
<style lang="less" scoped>
.product {
    margin-top: 0.57142857rem;
    background: #fff;
    padding-bottom: 1.428571rem;
    .product-title {
      padding:1.4rem 0;
      text-align: center;
      font-size: 1.14285714rem;
      font-weight: normal; 
    }
  }
  .product-list.product-list-vertical {
    padding:0 0.28571429rem 1.71428571rem
  }
  .product-item.product-item-vertical {
    float: left;
    padding:0.28571429rem;
    width:50%;
    margin-bottom:  0.57142857rem; 
  }
  .product-item > .navigation {
    overflow: hidden;
    box-shadow: 0 0.28571429rem 0.85714286rem 0 #e9ecf0;
    border-radius: 0.28571429rem;
  }
  .product-item.product-item-vertical .product-item-pic {
    max-height: 13.57142857rem;
    overflow: hidden;
  }
  img{
    width:100%;
    vertical-align: middle;
  }
  .product-item.product-item-vertical .product-item-info {
    padding: 0.57142857rem 0.57142857rem 1.14285714rem;
    height: 5.85714286rem;
    overflow: hidden;
    position: relative;
  }
  .product-item.product-item-vertical .product-item-info-tags {
    margin-bottom: 0.57142857rem;
  }
  .product-item-info-tags > span {
    display: inline-block;
    border-radius: 10rem;
    border:1px solid #FF734C;
    color:#FF734C;
    font-size: 0.71428571rem;
    padding: 0 0.28571429rem;
  }
  .product-item-info-name {
    font-weight: 300;
  }
  .text-overflow {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .product-item.product-item-vertical .product-item-info-bottom {
    position: absolute;
    left: 0.57142857rem;
    right: 0.57142857rem;
    bottom: 1.14285714rem;
    z-index: 1;
  }
  .product-item-info-bottom {
    display: flex;
    align-items: center;
  }
  .product-item-info-bottom-left {
    flex: 1;
  } 
  .product-item-info-prices > strong {
    font-size: 1.28571429rem;
    color: #FF734C;
    font-weight: 500;  
  }
  .product-item-info-prices >s {
    font-size: 0.71428571rem;
    color: #71797F;
    margin-left: 0.42857143rem;
  }
  .product-item-info-sales {
    font-size: 0.71428571rem;
    color: #71797F;
  }
  .product-item-info-bottom-right {
    text-align: right;
  }
</style>
