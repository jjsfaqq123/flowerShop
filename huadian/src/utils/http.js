import axios from "axios";
import qs from "qs";
import base4 from "base-64";
import router from "../router"
import CryptoJS from 'crypto-js'
import Vue from 'vue'
let cancel = {};
let CancelToken = axios.CancelToken;
//响应拦截 401 token过期处理
axios.interceptors.response.use(response => {
  if(response.data.status !=1) {
    if(response.data.status == -100) {
      return false;
    }
  }
  return response;
},error => {
  const {status} = error.response;
  switch (status) {
    case 401:
      //页面跳转
      router.push("/login");
      break;
    case 500: 
    //重定向
    router.push('*')
    break;
  }
  return Promise.reject(error);
})
//请求超时
axios.defaults.timeout = 10000;
//配置初始地址
axios.defaults.baseURL=('http://127.0.0.1:5000/');
//get请求
//封装请求

class Axios extends Vue {
  //自定义封装get请求
  get(url,param){
    return new Promise((resolve,reject)=>{
      axios.get(url,{
        params:param,
        cancelToken:new CancelToken(c => {
          cancel = c;
        })
      }).then(res => {
        resolve(res)
      }).catch(err => {
        reject(err)
      })
    })
  }

  //post请求
  post(url,param){
    return new Promise((resolve,reject)=>{
      axios({
        method:"post",
        url,
        data:(function(){
          return base64.Base64.encode(JSON.String(param))
        })(),
        cancelToken:new CancelToken(c => {
          cancel = c;
        })
      }).then(res => {
        resolve(res)
      })
    })
  }
}

export default new Axios();



// 加密
export const encrypt = (word) => {
  var key = CryptoJS.enc.Utf8.parse("46cc793c53dc451b");
  var srcs = CryptoJS.enc.Utf8.parse(word);
  var encrypted = CryptoJS.AES.encrypt(srcs, key, {
      mode: CryptoJS.mode.ECB,
      padding: CryptoJS.pad.Pkcs7
  });
  return encrypted.toString();
}
/**
* 解密
*/
export const decrypt = (word) => {
  var key = CryptoJS.enc.Utf8.parse("46cc793c53dc451b");
  var decrypt = CryptoJS.AES.decrypt(word, key, {
      mode: CryptoJS.mode.ECB,
      padding: CryptoJS.pad.Pkcs7
  });
  return CryptoJS.enc.Utf8.stringify(decrypt).toString();
}