<template>
    <div>
        <nav class="tabbar">
            <div class="tabbar-left">
                <a href="javascript" class="tabbar-item">
                    <img src="../../public/img/25.png">
                    <p>客服</p>
                </a>
                    <a href="javascript" class="tabbar-item">
                    <img src="../../public/img/8.png">
                    <p>购物车</p>
                </a>
            </div>
             <div class="skumodal-btngroup">
                    <a href="javascript:;" class="skumodal-btngroup-btn">加入购物车</a>
                    <a href="javascript:;" class="skumodal-btngroup-btn skumodal-btngroup-btn-orange">立即购买</a>
            </div>
        </nav>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .tabbar{
        position:fixed;
        left: 0;
        bottom: 0;
        right:0;
        z-index: 9;
        display: flex;
        align-items: center;
        height:3.5rem;
        overflow: hidden;
        background:#F7F9FA;
        width:100%;
        height:52.5px;
    }
    .tabbar-left{
        float: left;
        width: 40%;
        height:52.5px;
    }
    .tabbar-item{
        display: block;
        flex: 1;
        box-sizing: border-box;
        padding-top: 0.57142857rem;
        float:left;
        width:82.8px;
        
    }
    img{
        width: 21.41px;
        height:22px;
    }
    p{
        box-sizing: border-box;
        padding-top: 0.57142857rem;
        margin:0;
        padding:0; 
        color:#ddd;
    }
   .tabbar-left .tabbar-item+.tabbar-item {
   border-left:1px solid #ccc;
}
.skumodal-btngroup{
        float: left;
        width: 60%;
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

