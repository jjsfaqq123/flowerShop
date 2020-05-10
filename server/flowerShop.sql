/**
    数据库创建日期2020年5月1日
    默认编码格式CHARSET=UTF8
    DROP DATABASE  IF EXISTS 表名   如果这个表已存在则删除
**/


-- 设置客户端传输SQL语句使用UTF8字符集
  SET NAMES UTF8;
-- 删除数据库flowerShop,如果存在的话
DROP DATABASE  IF EXISTS flowerShop;
-- 创建数据库flowerShop,使用UTF8字符集存储数据
CREATE DATABASE flowerShop CHARSET=UTF8;
-- 进入数据库 flowerShop
use flowerShop;

-- 插入homeImages表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeImages;
CREATE TABLE `homeImages` (
    `id`                 INT PRIMARY KEY AUTO_INCREMENT,  
    `imgs`               VARCHAR(255),
    `path_img`           CHAR(200) 
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homeProcat数据
INSERT INTO  homeImages VALUES(NULL,'/body/20_mothersday_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/19_birthday_banner_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/18_byz_m.jpg' , "/motherDay");
INSERT INTO  homeImages VALUES(NULL,'/body/18_youflower_m.jpg' , "/motherDay");


-- 创建homeProcat 表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeProcat;
CREATE TABLE homeProcat(
  `lid` INT PRIMARY KEY AUTO_INCREMENT,  
  `procat_img`  VARCHAR(255) ,
  `procat_title` CHAR(200)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homeProcat数据
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_flower.png' , "鲜花");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_ppf.png' , "永生花");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_cake.png' , "蛋糕");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_gift.png' , "礼品");
INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_chocolate.png' , "巧克力");

