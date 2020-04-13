<template>
    <div id="contentiner">
        <header class="headerbar">
            <div class="headerbar-back">
                <img src="../../public/img/1.png" class="img_i">
            </div>
            <div class="header-content">
                <div class="header-content-left">
                    <img src="../../public/img/2.png" class="img_i" alt="">
                </div>
                <div class="header-content-center">
                    <i href="javascript:;" class="title1">搜索鲜花、蛋糕、礼品</i>
                </div>
            </div>
        </header>
        <!--主体 -->
        <section class="catebox">
       <aside class="catebox-menu">
            <div class="catebox-menu-item active"  @click="btn(index)" v-for="(item,index) in list" :key="index">
                <a href="javascript:;" class="catebox-menu-item-link">{{item.left}}</a>
            </div>
       </aside>
 </section>

       <section class="catebox-details" v-show="item.show" v-for="(item,index) in list1" :key="index">
           <div class="catebox-details-mode active" id="hot">
               <header class="catebox-details-banner">
                   <a href="javascript:;" class="navigation" >
                       <img src="../../public/img/1.jpg" alt="">
                   </a>
               </header>
               <div class="catebox-details-body">
                   <nav class="catebox-details-list">
                       <div class="catebox-details-item" >
                           <a href="javascript:;" class="navigation">
                               <img src="../../public/img/6.png" alt="">
                               <p class="catebox-details-item-desc">{{item.title}}</p>
                           </a>
                       </div>
                   </nav>
               </div>
           </div> 
       </section>
        <!-- 鲜花页 -->
    </div>    
</template>

<script>

export default {
  data(){
      return {
        list:[
            {left:"热门推荐"},
            {left:"鲜花"},
            {left:"永生花"},
            {left:"蛋糕"},
            // {left:"特色礼品"},
            // {left:"礼蓝"},
            // {left:"绿植花卉"}
        ],
        list1:[
            {imgs:"../../public/img/1.jpg"},
            {imgs:"../../public/img/3.png",title:"送恋人鲜花",show:true},
            {imgs:"../../public/img/4.png",title:"送长辈鲜花",show:false},
            {imgs:"../../public/img/5.png",title:"生日鲜花",show:false},
            {imgs:"../../public/img/6.png",title:"送恋人鲜花",show:false},
        ],  
      }
  },
  methods:{
      btn(index){
           var list = this.list;
            for(var i= 0 ;i<list.length;i++){
                this.list1[i].show = false;
            }
            this.list1[index].show = true;
      }
  }
}
</script>

<style scoped>
    .headerbar{
        position: absolute;
        top:0;
        left:0;
        right:0;
        display: flex;
        height:3.14rem;
        box-sizing: border-box;
        background: #fff;
        overflow: hidden;
        border-bottom: 2px solid #F1F3F6;
    }
    .headerbar-back{
        width: 3.14285714rem;
        max-width: 3.14285714rem;
        min-width: 3.14285714rem;
        height: 3.14285714rem;
        line-height: 3.14285714rem;
        text-align: center;
    }
    .navigation{
        display: block
    }
    a{
        text-decoration: none;
        color:inherit;
        outline: none;
    }
    .img_i{
        width:25px;
        height:25px;
        color:#ccc;
        margin: 10px 10px
    }
    .header-content{
        display: flex;
        height:2.57142857rem;
        align-items: center;
        flex:1;
        margin: 0.28571429rem;
        background-color:#E9ECF0;
        border-radius: 0.28571429rem
    }
    .iconfont-arrow-left{
        content:"\e639";
    }
    .header-content-left{
        width: 2.57142857rem;
        height: 2.57142857rem;
        line-height: 2.57142857rem;
        text-align: center;
    }
    .header-content-center{
        flex:1;
        padding-right:1.14285714rem;
        color:#71797F;
        width:100%;
        height:20px;
    }
   .title1{
       width:100%;
       height:100%;
       font-style: normal;
       margin-left: -120px
   }
   .catebox{
       position: relative;
       width:100%;
       height: calc(100vh - 3.5rem);
       padding-top: 3.14285714rem;
   }
   .catebox-menu{
       position: absolute;
       top: 3.14285714rem;
       left: 0;
       bottom: 0;
       z-index: 2;
       width: 21.06666667%;
       border-right: 1px solid #E9ECF0;
       overflow-x: hidden;
       overflow-y: auto;
   }
   .catebox-menu-item.active{
       color:#FF734C;
   }
    .catebox-menu-item{
        width:100%;
        height:4rem;
        line-height: 4rem;
        text-align: centet;
        overflow: hidden;
        position: relative;
    }
    .catebox-menu-item.active::before{
        background-color:#FF734C;
    }
     .catebox-menu-item::before{
         content:"";
         position: absolute;
         top:50%;
         left: 0px;
         width:2px;
         height:2.28571429rem;
         transform: translateY(-50%);
     }
    .catebox-menu-item-link{
        overflow: hidden;
        white-space: nowrap;
        font-size: 16px;
    }
   .catebox-details{
       position: absolute;
        top: 3.14285714rem;
        left: 21.06666667%;
        width: 78.93333333%;
        bottom: 0;
        z-index: 2;
        -webkit-overflow-scrolling: touch;
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
        -webkit-backface-visibility: hidden;
        -webkit-perspective: 1000;
        overflow-x: hidden;
        overflow-y: auto;
   }
   .catebox-details-mode.active{
       display: block;
   }
   .catebox-details-mode{
       display: none;
       padding: 0.85714286rem 0.85714286rem 3.14285714rem;
   }
   .catebox-details-banner{
       height:7rem;
       overflow: hidden;
       margin-bottom:  0.85714286rem;
   }
    .catebox-details-banner>.navigation{
        position: relative;
        display: block;
        height:7rem;
        width:100%;
    }
    img{
        width:100%;
        vertical-align: middle;
    }
    .catebox-details-body{
        padding: 0.57142857rem 0.28571429rem;
        border-radius: 0.14285714rem;
        margin-bottom: 0.85714286rem;
        box-shadow: 0px 2px 6px 0px #e9ecf0;
        height:427.88px;
    }
    .catebox-details-item{
        float: left;
        width:33.33333333%;
        height:102.69px;
        padding: 0.57142857rem 0;
    }
    .catebox-details-item > .navigation{
        text-align: center;
    }
    .navigation{
        display: block;
    }
    .catebox-details-item > .navigation > img{
        width: 4rem;
        height: 4rem;
        border-radius: 100%;
        overflow: hidden;
    }
    .catebox-details-item > .navigation > p{
        font-size: 0.85714286rem;
        font-weight: 300;
        line-height: 1.33333333;
        max-width: 6em;
        margin: 0.57142857rem auto 0;
        color: #232323;
        overflow: hidden;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
   
   
</style>
