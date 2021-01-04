<template>
    <div class="had">
        <headBox to="/mine" title="客服小爱"></headBox>
        <div class="had-head">
            <div class="had-size">
                <h3> {{content1}}</h3>
                <span>
                    <img src="../../../assets/img/body/1.jpg" alt="">
                </span>
            </div>
            <div class="had-size had-size1" v-show="isActive==true" v-for="(item,index) of contentMsg" :key="'s'+index">
                <span>
                    <img src="../../../assets/img/body/1.png" alt="">
                </span>
                <h3>{{item}}</h3>
            </div>
            <div class="had-size" v-for="(items,index) of content1Msg" :key="index">
                <h3> {{items}}</h3>
                <span>
                    <img src="../../../assets/img/body/1.jpg" alt="">
                </span>
            </div>
        </div>
        <div class="head">
            <div class="head-inp">
                <van-cell-group>
                    <van-field v-model="value"  placeholder="请输入用户名"  autosize @keyup.enter="sends()"/>
                    <van-button type="primary" style="display:line" @click="sends()">发送</van-button>
                </van-cell-group>
            </div>
        </div>
    </div>
</template>

<script>
import headBox from "@/components/header/headBox";
import io from 'socket.io-client';
import { Toast } from 'vant';
export default {
    components: {
        headBox
    },
    data() {
        return {
            value:"",
            content1:'',
            content2:'',
            isActive:false,
            contentMsg:[],
            content1Msg:[],
        }
    },
    created() {
        this.sendIo()
    },
    methods: {
        sendIo() {
           var clientSocket = io("http://127.0.0.1:3000");
            clientSocket.on('lists',(data)=> {
                this.content1 = data
            })
        },
        sends() {
            var clientSocket = io("http://127.0.0.1:3000");
            if(this.value.trim() === "") {
                Toast('消息不能为空');
                return false;
            }
            clientSocket.emit('message',this.value.trim())
            this.contentMsg.push(this.value.trim())
            this.value="";
            this.isActive= true;
            clientSocket.on('list',(data) => {
                this.content1Msg.push(data)
            })
        }
    }
}
</script>

<style lang="less" scoped>
/deep/.van-cell-group {
    display: flex;
}
/deep/ .van-cell {
    width:85%;
}
.had {
    background-color: #85d989;
    width: 100%;
    height: 50px;
}
    .head {
        position: relative;
        height: 685px;
        .head-inp {
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    }
    .had-head {
        position: relative;
        width: auto;
        margin: auto 10px;
        height:100%;
    }
.had-size {
    height:50px;
    width:70%;
    float: right;
    margin-top: 10px;
    font-weight: 400;
    display: flex;
    h3  {
        border:1px solid rgba(7, 7, 105, 0.212);
        border-radius: 10px;
        padding: 5px;
        background:rgba(7, 7, 105, 0.212);
        margin-right: 5px;
    }
}
.had-size+.had-size1 {
    float: left;
}
.had-size>span {
    width:70px;
    height: 50px;
    border:1px solid #ccc;
    border-radius: 50%;
    img {
      width:100%;
      height:100%; 
      border-radius: 50%;
    }
}
</style>