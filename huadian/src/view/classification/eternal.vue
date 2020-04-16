<template>
  <div>
    <div class="catebox-details-body" v-if="Active===2">
      <div class="catebox-details-title"  >
          <h4 class="catebox-details-title-left">对象</h4>
          <div class="catebox-details-title-right">
              <router-link to="" class="navigation">
                  <i class="iconfont icon-jiangbei"></i>
                  鲜花排行榜
              </router-link>
          </div> 
      </div>
      <nav class="catebox-details-list">
          <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list3" :key="index">
              <router-link to="" class="navigation">
                  <img :src="catebox.imgss" alt="">
                  <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
              </router-link>
           </div>  
      </nav>     
    </div>        
  </div>
</template>
<script>
export default {
  data() {
    return {
      Active:0
    }
  }
}
</script>
<style lang="less" scoped>

</style>
