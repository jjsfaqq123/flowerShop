<template>
<div>
    <mt-popup
        v-model="popupVisible"
        position="bottom">
        <div class="modal-wrap">
            <div class="modal-close" @click="gouwu">
                <img src="../../public/img/24.png" class="q1">
            </div>
            <div class="modal-content">
                <div class="skumodal">
                    <div class="skumodal-info">
                        <div class="skumodal-info-pic" v-for="(item,i) of list1" :key="i" v-show=item.show>
                            <img :src="item.imgs" 
                            style="width:100%;vertical-align: middle;">
                        </div>
                        <div class="skumodal-info-desc">
                            <p class="skumodal-info-desc-price">¥239</p>
                            <p class="skumodal-info-desc-name">
                                <span class="text-gray2">已选</span>
                                <span>一往情深</span>
                            </p>
                        </div>
                    </div>
                    <div class="skumodal-scroll">
                        <div class="skumodal-options">
                            <div class="skumodal-options-title">选择</div>
                            <ul class="skumodal-options-list">
                                <li class="skumodal-options-item" :class="{active:classImg==i}"
                                v-for="(item,i) of list" :key="i" @click="add(i)">{{item.title}}</li>
                            </ul>
                        </div>
                        <div class="skumodal-btngroup">
                            <a href="javascript:;" class="skumodal-btngroup-btn">加入购物车</a>
                            <a href="javascript:;" class="skumodal-btngroup-btn skumodal-btngroup-btn-orange">立即购买</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </mt-popup>
    </div>
</template>
<script>
export default {
    data(){
        return{
            popupVisible:true,
            classImg:0,
             list:[
                {title:"一往情深"},
                {title:"你最珍贵"},
                {title:"暖暖"},
                {title:"嫣然一笑"},
                {title:"一如初见"},
            ],
            list1:[
                {imgs:require("../../public/img/3.png"),show:true},
                {imgs:require("../../public/img/4.png"),show:false},
                {imgs:require("../../public/img/5.png"),show:false},
                {imgs:require("../../public/img/6.png"),show:false},
                {imgs:require("../../public/img/8.jpg"),show:false},
            ]
        }
    },
    methods:{
       gouwu(){
        //    this.popupVisible=false
           var btn = false;
           this.$emit('btn',btn)
       },
       add(index){
           var list=this.list
           for(var i=0;i<list.length;i++){
               this.list1[i].show=false
           }
           this.list1[index].show=true 
           this.classImg=index;
       }
    },
   
}
</script>
<style scoped>
    .modal-wrap{
    width:414px;
    position: absolute;
    left: -207px;
    right: 0;
    bottom: 0;
    background-color: #fff;
    }
    .modal-close {
    position: absolute;
    right: 1.14285714rem;
    top: 1.14285714rem;
    width: 1.14285714rem;
    height: 1.14285714rem;
    overflow: hidden;
    }
    .q1{
        width:20px;
        height:20px;
        display: block;
    }
    .skumodal{
       padding-bottom: 4.85714286rem;
    }
    .skumodal-info{
        display: flex;
        max-width: 640px;
        margin: 0 auto;
        align-items: center; 
         padding: 1.14285714rem;
    }
    .skumodal-info-pic{
        display: flex;
        align-items: center;
        width: 5.71428571rem;
        height: 6.28571429rem;
        overflow: hidden;
    }
    .skumodal-info-desc{
        margin-left: 1.71428571rem;
    }
    .skumodal-info-desc-price{
        color: #FF734C;
    }
    .skumodal-info-desc-name{
        font-size: 0.85714286rem;
        margin-top: 0.42857143rem;
    }
    .skumodal-scroll{
        max-height: 50vh;
        overflow-x: hidden;
        overflow-y: auto;
    }
    .skumodal-options{
        max-width: 640px;
        margin: 0 auto;
        padding: 0 1.14285714rem;
    }
    .skumodal-options-title{
        font-size: 0.85714286rem;
        font-weight: 300;
        color: #71797F;
        text-align: left;
    }
    .skumodal-options-list{
        margin: 0.85714286rem -0.5rem 0;
        width:410.72px;
    }
    .active{
        border-color: #FF734C !important;
        background-color: #fff;
        color: #FF734C;
    }
    .skumodal-options-item {
    float: left;
    width: 7.42857143rem;
    height: 2.57142857rem;
    line-height: 2.57142857rem;
    background-color: #F7F9FA;
    font-size: 0.85714286rem;
    border: 1px solid #F7F9FA;
    text-align: center;
    border-radius: 0.14285714rem;
    margin: 0 0.5rem 1rem;
    user-select: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    }
    .skumodal-btngroup{
        position: absolute;
        left: 0;
        right: 0;
        bottom: 0;
        display: flex;
    }
    .skumodal-btngroup-btn{
        flex: 1;
        height: 3.5rem;
        line-height: 3.5rem;
        text-align: center;
        background-color: #3D4D42;
        user-select: none;
        color:#fff;
    }
    .skumodal-btngroup-btn.skumodal-btngroup-btn-orange{
        background-color: #FF734C;
    }
</style>


