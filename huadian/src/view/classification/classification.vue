<template>
      <div class="">
        <header class="headerbar ">
            <div class="headerbar-content">
                <div class="headerbar-content-left">
                    <i class="iconfont icon-sousuo" style='color: #B0B3B6;'></i>
                </div>
                <div class="headerbar-content-center">
                    <router-link to="">搜索鲜花、蛋糕、礼品</router-link>
                </div>
            </div>
        </header>
        <m-scroll>
        <section class="catebox animationLeft">
            <aside class="catebox-menu">
                <div class="catebox-menu-item" v-for="(item,index) in list" :key="index" :class="Active == index?'active':''">
                    <router-link to="" @click.native="flowe(index)">{{item.left}}</router-link>
                </div>
            </aside>
            <section class="catebox-details" >
                <div class="catebox-details-mode"  v-for="(itemBody,index)  in list1" :key="index" v-show="itemBody.show">
                    <header class="catebox-details-banner">
                        <router-link to="" class="navigation">
                            <img :src="itemBody.imgs" alt="">   
                        </router-link>
                    </header>
                    <div class="catebox-details-body">
                        <nav class="catebox-details-list">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list2" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="catebox.imgss" alt="">
                                <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                                </div>
                            </nav>
                        </div>
                    <div class="catebox-details-body" v-if="Active===1">
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
                    <!-- 鲜花场合 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">场合</h4> 
                        </div>
                         <nav class="catebox-details-list">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list4" :key="index">
                                <router-link to="" class="navigation">
                                    <img :src="catebox.imgss" alt="">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 鲜花花材 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">花材</h4> 
                        </div>
                         <nav class="catebox-details-list">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list5" :key="index">
                                <router-link to="" class="navigation">
                                    <img :src="catebox.imgss" alt="">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 鲜花玫瑰 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">玫瑰颜色</h4> 
                        </div>
                         <nav class="catebox-details-list">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list6" :key="index">
                                <router-link to="" class="navigation">
                                    <img :src="catebox.imgss" alt="">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 鲜花类别 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">类别</h4> 
                        </div>
                         <nav class="catebox-details-list">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list7" :key="index">
                                <router-link to="" class="navigation">
                                    <img :src="catebox.imgss" alt="">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 鲜花价格 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">类别</h4> 
                        </div>
                         <nav class="catebox-details-list catebox-details-list-text">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list8" :key="index">
                                <router-link to="" class="navigation">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 鲜花枝数 -->
                    <div class="catebox-details-body" v-if="Active===1">
                      <div class="catebox-details-title"  >
                            <h4 class="catebox-details-title-left">枝数</h4> 
                        </div>
                         <nav class="catebox-details-list catebox-details-list-text">
                            <div class="catebox-details-item" v-for="(catebox,index) in itemBody.list9" :key="index">
                                <router-link to="" class="navigation">
                                    <p class="catebox-details-item-desc">{{catebox.list_title}}</p>
                                </router-link>
                            </div>  
                        </nav>     
                    </div>
                    <!-- 永生花 -->
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
                        <div class="catebox-details-item" v-for="(eternals,index) in itemBody.eternal" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                        </nav>     
                    </div> 
                      <!--永生花分类  -->
                  <div class="catebox-details-body" v-if="Active===2">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">分类</h4>
                    </div>
                    <nav class="catebox-details-list">
                        <div class="catebox-details-item" v-for="(eternals,index) in itemBody.eternal_prove" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                        </nav>     
                    </div>
                    <!-- 蛋糕 -->
                  <div class="catebox-details-body" v-if="Active===3">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">品牌</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item" v-for="(eternals,index) in itemBody.brosdet" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <!-- <p class="catebox-details-item-desc">{{eternals.list_title}}</p> -->
                            </router-link>
                        </div>  
                        </nav>     
                    </div>
                    <!-- 特色礼品 -->
                    <div class="catebox-details-body" v-if="Active===4">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">品牌</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item" v-for="(eternals,index) in itemBody.brand" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <!-- <p class="catebox-details-item-desc">{{eternals.list_title}}</p> -->
                            </router-link>
                        </div>  
                        </nav>     
                    </div>
                   <!-- 特色礼品 对象 -->
                  <div class="catebox-details-body" v-if="Active===4">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">品牌</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item  catebox-details-pro" v-for="(eternals,index) in itemBody.features" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                      </nav>     
                    </div> 
                    <!-- 特色礼品 分类 -->
                  <div class="catebox-details-body" v-if="Active===4">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">分类</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item  catebox-details-pro" v-for="(eternals,index) in itemBody.commodity" :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                      </nav>     
                    </div>
                    <!-- 礼篮 -->
                  <div class="catebox-details-body" v-if="Active===5">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">礼篮</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item  catebox-details-pro" v-for="(eternals,index) in itemBody.liLan  " :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                      </nav>     
                    </div>
                    <!-- 绿植花卉 -->
                  <div class="catebox-details-body" v-if="Active===6">
                    <div class="catebox-details-title"  >
                        <h4 class="catebox-details-title-left">绿植花卉</h4>
                    </div>
                    <nav class="catebox-details-list catebox-details-list-square">
                        <div class="catebox-details-item  catebox-details-pro" v-for="(eternals,index) in itemBody.greenery  " :key="index">
                            <router-link to="" class="navigation">
                                <img :src="eternals.imgss" alt="">
                                <p class="catebox-details-item-desc">{{eternals.list_title}}</p>
                            </router-link>
                        </div>  
                      </nav>     
                    </div>
                </div>  
            </section>
        </section>
        </m-scroll>
        <tabbar/>
    </div>
