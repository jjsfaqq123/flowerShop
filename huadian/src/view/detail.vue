<template>
<div>
    <!-- 页头 -->
    <header class="headerbar">
        <div class="headerbar-left">
            <a href="javascript:;" class="navigation">
                <img src="../../public/img/1.png" @click="btn1" class="imgs">
            </a>
        </div>
        <div class="headerbar-center">
            <p class="headerbar-content">
                <a href="javascript:;">
                    <img src="../../public/img/12.png" class="headerbar-logo">
                </a>
            </p>
        </div>
        <div class="header-right">
            <div class="navigation headerbar-menu-toggle">
                <a href="javascript:;">
                    <img src="../../public/img/13.png" class="imgs" @click="show">
                </a>
                <!-- 录播图 -->
                <ul class="headerbarMenu active" v-show="alert">
                    <li class="headerbar-menu-item" v-for="(item,i) of list" :key="i">
                        <a href="javascript:;" class="navigation">
                            <img :src="item.imgs" class="img">
                            <span>{{item.title}}</span> 
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <!-- 轮播图 -->
    <div class="lunbo">
     <mt-swipe :show-indicators="false" :auto="0">
        <mt-swipe-item v-for="(item1,i) of list1" :key="i">
            <img :src="item1.imgs" class="lunno">
        </mt-swipe-item>
    </mt-swipe>
    <!-- 点击播放视屏 -->
    <div class="probanner-video-close" @click="tui" v-show="hid">退出视频</div>
    <video src="../../public//img/1.mp4" controls autoplay muted  class="vjs-tech" v-show="vide"></video>
    <div class="probanner-video-playbtn">
        <p class="probanner-video-playbtn-box" v-show="hi">
            <span class="probanner-video-playbtn-btn" @click="video">
                <img src="../../public/img/18.png" alt="">
            </span>
            <span class="probanner-video-playbtn-time">00'11''</span>
        </p>
         <div class="probanner-pagination">1/4</div>
    </div>
