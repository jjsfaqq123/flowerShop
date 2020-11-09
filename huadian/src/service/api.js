

import http from "../utils/http";
//用户登录
export const login = param =>
http.post('api/user/login',param) 
// //用户信息
export const userInfo = param => 
http.get('api/user/userInfo') 
//首页蛋糕推荐
export const homeUser =param => 
  http.get('api/home/cake');

//首页轮播图 生日
export const homeBarthday =param => 
  http.get('api/home/barthday');

//首页恋人
export const homeLovers = param =>
http.get('api/home/flower');

//首页巧克力推荐
export const homeChocclate = param =>
http.get('api/home/chocolate');

//首页团队介绍
export const homeTeam = param =>
http.get('api/home/what');

//首页长辈
export const homeElder = param =>
http.get('api/home/elder');

//首页永生花推荐
export const homeEternal = param =>
http.get('api/home/eternal');

//首页礼品推荐
export const homeGift = param =>
http.get('api/home/gift');

//首页母亲节详情
export const homeDetailsMother = param =>
http.get('api/homeDetails/mother');

//首页鲜花详情
export const homeDetailsFlower = param =>
http.get('api/homeDetails/flower',param);

//首页鲜花详情-之送女友
export const homeDetailsGive = param =>
http.get('api/homeDetails/flowerGive',param);

//首页鲜花详情-之送男友
export const homeDetailsBoyfrienf = param =>
http.get('api/homeDetails/flowerBoyfrienf',param);

//首页鲜花详情-之送朋友
export const homeDetailsfriend = param =>
http.get('api/homeDetails/flowerfriend',param);

//首页鲜花详情-之送朋友
export const homeDetailsolder = param =>
http.get('api/homeDetails/flowerolder',param);

//首页鲜花详情-之销量送女友
export const homeDetailsalesGirlfriend = param =>
http.get('api/homeDetails/flowersalesgflfriend',param);


