import http from "../utils/http";
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
http.get('api/homeDetails/flower');