</div>
    <!-- 下面文字 -->
    <section class="proinfo">
        <div class="proinfo-head">
            <div class="proinfo-head-title">一往情深-精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎 
            <span class="text-orange">经典爆款，年销售冠军！</span>
        </div>
        <div class="proinfo-head-collect">
            <a href="javascript:;">
                <img src="../../public/img/19.png" class="imgs">
            </a>
        </div>
        </div>
        <div class="proinfo-body">
            <div class="proinfo-body-price">
                <span class="proinfo-body-price-sjg">¥239</span>
                <s class="proinfo-body-price-jg">¥315</s>   
            </div>
            <div class="proinfo-body-sales">
                已售
                <span>7.46万</span>
                件
            </div>
        </div>
    </section>
    <div class="media">
        <div class="media-left">
            <img src="../../public/img/20.png" class="imgs">
        </div>
        <div class="media-center">
            <font class="fontsize-16">
                APP下单立减
                <i>5</i>
                元
            </font>
        </div>
        <div class="media-right">
            <img src="../../public/img/21.png" class="imgss">
        </div>
    </div>
    <div class="skuselect"></div>
    <!-- 花语 材料 配送 -->
    <div class="detailsinfo">
        <div class="detailsinfo-item">
            <div class="detailsinfo-item-title">花语</div>
            <div class="detailsinfo-item-desc">你的轻柔像阵微风，让我从容不迫，想让你知道，我对你始终一往情深。</div>
        </div>
        <div class="detailsinfo-item">
            <div class="detailsinfo-item-title">材料</div>
            <div class="detailsinfo-item-desc">
                高档礼盒装鲜花:19枝红玫瑰，勿忘我0.1扎
            </div>
        </div>
        <div class="detailsinfo-item">
           <div class="detailsinfo-item-title">配送</div> 
           <div class="detailsinfo-item-desc"  v-show="ti">
               限送100多个主要城市的市区及近郊：北京,上海,深圳,广州,成都,武汉,
               南京,杭州,苏州,天津,西安,长沙,东莞,厦门,佛山,沈阳,合肥,重庆,大连,郑州,
               青岛,太原,无锡,石家庄,济南,宁波,哈尔滨,乌鲁木齐,贵阳,昆明,
               福州,长春,南昌,兰州,
               珠海,南宁,中山,常州,金华,邯郸,泉州,海口,嘉兴,南通,呼和浩特,廊坊,唐山,温州,徐州,绵阳,
               烟台,襄阳,保定,潍坊,镇江,衡阳,包头,赣州,扬州,清远,荆州,莆田,汉中,洛阳,湛江,九江,鞍山,大庆,
               秦皇岛,张家口,桂林,吉林,淄博,蚌埠,柳州,遵义,邢台,宜春,漳州,三亚,宜宾,东营,临沂,德州,开封,大同,
               龙岩,齐齐哈尔,连云港,新乡,黄冈,焦作,十堰,驻马店,信阳,牡丹江,黄石,宝鸡,丹东,阜阳,北海,聊城,锦州,
               许昌,内江,萍乡,安庆,承德,商丘,盘锦,乐山,沧州,河源,营口,平顶山,临汾,韶关,日照,新余,晋城,松原,淮北,
               淮南,晋中,潮州,滨州,自贡,六安,株州,濮阳,常熟,晋江,顺德,江阴,吴江,
               昆山,义乌,惠阳,银川,温江,燕郊,新都,涿州,
               南沙,宜兴,即墨,海安县,都江堰,增城,仙桃,菏泽
           </div>
           <div class="detailsinfo-item-right" @click="titl">
               <img src="../../public/img/22.png" class="imgss" >
           </div>
        </div>
        <!-- 配送地区 -->
        <div class="skuselect"></div>
        <section class="skuselectd">
            <div class="media">
                <div class="media-left  media-to">已选</div>
                <div class="media-center  media-hi">一往情深</div>
                <div class="media-right media-hig" @click="a1" >
                    <img src="../../public/img/23.png" class="imgss">
                </div>
            </div>
            <div class="media">
                <div class="media-le">配送至</div>
                <div class="media-center">
                    <span>成都 锦江区</span>
                </div>
                <div class="media-right media-higg">
                    <img src="../../public/img/23.png" class="imgss">
                </div>
            </div>
        </section>
        <section class="panel">
             <div class="skuselect"></div>
            <div class="panel-head">
                <div class="panel-head-title">订单评价</div>
                <div class="panel-head-link">
                    <a href="javascript:;">最近已有7699条评价</a>    
                </div> 
            </div>
        </section>
        <div class="skuselect"></div>
        <section>
            <div class="panel-head">
                <div class="panel-head-title">图片详情</div>
            </div>
            <div class="panel-body">
                <div class="proimgdetails" v-for="(item5,i) of list2" :key="i">
                    <img :src="item5.imgs">
                </div>
            </div>
        </section>
        <section class="disseminate">
            <div class="well" v-for="(item6,i) of list3" :key="i">
                <div class="well-title well-title-bb">
                    {{item6.title}}
                </div>
                <div class="well-body">
                    <p>{{item6.sub_title}}</p>
                    <img :src="item6.imgs">
                </div>
            </div>
        </section>
        <aside id="scrollbox" class="scrollbox">
            <div class="scrollbox-Top">
                <img src="../../public//img//32.png" class="imgs">
            </div>
        </aside>
    </div>
    <lian v-show="goumai" @btn="btn()"></lian>