</template>

<script>
import tabbar from "@/components/header/tabbar";
// import eternal from "@/view/classification/eternal"
export default {
  data() {
    return {
      Active: 0,
      list: [
        { left: "热门推荐" },
        { left: "鲜花" },
        { left: "永生花" },
        { left: "蛋糕" },
        {left:"特色礼品"},
        {left:"礼蓝"},
        {left:"绿植花卉"}
      ],
      list1: [
        //   热门推荐
        {
          imgs: require("@/assets/img/ification/20_mothersday_all.jpg"),
          show: true,
          list2: [
            {
              imgss: require("@/assets/img/ification/3.png"),
              list_title: "送恋人鲜花"
            },
            {
              imgss: require("@/assets/img/ification/4.png"),
              list_title: "送长辈鲜花"
            },
            {
              imgss: require("@/assets/img/ification/5.png"),
              list_title: "生日鲜花"
            },
            {
              imgss: require("@/assets/img/ification/6.png"),
              list_title: "礼盒鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_PPF.png"),
              list_title: "永生花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Cake.png"),
              list_title: "蛋糕"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Cake_ganso.png"),
              list_title: "元祖蛋糕"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Goldfoilflower.png"),
              list_title: "金箔花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Jewelry.png"),
              list_title: "首饰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Chocolate_qiaoluo.png"),
              list_title: "巧罗巧克力"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_CreativeGifts.png"),
              list_title: "创意礼品"
            },
            {
              imgss: require("@/assets/img/ification/m_category_hot_Groupbuy.png"),
              list_title: "企业团购"
            }
          ]
        },
        // 鲜花
        {
          imgs: require("@/assets/img/ification/flower.png"),
          show: false,
          list3: [
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_All.png"),
              list_title: "全部"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_1-2Girlfriend.png"),
              list_title: "送女友鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_Boyfriend.png"),
              list_title: "送男性鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_Elder.png"),
              list_title: "送长辈鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_Friend.png"),
              list_title: "送朋友鲜花"
            }
          ],
          list4: [
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Love.png"),
              list_title: "爱情鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Birthday.png"),
              list_title: "生日鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Visit.png"),
              list_title: "探望慰问"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Business.png"),
              list_title: "商务鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Congratulate.png"),
              list_title: "祝福庆贺"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Wedding.png"),
              list_title: "婚庆鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Apologize.png"),
              list_title: "道歉鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_Grief.png"),
              list_title: "哀思鲜花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_occ_gat.png"),
              list_title: "港澳台鲜花"
            }
          ],
          list5: [
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Rose.png"),
              list_title: "玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Carnation.png"),
              list_title: "康乃馨"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Sunflower.png"),
              list_title: "向日葵"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Lily.png"),
              list_title: "百合"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Hydrangea.png"),
              list_title: "绣球"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Tulips.png"),
              list_title: "郁金香"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Gerbera.png"),
              list_title: "扶郎/太阳花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_mat_Calla.png"),
              list_title: "马蹄莲"
            }
          ],
          list6: [
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_Red.png"),
              list_title: "红玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_Pink.png"),
              list_title: "粉玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_White.png"),
              list_title: "白玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_Purple.png"),
              list_title: "紫玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_Yellow.png"),
              list_title: "黄玫瑰"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_colour_Champagne.png"),
              list_title: "香槟色"
            }
          ],
          list7: [
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_bouquet.png"),
              list_title: "花束"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_Flowerbox.png"),
              list_title: "花盒"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_flowerbasket.png"),
              list_title: "桌面花篮"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_bottle.png"),
              list_title: "瓶插花"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_Fruitbasket.png"),
              list_title: "果篮"
            },
            {
              imgss: require("@/assets/img/ification/m_category_flowers_kind_business.png"),
              list_title: "开业花篮"
            }
          ],
          list8: [
            { list_title: "特价鲜花" },
            { list_title: "150元以下" },
            { list_title: "150-200元" },
            { list_title: "250-350元" },
            { list_title: "350-550元" },
            { list_title: "550-800元" },
            { list_title: "800以上" }
          ],
          list9: [
            { list_title: "9枝" },
            { list_title: "11枝" },
            { list_title: "19枝" },
            { list_title: "22枝" },
            { list_title: "29枝" },
            { list_title: "33枝" },
            { list_title: "50枝" },
            { list_title: "60枝" },
            { list_title: "99枝以上" }
          ]
        },
        //永生花
        { imgs: require("@/assets/img/ification/ppf.png"),
        show:false,
        eternal:[
            {
              imgss: require("@/assets/img/ification/m_category_flowers_use_All.png"),
              list_title: "全部"
            },
            {
              imgss: require("@/assets/img/ification/m_category_ppf_use_Girlfriend.png"),
              list_title: "送女友"
            },
            {
              imgss: require("@/assets/img/ification/m_category_ppf_use_Boyfriend.png"),
              list_title: "送男性"
            },
            {
              imgss: require("@/assets/img/ification/m_category_ppf_use_Elder.png"),
              list_title: "送长辈"
            },
            {
              imgss: require("@/assets/img/ification/m_category_ppf_use_Friend.png"),
              list_title: "送朋友"
            },
          ],
        eternal_prove:[
            {
              imgss:require('@/assets/img/ification/m_category_ppf_sort_Vase.png'),
              list_title: "永生瓶花"
            },
            {
              imgss:require('@/assets/img/ification/m_category_ppf_sort_Special.png'),
              list_title: "特色永生花"
            },
            {
              imgss:require('@/assets/img/ification/m_category_ppf_sort_GiantRose.png'),
              list_title: "巨型玫瑰"
            },
          ],
        },
        // 蛋糕
        { imgs: require("@/assets/img/ification/cake.png"),
        show:false,
        brosdet:[
          {
            imgss:require('@/assets/img/ification/m_category_cake_xfxb.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_ganso.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_mcake.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_lecake.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_vcaketop.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_boncake.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_waffleboy.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_micamika.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_21cake.png'),
          },
          {
            imgss:require('@/assets/img/ification/bestcake.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_cheesecake.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_cakeboss.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_pantry.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_cake_all.png'),
          },
        ]
      },
      // 特色礼品
      { imgs: require("@/assets/img/ification/gift.png"),
        show:false,
        brand: [
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_All.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_SWAROVSKI.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_GlamEver.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_Dior.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_MW.png'),
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_brand_HelloKitty.png'),
          },
        ],
        // 特色礼品 对象
        features: [
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Girlfriend.png'),
            list_title: "送女友"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Boyfriend.png'),
            list_title: "送男友"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Friend.png'),
            list_title: "送朋友"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Customer.png'),
            list_title: "送客户"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Teacher.png'),
            list_title: "送老师"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Child.png'),
            list_title: "送小孩"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_use_Leader.png'),
            list_title: "送领导"
          },
        ],
        // 特色商品  分类
        commodity: [
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_Musicbox.png'),
            list_title: "音乐盒"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_Goldfoilflower.png'),
            list_title: "金箔花"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_3DCrystal.png'),
            list_title: "3D水晶内雕"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_JewelryBeauty.png'),
            list_title: "首饰/美妆"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_Chocolates.png'),
            list_title: "巧克力"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_dolls.png'),
            list_title: "公仔/睡枕"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_HomeLife.png'),
            list_title: "家具生活"
          },
          {
            imgss:require('@/assets/img/ification/m_category_gift_sort_OrnamentsOthers.png'),
            list_title: "摆件/其他"
          },
        ]
      },
      // 礼篮
      { imgs: require("@/assets/img/ification/hamper.png"),
        show:false,
        liLan: [
          {
            imgss:require('@/assets/img/ification/m_category_Hamper.png'),
            list_title: "礼篮"
          },
        ]
      },
      // 绿植花卉
      { imgs: require("@/assets/img/ification/plants.png"),
        show:false,
        greenery: [
          {
            imgss: require("@/assets/img/ification/m_category_flowers_use_All.png"),
            list_title: "全部"
          },
          {
            imgss: require("@/assets/img/ification/m_category_Plants_Green.png"),
            list_title: "绿色植物"
          },
          {
            imgss: require("@/assets/img/ification/m_category_Plants_Potted.png"),
            list_title: "盆栽花卉"
          },
          {
            imgss: require("@/assets/img/ification/m_category_Plants_Succulent.png"),
            list_title: "多肉盆栽"
          },
        ]
      }
    ]
  };
},
  components: {
    tabbar,
    // eternal
  },
  created() {},
  methods: {
    flowe(index) {
      this.Active = index;
      var list = this.list;
      for (var i = 0; i < list.length; i++) {
        this.list1[i].show = false;
      }
      this.list1[index].show = true;
    }
  }
};
</script>

<style lang="less" scoped>
.headerbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  display: flex;
  height: 3.14rem;
  box-sizing: border-box;
  background: #fff;
  overflow: hidden;
  border-bottom: 2px solid #f1f3f6;
  z-index:1;
}
.headerbar-content {
  display: flex;
  height: 2.57142857rem;
  align-items: center;
  justify-content: center;
  flex: 1;
  margin: 0.28571429rem 0.85714286rem;
  padding-left: 0.57142857rem;
  background-color: #f3f5f7;
  border-radius: 1.28571429rem;
  .headerbar-content-left {
    width: 2.57142857rem;
    height: 2.57142857rem;
    line-height: 2.57142857rem;
    text-align: center;
  }
}
.headerbar-content-center {
  flex: 1;
  height: 2.57142857rem;
  line-height: 2.57142857rem;
  padding-right: 1.14285714rem;
  color: #71797f;
  font-size: 1rem;
}
</style>
