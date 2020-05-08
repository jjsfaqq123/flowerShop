-- 设置客户端传输SQL语句使用UTF8字符集

-- 删除数据库flowerShop,如果存在的话
DROP DATABASE  IF EXISTS flowerShop;
-- 创建数据库flowerShop,使用UTF8字符集存储数据
CREATE DATABASE flowerShop CHARSET=UTF8;
-- 进入数据库 flowerShop
use flowerShop;

-- 插入homeImages表
CREATE TABLE homeImages(
  id INT PRIMARY KEY AUTO_INCREMENT,  
  imgs  VARCHAR(255) NOT NULL,
  path_img CHAR(200) NOT NULL
);

-- 插入homeProcat数据
INSERT INTO  homeImages VALUES(NULL,'/body/20_mothersday_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/19_birthday_banner_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/18_byz_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/18_youflower_m.jpg' , "/motherDay");


-- 创建homeProcat 表
CREATE TABLE homeProcat(
  lid INT PRIMARY KEY AUTO_INCREMENT,  
  procat_img  VARCHAR(255) NOT NULL,
  procat_title CHAR(200) NOT NULL
);

-- 插入homeProcat数据
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_flower.png' , "鲜花");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_ppf.png' , "永生花");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_cake.png' , "蛋糕");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_gift.png' , "礼品");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_chocolate.png' , "巧克力");

-- 创建homescenc表
CREATE TABLE homeScenc(
  id INT PRIMARY KEY AUTO_INCREMENT,  
  scenc_img  VARCHAR(255) NOT NULL,
  scenc_title CHAR(200) NOT NULL
);

-- 插入homescenc数据
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_lover.png' , "送恋人");
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_elder.png' , "送长辈");
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_friends.png' , "送朋友");

-- 创建homeLovers表
CREATE TABLE homeLovers(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  lovers_img  VARCHAR(255) NOT NULL,
  lovers_title CHAR(200) NOT NULL
);

-- 插入homeLovers表
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use.png' , "生日祝福");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home.png' , "表白求婚");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use_business2.png' , "开业商务");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use_anniversary2.png' , "周年纪念");

-- 创建homeFresh表
CREATE TABLE homeFresh(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  fresh_img  VARCHAR(255) NOT NULL,
  fresh_title CHAR(200) NOT NULL
);

-- 插入homeFresh表
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_new2.png' , "新品来袭");
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_quality2.png' , "品味之选");
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_you2.png' , "设计师臻选");