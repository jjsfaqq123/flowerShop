import http from "../utils/http";
//首页蛋糕推荐
export const homeUser =param => 
  http.get('/api/home/cake',param);
export const homeFlower =param => {
  http.get('api/home/flower',param)
}
