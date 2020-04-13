<template>
    <div class="home">
        <ul>
            <li @click="btn(index)" class="nav" v-for="(item,index) in list" :key="index">
                {{item.nav}}
                
            </li>
       
        </ul>
        <div class="nav-item" v-show="item.show" v-for="(item,index) in list1" :key="index">{{item.nav_item}}</div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[
                {nav:'花'},
                {nav:'蛋糕'},
                {nav:'面包'},
                {nav:'花圈'}
            ],
            list1:[
                {nav_item:1,show:true},
                {nav_item:2,show:false},
                {nav_item:3,show:false},
                {nav_item:4,show:false}
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
<style>
.home{
    display: flex;
}
ul{
    list-style-type:none;
    padding:0;
    margin:0;
}
.nav{
    width: 100px;
    background:#ddd;
    margin:20px 0;
}
.nav-item{
     width:50px;
     height:100px;
}
</style>