-- 创建homescenc表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homescenc;
CREATE TABLE homeScenc(
  id INT PRIMARY KEY AUTO_INCREMENT,  
  scenc_img  VARCHAR(255) NOT NULL,
  scenc_title CHAR(200) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homescenc数据
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_lover.png' , "送恋人");
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_elder.png' , "送长辈");
INSERT INTO  homeScenc VALUES(NULL,'/body/m_home_use_friends.png' , "送朋友");

-- 创建homeLovers表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeLovers;
CREATE TABLE homeLovers(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  lovers_img  VARCHAR(255) NOT NULL,
  lovers_title CHAR(200) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homeLovers表
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use.png' , "生日祝福");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home.png' , "表白求婚");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use_business2.png' , "开业商务");
INSERT INTO  homeLovers VALUES(NULL,'/body/m_home_use_anniversary2.png' , "周年纪念");

-- 创建homeFresh表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeFresh;
CREATE TABLE homeFresh(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  fresh_img  VARCHAR(255) NOT NULL,
  fresh_title CHAR(200) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homeFresh表
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_new2.png' , "新品来袭");
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_quality2.png' , "品味之选");
INSERT INTO  homeFresh VALUES(NULL,'/body/m_home_category_you2.png' , "设计师臻选");

-- 创建homeSize表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeFont;
CREATE TABLE homeFont(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  font_img VARCHAR(255),
  font_title CHAR(200) NOT NULL,
  font_subtitle CHAR(200) NOT NULL,
  font_mytitle CHAR(200) NOT NULL,
  font_sell CHAR(200) ,
  font_price DECIMAL(8,2) ,
  font_netprice DECIMAL(8,2)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
-- 插入homeFont表
INSERT INTO homeFont VALUE(NULL,'/body/m_home_ranklist2.png','热销榜','集万千宠','大家都在卖','热销11.7万束',null,null);
INSERT INTO homeFont VALUE(NULL,'body/m_home_special2.png','特价专区','超值好货','限时直降',null,'158','186');


-- 创建homeLove表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeLove;
CREATE TABLE homeLove(
  `id` INT PRIMARY KEY AUTO_INCREMENT  ,
  `flower_img` VARCHAR(255) ,
  `flowers_always` CHAR(200) ,
  `flowers_boutique` CHAR(200)  ,
  `flowers_classic` CHAR(200)  ,
  `flowers_blodprice` DECIMAL(8,2),
  `flowers_price` DECIMAL(8,2) ,
  `flowers_sell`  CHAR(200) ,
  `flowers_sest`  CHAR(200)               
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- 插入homeLove表
INSERT INTO homeLove VALUES(
   NULL,'body/9010966.jpg_220x240.jpg','一往情深',
  '精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','经典爆款，年销售冠军！','249','315','已销售12.0万件',null);
INSERT INTO homeLove VALUES(
   NULL,'body/9010011.jpg_220x240.jpg','一心一意',
  '玫瑰11枝，粉色勿忘我0.3扎','经典款式 精选爆款','139','189','已销售11.7万件','畅销爆款');
INSERT INTO homeLove VALUES(
   NULL,'body/9012009.jpg_220x240.jpg','忘情巴黎',
  '33枝红玫瑰','浪漫唯美 女神挚爱','298','382','已销售6.7万件','畅销爆款');
INSERT INTO homeLove VALUES(
   NULL,'body/9012455.jpg_220x240.jpg','韩式系列/亲爱的你',
  '粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色绣球1枝','花艺师打造 韩式花束系列','368','469','已销售6.7万件','全新韩式系列');
INSERT INTO homeLove VALUES(
   NULL,'body/9012177.jpg_220x240.jpg','不变的承诺',
  '99枝红玫瑰','经典99枝，鼎力推荐！','520','869','已销售6.3万件','全新韩式系列');


-- 创建homeElder
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeElder;
CREATE TABLE homeElder (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `Elder_img` VARCHAR(255),
  `Elder_always` CHAR(200),
  `Elder_boutique` CHAR(200),
  `Elder_classic` CHAR(200),
  `Elder_blodprice` DECIMAL(8,2),
  `Elder_price` DECIMAL(8,2),
  `Elder_sell` CHAR(200),
  `Elder_sest` CHAR(200)
);

-- 插入homeElder表
INSERT INTO homeElder VALUES (NULL,'body/9012092.jpg_220x240.jpg','母爱','紫红色康乃馨9枝，粉色多头康乃馨10枝',
'红粉搭配  花色明艳','162','228','已销售1.6万件','母亲最爱');
INSERT INTO homeElder VALUES (NULL,'body/9012332.jpg_220x240.jpg','留住好时光','粉绣球1枝，粉雪山玫瑰6枝',
'精选昆明A级花材','239','306','已销售9683件','热卖推荐');
INSERT INTO homeElder VALUES (NULL,'body/9012095.jpg_220x240.jpg','幸福绽放','粉色康乃馨19枝',
'温暖之选 亮丽花色','172','215','已销售1.3万件','人气推荐');
INSERT INTO homeElder VALUES (NULL,'body/9012461.jpg_220x240.jpg','韩式系列/温柔以待','粉色康乃馨13枝，戴安娜玫瑰5枝、粉色洋桔梗5枝、浅紫紫罗兰5枝、尤加利10枝',
'韩式系列 母亲节新品','239','299','已销售128件','韩式系列新品');
INSERT INTO homeElder VALUES (NULL,'body/9012189.jpg_220x240.jpg','恩情无限','粉色康乃馨11枝，百合2枝',
'精选花材 精心设计','178','232','已销售1.3万件','人气推荐');

-- 创建homeEternal表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeEternal;
CREATE TABLE homeEternal (
 `id` INT PRIMARY KEY AUTO_INCREMENT,
 `eternal_img` VARCHAR(255),
 `eternal_best` CHAR(200),
 `eternal_my` CHAR(200),
 `eternal_original` DECIMAL(8,2),
 `eternal_activity` DECIMAL(8,2),
 `eternal_slod` CHAR(200)
);

-- 插入homeEternal表
INSERT INTO homeEternal VALUES (NULL,'body/1073185.jpg_220x240.jpg','畅销',
'我如此爱你-口红款999·专柜正品Dior#999口红＋进口永生玫瑰礼盒','598','698','已销售6780件');

INSERT INTO homeEternal VALUES (NULL,'body/1073264.jpg_220x240.jpg','创意新品',
'一鹿(路)有你永生花小夜灯·永生花礼盒','298','398','已销售425件');
INSERT INTO homeEternal VALUES (NULL,'body/1073247.jpg_220x240.jpg','热销单品',
'花好月圆永生花台灯·精选进口奥斯汀永生玫瑰台灯','298','398','已销售1052件');
INSERT INTO homeEternal VALUES(NULL,'body/1073033.jpg_220x240.jpg','爱的承诺',
'一生一世·厄瓜多尔进口永生红玫1朵，双色永生绣球','198','259','已销售1.2万件');

-- 创建homeCake表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeCake;
CREATE TABLE homeCake (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `cake_img` VARCHAR(255),
   `cake_best` CHAR(200),
   `cake_my` CHAR(200),
   `cake_original` DECIMAL(8,2),
   `cake_activity` DECIMAL(8,2),
   `cake_slod` CHAR(200)
);  

-- 插入homeCake表
INSERT INTO homeCake VALUES (NULL,'body/5181052.jpg_220x240.jpg','畅销','蓝色星球(6寸)','298','398','已销售120件');
INSERT INTO homeCake VALUES (NULL,'body/5231015.jpg_220x240.jpg','创意新品','蒙布朗栗蓉奶油蛋糕（6寸）·奶油蛋糕','249','349','已销售5件');
INSERT INTO homeCake VALUES (NULL,'body/5302008.jpg_220x240.jpg','热销单品','蝶恋花景(8寸)·元祖鲜奶蛋糕，布丁加水果夹层','258','358','已销售2558件');
INSERT INTO homeCake VALUES (NULL,'body/5013046.jpg_220x240.jpg','爱的承诺','水果盛宴·3磅(10寸)水果蛋糕','239','239','已销售2955件');


-- 创建homeGift表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeGift;
CREATE TABLE homeGift (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `gift_img` VARCHAR(255),
  `gift_best` CHAR(200),
  `gift_my` CHAR(200),
  `gift_original` CHAR(200),
  `gift_activity` CHAR(200),
  `gift_slod` CHAR(200)
);
-- 插入homeGift表
INSERT INTO homeGift VALUES(NULL,'body/1070017.jpg_220x240.jpg','礼盒装畅销款','天使之恋·高档精品化妆镜,天然深海母贝，彩白色的奥地利水钻','159','199','已销售1.8万件');
INSERT INTO homeGift VALUES (NULL,'body/1076062.jpg_220x240.jpg','火热畅销款','星期耳钉礼盒·s925银个性耳钉','198','298','已销售1574件');
INSERT INTO homeGift VALUES (NULL,'body/1076049.jpg_220x240.jpg','新品','迪奥口红#999+迪奥花漾淡香水30ml·口红+香水礼盒套装','889','900','已销售45件');
INSERT INTO homeGift VALUES (NULL,'body/1076095.jpg_220x240.jpg','热销新品','迪奥口红#999+迪奥花漾淡香水30ml·口红+香水礼盒套装T400双C项链女锁骨链镶施华洛世奇锆电镀玫瑰金·双C系列新品，永生花礼盒，玫瑰金','299','399','已销售19件');


-- 创建homeChocolate表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeChocolate;
CREATE TABLE homeChocolate (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `chocolate_img` VARCHAR(255),
  `chocolate_best` CHAR(200),
  `chocolate_my` CHAR(200),
  `chocolate_original` CHAR(200),
  `chocolate_activity` CHAR(200),
  `chocolate_slod` CHAR(200)
);
-- 插入homeChocolate表
INSERT INTO homeChocolate VALUES (NULL,'body/1201003.jpg_220x240.jpg','礼盒装畅销款','奢悦之美巧克力礼盒·夹心巧克力','158','358','已销售5062件');
INSERT INTO homeChocolate VALUES (NULL,'body/1204041.jpg_220x240.jpg','火热畅销款','Felchlin妃亭16粒装巧克力礼盒·德国进口夹心手工巧克力','298','298','已销售3327件');
INSERT INTO homeChocolate VALUES (NULL,'body/1207010.jpg_220x240.jpg','新品','迪奥口红#999+迪奥花漾淡香水30ml·口红+香水礼盒套装','288','388','已销售4621件');
INSERT INTO homeChocolate VALUES (NULL,'body/1204060.jpg_220x240.jpg','热销新品','德国进口LAUENSTEIN巧克力手工松露酒味夹心金装礼盒·德国进口酒心黑巧克力20粒','318','418','已销售23件');

-- 创建homeWtat表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeWtat;
CREATE TABLE homeWtat (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
  `homeWhath_img` VARCHAR(255),
  `homeWhath_what` CHAR(200)
);
-- 插入homeWtat表
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_01.png','获评鲜花龙头企业');
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_02.png','1~3小时送花上门');
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_03.png','赛事冠军花艺师团队');
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_04.png','严选花材');
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_05.png','12道严苛品控标准');
INSERT INTO homeWtat VALUES (NULL,'body/m_details_brand_06.png','500万用户信赖好评');