</div>
</template>
<script>
import lian from "./lian.vue"
export default {
    data(){
        return {
            alert:false,
            vide:false,
            hi:true,
            hid:false,
            ti:false,
            goumai:false,
            // botton:true,
            // 分类列表
            list:[
                {imgs:require("../../public/img/14.png"),title:"首页"},
                {imgs:require("../../public/img/15.png"),title:"分类搜索"},
                {imgs:require("../../public/img/16.png"),title:"购物车"},
                {imgs:require("../../public/img/17.png"),title:"我的"},
            ],
            // 轮播图 
            list1:[
                {imgs:require("../../public/img/2.jpg")},
                {imgs:require("../../public/img/8.jpg")},
                {imgs:require("../../public/img/9.jpg")},
                {imgs:require("../../public/img/10.jpg")},
            ],
            //底部图片
            list2:[
                {imgs:require("../../public/img/11.jpg")},
                {imgs:require("../../public/img/12.jpg")},
                {imgs:require("../../public/img/13.jpg")},
                {imgs:require("../../public/img/14.jpg")},
                {imgs:require("../../public/img/15.jpg")},
                {imgs:require("../../public/img/16.jpg")},
                {imgs:require("../../public/img/17.jpg")},
                {imgs:require("../../public/img/18.jpg")},
                {imgs:require("../../public/img/19.jpg")},
                {imgs:require("../../public/img/20.jpg")},
                {imgs:require("../../public/img/21.jpg")},
                {imgs:require("../../public/img/22.jpg")},
            ],
            // 底部文字和图片
            list3:[
                {title:"龙头企业认证·14年品牌",
                sub_title:"始于2005，多次获中国电子商务协会“鲜花龙头企业”认证。",
                imgs:require("../../public/img/25.png")
              },
              {title:"12道品控标准 + 送前实拍",
                sub_title:"行业内率先研发并实施12道严苛品控标准：从花材采购、制作、成品、配送、售后全程覆盖，将产品及服务标准化；每束花均实拍回传总部审核，符合品控标准方可送出。",
                imgs:require("../../public/img/26.png")
              },
              {title:"花艺设计团队",
                sub_title:"国内领先的原创花艺：中国花艺博览会赛事冠军花艺师打造团队，坚持原创设计，创作花款迄今已畅销千万束。",
                imgs:require("../../public/img/27.png")
              },
              {title:"当日新鲜花材制作，极速送达",
                sub_title:"门店覆盖全国2000+城市，鲜花皆由当地门店花艺师在配送当日使用新鲜A级花材制作，确保鲜花娇艳欲滴！并由专人专车送货上门，最快1小时送达，快人一步！",
                imgs:require("../../public/img/28.png")
              },
              {title:"客服团队",
                sub_title:"建设一支较其他电商更大规模的客服团队，将常规客服升级为售前订花顾问、售中专人跟单、售后快速响应的一站式管家客服模式。",
                imgs:require("../../public/img/29.png")
              },
              {title:"优秀平台汇聚优秀人才",
                sub_title:"我们相信优秀的平台环境可以吸引同样气质、热爱花礼行业的优秀人才。",
                imgs:require("../../public/img/30.png")
              },
              {title:"不只鲜花 · 跨界音乐微电影",
                sub_title:"联合GIMC打造“勇敢爱”系列原创微电影、赞助《不要音乐》大型音乐旅行节目，全网播放超5000万次。",
                imgs:require("../../public/img/31.png")
              },
            ]
        }
    },
    components:{
        lian
    },
    methods:{
        // 跳转
        btn1(){
            this.$router.push("/cart")
        },
        // 显示隐藏
        show(){
            this.alert=!this.alert;
        },
        video(){
          this.vide=true;  
          this.hi=false;
          this.hid=true;
        },
        tui(){
            this.vide=false;
            this.hi=true;
        },
        // 配送文字
        titl(){
           this.ti=!this.ti; 
        },
        a1(){
            this.goumai =!this.goumai;
        },
        btn(btn){
            this.goumai = btn;
        },
    }
}
</script>
<style scoped>
    .headerbar {
        display: flex;
        height: 3.14285714rem;
        line-height: 3.14285714rem;
        background: #fff;
    }
    .headerbar-left{
        text-align: left;
        width: 6.28571429rem;
        height: 3.14285714rem;
        font-size: 0;
    }
    .headerbar-left > .navigation{
        display: inline-block;
        width: 3.14285714rem;
        height: 3.14285714rem;
        text-align: center;
    }
    .imgs{
        width:20px; 
        padding:10px; 
    }
    .img{
        width:20px;
        height:20px;
        margin-right: 10px;
    }
    .headerbar-center{
        flex: 1;
        max-width: calc(100% - 12.57142857rem);
        text-align: center;
    }
    .headerbar-content{
        font-size: 2.14285714rem;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    p{
        margin: 0;
    
    }
    .headerbar-logo{
        width:auto;
        height:1.42857143rem;
        max-width: 10.71428571rem;
    }
    .header-right{
        text-align: right;
        width: 6.28571429rem;
        height: 3.14285714rem;
        font-size: 0;
    }
   .header-right>.navigation{
       display: inline-block;
        width: 3.14285714rem;
        height: 3.14285714rem;
        text-align: center;
   }
   .headerbar-menu-toggle{
       position: relative;
   }
   .headerbarMenu{
       position: absolute;
       top:100%;
       right: 0.57142857rem;
       z-index: 9;
       background: #fff;
       border: 1px solid #E9ECF0;
       border-radius: 0.28571429rem;
       box-shadow: 0 4px 12px 0 #E9ECF0;
   }
    .headerbar-menu::before{
        content: "";
        position: absolute;
        top: -0.28571429rem;
        right: 0.85714286rem;
        width: 0.28571429rem;
        height: 0.28571429rem;
        background: #fff;
        border-top: 1px solid #E9ECF0;
        border-left: 1px solid #E9ECF0;
        transform: rotate(45deg);
    }
    .headerbar-menu-item{
        height: 3.42857143rem;
        text-align: left;
    }
    .headerbar-menu-item>.navigation{
        padding: 0 0.85714286rem;
        font-size: 14px;
        color: #232628;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .headerbarMenu>.headerbar-menu-item span{
        margin-top:10px;
    }
   .lunbo{
       position: relative;
       width:100%;
       height:451px;
       margin: 0 auto;
   }
  .lunno{
      width:100%;
  }
  a{
    text-decoration: none;
    color: inherit;
  }
  .probanner-video-playbtn{
    position: absolute;
    left: 0;
    right: 0;
    top:408px;
    z-index: 1;
    bottom: 15.14285714rem;
    text-align: center;
  }
  @media screen and (min-width:700px){
    .probanner-video-playbtn{
        top:650px;
    } 
  }
  .probanner-video-playbtn-box{
    display: inline-block;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 0.14285714rem 0.71428571rem 0.14285714rem 0.14285714rem;
    border-radius: 10rem;
    cursor: pointer;
  }
  .probanner-video-playbtn-btn{
    display: inline-block;
    width: 2rem;
    height: 2rem;
    line-height: 2rem;
    border-radius: 50%;
    text-align: center;
  }
  .probanner-video-playbtn-time{
      display: inline-block;
      width:46px;
      height:20px;
     font-size: 14px;
    vertical-align: middle;
    margin-top:-12px;
  }
 .probanner-pagination{
     position: absolute;
    bottom: -2rem;
    right: 0.57142857rem;
    z-index: 2;
    width: 2.57142857rem;
    height: 1.28571429rem;
    line-height: 1.28571429rem;
    background-color: rgba(255, 255, 255, 0.7);
    font-size: 0.85714286rem;
    -webkit-border-radius: 0.14285714rem;
    -moz-border-radius: 0.14285714rem;
    border-radius: 0.14285714rem;
    text-align: center;
    letter-spacing: 2px;
    overflow: hidden;
    text-overflow: clip;
    white-space: nowrap;
 }
 @media screen and (min-width:700px){
        .probanner-video-playbtn{
            bottom: 6.14285714rem;
        }
 }
 @media screen and (min-width:700px){
     .lunbo{
         height:700px;
     }
 }
 .proinfo{
     padding: 0.85714286rem 1.14285714rem;
    background: #fff;
    margin-bottom: 1px;
 }
 .proinfo-head{
     display: flex;
 }
 .vjs-tech{
     position: absolute;
     top:0;
     left: 0;
     width:100%;
     height:100%;
     background-color:#000;
 }
 .probanner-video-close{
    position: absolute;
    top: 1.42857143rem;
    right: 0.57142857rem;
    z-index: 10;
    background-color: rgba(255, 255, 255, 0.6);
    border-radius: 10rem;
    font-size: 0.85714286rem;
    padding: 0.14285714rem 0.28571429rem;
    user-select: none;
    cursor: pointer;
 }
 .proinfo-head-title{
     flex: 1;
      text-align: left;
 }
 .text-orange{
    color: #FF734C;
 }
 .proinfo-head-collect{
     width:3.85714286rem;
     min-width: 1.42857143rem;
     height:100%;
     text-align: right;
 }
 .proinfo-body{
     margin-top:0.85714286rem;
     display: flex;
    align-items: center;
 }
 .proinfo-body-price{
     flex: 1;
     font-size: 1px;
     text-align: left;
 }
 .proinfo-body-price-sjg{
     font-size: 1.42857143rem;
     color:#FF734C;
     font-weight: 600;
 }
 .proinfo-body-sales{
     width:8em;
     font-size:  0.85714286rem;
     text-align: right;
 }
 .proinfo-body-price-jg{
     color:#B4BABF;
     margin-left: 0.42857143rem;
     font-size: 1rem;
    margin-right: 1.14285714rem;
 }
 .media{
     display: flex;
     background-color:#fff;
     padding: 0.4rem 0.14285714rem;
     user-select: none;
 }
 .media-left{
     width:3rem;
     min-width:3rem;
     font-size:0.85714286rem;
     font-weight:500;
    line-height: 1.42857143rem;
 }
 .media-center{
     flex: 1;
     line-height: 3rem;
     text-align: left;
 }
 .fontsize-16{
     font-size: 1.14285714rem;  
 }
 .media-right{
     width: 1.42857143rem;
    text-align: right;
    font-size: 2.14285714rem;
 }
 .imgss{
     width:12.84px;
     height:13px;
 }
 .skuselect{
    margin-top: 0.57142857rem;
    border: 5px solid #E9ECF0;
 }
 .detailsinfo{
     margin-top: 0.57142857rem;
    background: #fff;
    /* padding: 0.57142857rem 1.14285714rem; */
 }
 .detailsinfo-item{
     display: flex;
    font-size: 0.85714286rem;
    position: relative;
 }
 .detailsinfo-item-title{
     width:3rem;
     min-width: 3rem;
     font-weight: 500;
     color:#232323;
     padding: 0.85714286rem 0;
 }
 .detailsinfo-item-desc{
     flex: 1;
     padding: 0.85714286rem 0;
     justify-content: center;
     text-align: left;
 }
 .detailsinfo-item+.detailsinfo-item:before{
     content: "";
     display: block;
     top:0;
     position: absolute;
     left: 2.85714286rem;
     right: 0;
     height:0;
     border-bottom:1px solid #E9ECF0
 }
 .detailsinfo-item-right{
     width: 1.71428571rem;
    text-align: right;
    padding: 0.85714286rem 0;
 }
 .skuselect{
     margin-top: 0.57142857rem;
 }
 .skuselectd{
     margin-top: 0.57142857rem;
 }
 .media-to{
     width:45px;
     height:21px;
 }
 .media-hi{
     height:21px;
     line-height: 21px;
 }
 .media-hig{
     width:20px;
     height:20px;
     margin:-10px 15px
 }
 .media+.media{
     position: relative;
 }
 .media+.media:before{
     content: "";
    position: absolute;
    left: 4.14285714rem;
    right: 1.14285714rem;
    top: 0;
    height: 0;
    display: block;
    border-top: 1px solid #E9ECF0;
 }
 .media-le{
     width: 4rem;
    min-width: 3rem;
    font-size: 0.85714286rem;
    font-weight: 500;
    line-height: 3.42857143rem;
 }
 .media-higg{
      width:20px;
     height:20px;
     margin:0px 21px
 }
 .panel{
     background-color: #fff;
    margin-top: 0.57142857rem;
 }
 .panel-head{
     display: flex;
     align-items: center;
    padding: 0.85714286rem 1.14285714rem;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
 }
 .panel-head-title{
     flex: 0;
     font-size: 1.14285714rem;
 }
 .panel-head-link{
     flex: 1;
    font-size: 0.85714286rem;
    color: #71797F;
    text-align: right;
 }
 .panel-body{
    border-top: 1px solid #E9ECF0;
 }
 .proimgdetails {
    font-size: 0;
 }
 img {
    width: 100%;
    vertical-align: middle;
 }
 .disseminate{
     padding-bottom:3.57142857rem;
 }
 .well{
     background-color: #fff;
 }
 .well-title-bb{
    font-size: 1.28571429rem;
    font-weight: 600;
    position: relative;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
 }
 .well-title{
    text-align: center;
    padding: 1.71428571rem 1.14285714rem 1rem;
 }
 .well-title-bb:after{
     content:"";
     position: absolute;
     bottom: 0.57142857rem;
    left: 0;
    right: 0;
    width: 3.42857143rem;
    margin: 0 auto;
    height: 0;
    border-bottom: 1px solid #D8D8D8;
 }
 .well-body {
    padding: 0 1.14285714rem 1.14285714rem;
 }
.well-body>p {
    font-size: 0.85714286rem;
    text-align: left;
}
.scrollbox{
    position: fixed;
    bottom: 7.14285714rem;
    right: 0.57142857rem;
    z-index: 10;
    
}
</style>
