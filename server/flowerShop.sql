/**
    数据库创建日期2020年5月1日
    默认编码格式CHARSET=UTF8
    DROP DATABASE  IF EXISTS 表名   如果这个表已存在则删除
**/
-- #功能一:创建表login 用户登录表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flower_login;
CREATE TABLE `flower_login`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `uname` VARCHAR(50),
  `upwd`  VARCHAR(32)
);
-- #功能二:添加二条测试数据 
INSERT INTO flower_login VALUES(null,'tom',md5('123123'));
INSERT INTO flower_login VALUES(null,'jerry',md5('123123'));
-- 用户信息
SET NAMES UTF8;
DROP DATABASE IF EXISTS flower_userInfo;
CREATE TABLE `flower_userInfo`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `uname` VARCHAR(50),
  `img`  VARCHAR(100)
);
INSERT INTO flower_userInfo VALUES(null,'专业花钱者',"/publicGif/6fc29b7554fb86ab21a72246077c9d0b.gif");
-- 创建用户注册表
SET NAMES UTF8;
DROP DATABASE IF EXISTS userRegistered;
CREATE TABLE `userRegistered` (
  `unser_name` VARCHAR(10) ,
  `user_upwd` VARCHAR(10)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
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
-- SET NAMES UTF8;
-- DROP DATABASE IF EXISTS homeProcat;
-- CREATE TABLE homeProcat(
--   `lid` INT PRIMARY KEY AUTO_INCREMENT,
--   `procat_img`  VARCHAR(255) ,
--   `procat_title` CHAR(200)
-- ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- -- 插入homeProcat数据
-- INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_flower.png' , "鲜花" );
-- INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_ppf.png' , "永生花");
-- INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_cake.png' , "蛋糕");
-- INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_gift.png' , "礼品");
-- INSERT INTO  homeProcat VALUES(NULL,'/body/m_home_category_chocolate.png' , "巧克力" );

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
  `gift_original` DECIMAL(8,2),
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
  `chocolate_original` DECIMAL(8,2),
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


-- 插入homeDetailsMother表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeDetailsMother;
CREATE TABLE homeDetailsMother (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `pro_img`         VARCHAR(255),
  `pro_title`       CHAR(200),
  `pro_titles`      CHAR(200),
  `pro_titleTo`     CHAR(200),
  `pro_price`       DECIMAL(8,2),
  `pro_imgs`        VARCHAR(255)
);

INSERT INTO homeDetailsMother  VALUES (
  NULL,'homedetails/m_mother_pro_1.jpg','韩式新品','韩式系列/温柔以待',
  '母亲节新品','275','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsMother  VALUES (
  NULL,'homedetails/m_mother_pro_2.jpg','热销爆款',
  '母爱','浪漫配色.美好寓意','186','homedetails/m_mother_buy_btn.png');

-- 创建homeDetailsMother表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeDetailsUnder;
CREATE TABLE homeDetailsUnder (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `normal_img`      VARCHAR(200),
  `normal_title`    CHAR(200),
  `normal_titles`   CHAR(200),
  `normal_titleTo`  CHAR(200),
  `normal_price`    DECIMAL(8,2),
  `normal_imgs`     VARCHAR(255)
);
-- 插入homeDetailsMother表
INSERT INTO homeDetailsUnder  VALUES (
NULL,'homedetails/9012204.jpg_220x240.jpg','请选爆款','幸福万年长',
'长情陪伴.默默守护','389','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsUnder  VALUES (
  NULL,'homedetails/9012332.jpg_220x240.jpg','精美花篮','留住好时光','守护她曼妙的少女心','275','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsUnder  VALUES (
  NULL,'homedetails/1073173.jpg_220x240.jpg','定制礼盒','柔情时光-进口香氛款','倾情设计·为爱守护','388','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsUnder  VALUES (
  NULL,'homedetails/1073276.jpg_220x240.jpg','创意新品','花好月圆永生花台灯/母亲节定制','母亲节定制款','298','homedetails/m_mother_buy_btn.png');


-- 创建homeDetailsElegant表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeDetailsElegant;
CREATE TABLE homeDetailsElegant (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
  `elegant_img`      VARCHAR(200),
  `elegant_title`    CHAR(200),
  `elegant_titles`   CHAR(200),
  `elegant_titleTo`  CHAR(200),
  `elegant_price`    DECIMAL(8,2),
  `elegant_imgs`     VARCHAR(255)
);
-- 插入homeDetailsElegant表
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9010845.jpg_220x240.jpg','人气力荐','幸福典藏',
'珍藏一幕幕幸福的记忆','169','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9010741.jpg_220x240.jpg','人气力荐','健康长久',
'愿您平安喜乐','515','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9012094.jpg_220x240.jpg','母亲节款','牵挂',
'妈妈，您是我唯一的牵挂','286','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9010963.jpg_220x240.jpg','送礼优选','最思恋',
'精品乃馨礼盒','236','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9012314.jpg_220x240.jpg','送礼优选','温馨问候',
'大声说出妈妈我爱你','339','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9012095.jpg_220x240.jpg','送礼优选','幸福绽放',
'优雅设计·精致甄选','196','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9012189.jpg_220x240.jpg','人力推荐','恩情无限',
'时光易逝·恩情永恒','212','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsElegant  VALUES (
NULL,'homedetails/9010842.jpg_220x240.jpg','畅销爆款','感恩密码',
'人生路上·感恩有你','196','homedetails/m_mother_buy_btn.png');


-- 创建homeDetailsFragrant表
SET NAMES UTF8;
DROP DATABASE IF EXISTS homeDetailsFragrant;
CREATE TABLE homeDetailsFragrant (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `fragrant_img`      VARCHAR(200),
  `fragrant_title`    CHAR(200),
  `fragrant_titles`   CHAR(200),
  `fragrant_titleTo`  CHAR(200),
  `fragrant_price`    DECIMAL(8,2),
  `fragrant_imgs`     VARCHAR(255)
);
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012334.jpg_220x240.jpg','精美花篮','幸福满溢',
'花篮设计·送礼百搭','286','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012047.jpg_220x240.jpg','精美花篮','爱的思念',
'有一种很玄的东西叫思念','269','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012243.jpg_220x240.jpg','经典爆款','恋恋情深',
'简约时尚·高级大方','236','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012163.jpg_220x240.jpg','A级花材','甜蜜物语',
'整个心里都是你','463','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012460.jpg_220x240.jpg','韩式爆款','韩式系列/牵挂你',
'母亲节新品','330','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012451.jpg_220x240.jpg','韩式爆款','韩式系列/公主的假日',
'甜美的公主·今夜你最美','259','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012193.jpg_220x240.jpg','母亲节人气款','暖暖情意',
'无限的眷恋 来源于爱的温暖','419','homedetails/m_mother_buy_btn.png');
INSERT INTO homeDetailsFragrant  VALUES (
NULL,'homedetails/9012093.jpg_220x240.jpg','送礼优选','永恒的爱',
'母亲的爱是永恒的，她是一颗不落的星','307','homedetails/m_mother_buy_btn.png');

-- 创建flowerDetails表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetails;
CREATE TABLE flowerDetails (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);
-- 插入flowerDetails表
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012451.jpg_220x240.jpg',
'全新韩式系列','韩式系列/公主的假日·戴安娜玫瑰11枝、白色洋桔梗5枝、大叶尤加利10枝','228');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012332.jpg_220x240.jpg',
'热卖推荐','留住好时光·粉绣球1枝，粉雪山玫瑰6枝','245');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012450.jpg_220x240.jpg',
'全新韩式系列','韩式系列/初心不负· 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝','236');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010966.jpg_220x240.jpg ',
'经典99枝','不变的承诺·99枝红玫瑰','558');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012177.jpg_220x240.jpg',
'年销售冠军','一往情深·精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎','248');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010855.jpg_220x240.jpg',
null,'爱在心头·玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝','396');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012452.jpg_220x240.jpg',
'全新韩式系列','韩式系列/一路向阳·向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝','296');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010011.jpg_220x240.jpg',
'全新韩式系列','韩式系列/一路向阳·向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝','296');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012009.jpg_220x240.jpg',
'畅销爆款','忘情巴黎·33枝红玫瑰','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012462.jpg_220x240.jpg',
'韩式新品','韩式花篮/平淡岁月·苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝','296');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012243.jpg_220x240.jpg',
null,'恋恋情深·11枝香槟玫瑰，白色多头百合2枝','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010855.jpg_220x240.jpg',
null,'用心爱你·99枝：33枝戴安娜＋66枝红玫瑰','589');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012441.jpg_220x240.jpg',
'节日定制款','语笑嫣然·粉佳人玫瑰9枝、粉色小菊、洋桔梗、大叶尤加利','218');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012125.jpg_220x240.jpg',
'女神最爱', '缪斯女神·红玫瑰16枝，红豆5枝，粉色桔梗1枝，银叶菊2枝','188');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012223.jpg_220x240.jpg',
null, '我只钟情你·香槟玫瑰11枝、白色小雏菊3枝','236');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012455.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/亲爱的你·粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色绣球1枝','368');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012446.jpg_220x240.jpg',
'新品特价', '满天星-浅粉·满天星1扎','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012047.jpg_220x240.jpg',
null, '爱的思念·手提式花篮','226');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012345.jpg_220x240.jpg',
'热卖单品', '甜蜜相伴·粉佳人玫瑰9枝，白色洋桔梗0.2扎','162');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012154.jpg_220x240.jpg',
null, '甜美公主·白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝','369');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012314.jpg_220x240.jpg',
null, '温馨问候·香槟玫瑰9枝、多头白百合2枝、粉色康乃馨13枝','285');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010849.jpg_220x240.jpg',
'畅销爆款', '缘份·11枝红玫瑰,2枝多头白香水百合','189');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012440.jpg_220x240.jpg',
'节日定制款', '星河璀璨·香槟玫瑰9枝、蓝绣球、向日葵、白色洋桔梗、大叶尤加利','289');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012060.jpg_220x240.jpg',
'畅销单品', '眷念·戴安娜粉玫瑰33枝，石竹梅20枝','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010964.jpg_220x240.jpg',
null, '天使之祈·精品康乃馨礼盒,粉色康乃馨19枝，勿忘我适量','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012011.jpg_220x240.jpg',
'畅销爆款', '阳光海岸·19枝香槟玫瑰','228');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010969.jpg_220x240.jpg',
null, '你最珍贵·精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量','249');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010969.jpg_220x240.jpg',
'韩式母亲节新品', '韩式系列/倍加珍惜·粉色康乃馨11枝，粉佳人玫瑰5枝','286');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012163.jpg_220x240.jpg',
null, '甜蜜物语·黛安娜粉玫瑰33枝，多头粉色香水百合3枝，粉色勿忘我0.3扎','389');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012437.jpg_220x240.jpg',
null, '粉雪佳人·戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝','219');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012335.jpg_220x240.jpg',
null, '炙热（复古网纱款）／99枝·红玫瑰99枝','569');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012334.jpg_220x240.jpg',
null, '幸福满溢·多头百合2枝，卡罗拉玫瑰8枝，红太阳花6枝','240');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012094.jpg_220x240.jpg',
null, '牵挂·红色康乃馨33枝枝','240');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012457.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/着迷·紫霞仙子玫瑰11枝、白色洋桔梗10枝、尤加利5枝、浅紫色紫罗兰3枝','289');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012463.jpg_220x240.jpg',
'韩式系列新品', '韩式系列/青春有你·苏醒玫瑰16枝、白色洋桔梗5枝、浅蓝绣球1枝','359');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010736.jpg_220x240.jpg',
null, '感激·29枝红康乃馨,2枝多头粉百合','225');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010842.jpg_220x240.jpg',
null, '感恩密码·19枝粉康乃馨','165');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012078.jpg_220x240.jpg',
'畅销爆款', '你的香气·戴安娜粉玫瑰9枝','129');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092117.jpg_220x240.jpg',
null, '忘情巴黎＋德芙心语巧克力98克特价组合套装·33枝红玫瑰','339');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012461.jpg_220x240.jpg',
'韩式系列新品', '韩式系列/温柔以待·粉色康乃馨13枝，戴安娜玫瑰5枝、粉色洋桔梗5枝、浅紫紫罗兰5枝、尤加利10枝','249');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012175.jpg_220x240.jpg',
null, '月光女神·白玫瑰11枝，绿色桔梗5枝，小菊3枝，白色石竹梅4枝','238');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012095.jpg_220x240.jpg',
null, '幸福绽放·粉色康乃馨19枝','165');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010846.jpg_220x240.jpg',
null, '幸福花园·红色康乃馨11枝','128');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010731.jpg_220x240.jpg',
null, '牵手一生·红玫瑰19枝','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010741.jpg_220x240.jpg',
null, '牵手一生·红玫瑰19枝健康长久·红色康乃馨99枝、多头红色康乃馨1扎','433');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010947.jpg_220x240.jpg',
null, '真爱如初·雪山玫瑰11枝、深紫色勿忘我0.3扎','190');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012189.jpg_220x240.jpg',
'人气推荐', '恩情无限·粉色康乃馨11枝，百合2枝','178');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012458.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/加倍爱你·卡罗拉玫瑰15枝、戴安娜玫瑰5枝、深粉色绣球1枝、白桔梗5枝、尤加利叶10枝','398');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012093.jpg_220x240.jpg',
null, '永恒的爱·粉色康乃馨33枝','258');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010845.jpg_220x240.jpg',
'人气推荐', '幸福典藏·红色康乃馨16枝，白色相思梅或满天星，栀子叶0.5扎','142');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092112.jpg_220x240.jpg',
null, '99枝玫瑰赠德芙心语巧克力·33枝戴安娜、66枝红玫瑰、1扎满天星','599');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012315.jpg_220x240.jpg',
null, '妈妈我爱你·粉色康乃馨、粉绣球、香槟玫瑰、洋牡丹、黄色香雪兰','429');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012453.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/情窦初开·桃红雪山玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝','278');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012456.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/心愿·白雪山玫瑰5枝、香槟玫瑰11枝、粉色小菊3枝、绿桔梗5枝、尤加利叶5枝','296');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012056.jpg_220x240.jpg',
null, '香妃·香槟玫瑰9枝','132');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012454.jpg_220x240.jpg',
'全新韩式系列', '韩式系列/佳期如梦·白雪山玫瑰13枝、粉色洋桔梗5枝、尤加利10枝、粉色紫罗兰5枝','289');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012079.jpg_220x240.jpg',
null, '假日公主·戴安娜粉玫瑰11枝','139');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012339.jpg_220x240.jpg',
null, '抱抱我/自然风抱桶花·向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝','158');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012201.jpg_220x240.jpg',
'畅销单品', '馨情无限·戴安娜玫瑰11枝，红色康乃馨11支，红色石竹梅4枝','237');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012411.jpg_220x240.jpg',
null, '十全十美·香槟玫瑰10枝，橙康乃馨10枝，红色洋牡丹10枝','349');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010877.jpg_220x240.jpg',
'畅销爆款', '致美丽的你·红玫瑰11枝，满天星0.3扎，栀子叶0.5扎','146');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012204.jpg_220x240.jpg',
'精品优选', '幸福万年长·红色康乃馨66枝，白边紫色多头康乃馨15枝，栀子叶2扎','346');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012208.jpg_220x240.jpg',
null, '甜蜜纪事·玫瑰共50枝：红玫瑰11枝、香槟玫瑰19枝、戴安娜粉玫瑰20枝','439');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012112.jpg_220x240.jpg',
null, '温柔如你·戴安娜粉玫瑰12枝，石竹梅7枝','202');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012149.jpg_220x240.jpg',
null, '99的爱·香槟玫瑰99枝，尤加利15枝','599');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010871.jpg_220x240.jpg',
null, '好想你·红色康乃馨12枝，白色相思梅2枝，栀子叶0.5扎','136');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012055.jpg_220x240.jpg',
null, '不变的心·戴安娜玫瑰66枝','469');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012096.jpg_220x240.jpg',
null, '妈妈的爱·红色康乃馨16枝,香槟色桔梗3枝','159');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012231.jpg_220x240.jpg',
null, '给你我的温柔·戴安娜玫瑰19枝，粉色康乃馨15枝','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012150.jpg_220x240.jpg',
null, '幸福久久·戴安娜粉玫瑰99枝，栀子叶适量','569');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012240.jpg_220x240.jpg',
null, '天天天晴·香槟玫瑰66枝','469');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012070.jpg_220x240.jpg',
null, '爱如氧气·香槟玫瑰9枝，香槟色桔梗2枝','132');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012191.jpg_220x240.jpg',
null, '嫣然·粉色康乃馨19枝，粉色扶郎花5枝，紫色小雏菊3枝，银叶菊10枝','208');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012167.jpg_220x240.jpg',
'精选优品', '爱的小确幸·戴安娜粉玫瑰21枝，粉色桔梗5枝，石竹梅7枝','309');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012365.jpg_220x240.jpg',
'创意心形设计', '爱的喜悦/创意心形金属花篮·粉佳人玫瑰9枝，粉桔梗0.7扎，香槟桔梗0.3扎','269');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010904.jpg_220x240.jpg',
null, '青青子衿·白色多头香水百合6枝','280');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012038.jpg_220x240.jpg',
'畅销款', '依靠·戴安娜粉玫瑰12枝，紫色桔梗5枝，粉色勿忘我3枝','158');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012142.jpg_220x240.jpg',
null, '爱情花火·红玫瑰9枝，栀子叶5枝、满天星0.2扎','136');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092149.jpg_220x240.jpg',
null, '一缕清香·向日葵3枝，白色洋桔梗0.5扎','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092116.jpg_220x240.jpg',
null, '恋恋情深＋心相印蛋糕·11枝香槟玫瑰，白色多头百合2枝','329');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012061.jpg_220x240.jpg',
null, '恋恋不忘·香槟玫瑰99枝，叶上花20枝','639');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012376.jpg_220x240.jpg',
'热销', '邂逅你的美·白玫瑰9枝，橙色多头玫6枝','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012072.jpg_220x240.jpg',
null, '向日葵之歌·向日葵6枝','189');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012033.jpg_220x240.jpg',
null, '为爱相随·多头百合1枝，戴安娜粉玫瑰11枝','179');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012207.jpg_220x240.jpg',
null, '金牛座守护花·白玫瑰11枝、浅蓝绣球1枝、浅紫色洋桔梗5枝','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012148.jpg_220x240.jpg',
null, '初心永不变·白玫瑰99枝','599');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9050020.jpg_220x240.jpg',
null, '生如夏花·向日葵3枝、香槟玫瑰9枝、白色小雏菊','248');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010811.jpg_220x240.jpg',
null, '阳光心情·10枝多头黄百合','329');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012114.jpg_220x240.jpg',
null, '只要有你·紫玫瑰11枝，浅粉色雏菊3枝','158');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9020012.jpg_220x240.jpg',
null, '水果花篮-欣情·百合、红掌、玫瑰、扶郎、康乃馨等花材；进口橙子、红富士苹果、红提、哈密瓜等新鲜水果','348');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012447.jpg_220x240.jpg',
'新品特价', '满天星-浅紫·满天星1扎','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012190.jpg_220x240.jpg',
null,'温情祝福·紫红色康乃馨9枝，粉色多头香水百合2枝，紫色桔梗4枝','195');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010609.jpg_220x240.jpg',
null,'想你365天·红玫瑰365枝','2339');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012045.jpg_220x240.jpg',
null,'心花怒放·粉香水百合5枝','198');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012174.jpg_220x240.jpg',
null,'晴朗·香槟玫瑰11枝，向日葵2枝，绿色桔梗5枝，绿色小菊3枝，叶上花3枝','242');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012313.jpg_220x240.jpg',
null,'暖暖满怀·粉色康乃馨99枝、粉色多头康乃馨1扎','439');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012039.jpg_220x240.jpg',
null,'如初·19枝白玫瑰，紫色勿忘我5枝','205');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012325.jpg_220x240.jpg',
null,'深情赞美·苏醒玫瑰29枝、红色康乃馨29枝、粉百合3枝、红色多头玫1枝','485');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010765.jpg_220x240.jpg',
null,'欣欣向荣·红掌、多头粉香水百合、红太阳花、康乃馨等花材','279');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012449.jpg_220x240.jpg',
'新品特价','满天星/特大号-浅紫·满天星2扎','388');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9020015.jpg_220x240.jpg',
null,'水果花篮-温馨祝福·粉香水百合1枝,粉玫瑰8枝','279');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012346.jpg_220x240.jpg',
null,'心向暖阳·向日葵2枝，香槟玫瑰6枝','185');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092123.jpg_220x240.jpg',
null,'只想爱你/11枝·红玫瑰11枝、银叶菊0.3扎、小熊公仔1对','168');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010917.jpg_220x240.jpg',
null,'永恒的爱情·红玫瑰99枝','639');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010875.jpg_220x240.jpg',
null,'因为爱·粉色康乃馨12枝，紫色桔梗3枝，粉色香水百合2枝','245');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092122.jpg_220x240.jpg',
null,'爱在心头+德芙心语巧克力98克特价组合套装·玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝','439');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012434.jpg_220x240.jpg',
null,'蜜恋·戴安娜粉玫瑰11枝、浅蓝色绣球1枝、浅紫洋桔梗5枝','226');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012413.jpg_220x240.jpg',
null,'春风十里·粉佳人玫瑰10枝，粉色洋牡丹10枝，粉色绣球1枝','429');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012275.jpg_220x240.jpg',
null,'伴你久久·冷美人紫玫瑰99枝','599');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010999.jpg_220x240.jpg',
null,'爱到永久·999枝红玫瑰','5299');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012242.jpg_220x240.jpg',
null,'柔情蜜意·11枝戴安娜粉玫瑰，多头白百合2枝','288');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012188.jpg_220x240.jpg',
null,'相思红·红色康乃馨11枝，粉色桔梗4枝，红豆5枝','178');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092120.jpg_220x240.jpg',
null,'幸福久久赠价值68元德芙心语巧克力·戴安娜粉玫瑰99枝，栀子叶适量','599');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012316.jpg_220x240.jpg',
null,'「熊抱花束」聆听你·红色康乃馨19枝、红玫瑰11枝、多头白百合5枝、粉色绣球','498');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012158.jpg_220x240.jpg',
null,'情深款款·紫玫瑰66枝，搭配叶上花5枝、尤加利5枝','268');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012281.jpg_220x240.jpg',
null,'「熊抱花束」遇见你·香槟玫瑰33枝、黄色水仙百合1.5扎、浅紫色绣球1枝','698');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010105.jpg_220x240.jpg',
null,'爱的纪念日·红玫瑰11枝','155');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012279.jpg_220x240.jpg',
null,'紫情蜜语·紫霞仙子紫玫瑰20枝','278');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012128.jpg_220x240.jpg',
null,'好时光·多头粉色香水百合4枝，苏醒粉玫瑰9枝','239');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010840.jpg_220x240.jpg',
null,'爱的祝福·2枝多头白香水百合,19枝粉康乃馨','208');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092124.jpg_220x240.jpg',
null,'相爱一生/19枝玫瑰·红玫瑰19枝、银叶菊0.3扎、小熊公仔1对','236');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012433.jpg_220x240.jpg',
'创意手提花款','全心全意·红玫瑰13枝、粉佳人玫瑰6枝、白桔梗5枝','239');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012007.jpg_220x240.jpg',
null,'你的笑靥·13枝粉康乃馨，9枝红玫瑰','189');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012200.jpg_220x240.jpg',
null,'暖暖的问候·苏醒11枝、白百合2枝、浅粉色康乃馨9枝','259');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012412.jpg_220x240.jpg',
null,'盛情满满·红康乃馨10枝，红玫瑰10枝，红色洋牡丹10枝','369');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012219.jpg_220x240.jpg',
null,'天秤座守护花·香槟玫瑰11枝、多头白百合3枝、蕾丝3枝、银叶菊8枝','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012118.jpg_220x240.jpg',
'新品热销','花仙子·蓝绣球2枝，粉绣球1枝，紫玫瑰9枝','328');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010620.jpg_220x240.jpg',
null,'嫁给我吧· 戴安娜粉玫瑰108枝','668');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012239.jpg_220x240.jpg',
null,'多彩的季节·三色玫瑰共50枝','439');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012219.jpg_220x240 (1).jpg',
null,'天秤座守护花·香槟玫瑰11枝、多头白百合3枝、蕾丝3枝、银叶菊8枝','298');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9092119.jpg_220x240.jpg',
null,'为爱相随+德芙心语巧克力特价组合套装·多头百合1枝，戴安娜粉玫瑰11枝','217');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012200.jpg_220x240 (1).jpg',
null,'暖暖的问候·苏醒11枝、白百合2枝、浅粉色康乃馨9枝','259');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010890.jpg_220x240.jpg',
null,'致青春/无声的爱·满天星一大扎','229');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010668.jpg_220x240.jpg',
null,'LOVE 99·99枝精品红玫瑰花束','569');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012285.jpg_220x240.jpg',
null,'「熊抱花束」陪伴你 ·雪山白玫瑰19枝、蓝绣球3枝、紫色桔梗5枝','668');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012118.jpg_220x240 (1).jpg',
'新品热销','花仙子·蓝绣球2枝，粉绣球1枝，紫玫瑰9枝','328');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012203.jpg_220x240.jpg',
null,'温馨思念·红色康乃馨19枝，戴安娜粉玫瑰11枝','245');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012043.jpg_220x240.jpg',
null,'夏之物语·香槟玫瑰50枝','439');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9012246.jpg_220x240.jpg',
null,'邻家女孩·红玫瑰33枝、红色小雏菊','356');
INSERT INTO flowerDetails VALUES (NULL,'homedetailsflower/9010965.jpg_220x240.jpg',
null,'暖暖·精品玫瑰礼盒:戴安娜19枝，勿忘我适量','252');

-- 创建flowerDetails表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetailsGive;
CREATE TABLE flowerDetailsGive (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012450.jpg_220x240.jpg',
'全新韩式系列','韩式系列/初心不负· 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝',295);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010966.jpg_220x240.jpg',
'年销售冠军','一往情深·精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎',311);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012055.jpg_220x240.jpg',
null,'不变的心·戴安娜玫瑰66枝',586);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012177.jpg_220x240.jpg',
'经典99枝','不变的承诺·99枝红玫瑰',798);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010855.jpg_220x240.jpg',
null,'用心爱你·99枝：33枝戴安娜＋66枝红玫瑰',798);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012154.jpg_220x240.jpg',
null,'甜美公主·白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝',461);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010011.jpg_220x240.jpg',
'畅销爆款','一心一意·玫瑰11枝，粉色勿忘我0.3扎',172);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012009.jpg_220x240.jpg',
'畅销爆款','忘情巴黎·33枝红玫瑰',398);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010731.jpg_220x240.jpg',
null,'牵手一生·红玫瑰19枝',275);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012089.jpg_220x240.jpg',
null,'爱在心头·玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝',495);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012223.jpg_220x240.jpg',
null,'我只钟情你·香槟玫瑰11枝、白色小雏菊3枝',295);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012125.jpg_220x240.jpg',
'女神最爱','缪斯女神·红玫瑰16枝，红豆5枝，粉色桔梗1枝，银叶菊2枝',235);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012060.jpg_220x240.jpg',
'畅销单品','眷念·戴安娜粉玫瑰33枝，石竹梅20枝',398);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010947.jpg_220x240.jpg',
null,'真爱如初·雪山玫瑰11枝、深紫色勿忘我0.3扎',238);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010849.jpg_220x240.jpg',
'畅销爆款','缘份·11枝红玫瑰,2枝多头白香水百合',236);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012175.jpg_220x240.jpg',
null,'月光女神·白玫瑰11枝，绿色桔梗5枝，小菊3枝，白色石竹梅4枝',298);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012287.jpg_220x240.jpg',
null,'我爱你·520朵玫瑰 ',4299);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012455.jpg_220x240.jpg',
'全新韩式系列','韩式系列/亲爱的你·粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色绣球1枝 ',460);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012345.jpg_220x240.jpg',
'热卖单品','甜蜜相伴·粉佳人玫瑰9枝，白色洋桔梗0.2扎',202);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012335.jpg_220x240.jpg',
null,'炙热（复古网纱款）／99枝·红玫瑰99枝',711);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012437.jpg_220x240.jpg',
null,'粉雪佳人·戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝',274);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012163.jpg_220x240.jpg',
null,'甜蜜物语·黛安娜粉玫瑰33枝，多头粉色香水百合3枝，粉色勿忘我0.3扎',486);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012457.jpg_220x240.jpg',
'全新韩式系列','韩式系列/着迷·紫霞仙子玫瑰11枝、白色洋桔梗10枝、尤加利5枝、浅紫色紫罗兰3枝',361);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012463.jpg_220x240.jpg',
'韩式系列新品','韩式系列/青春有你·苏醒玫瑰16枝、白色洋桔梗5枝、浅蓝绣球1枝',449);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9092117.jpg_220x240.jpg',
null,'忘情巴黎＋德芙心语巧克力98克特价组合套装·33枝红玫瑰',424);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9092112.jpg_220x240.jpg',
null,'99枝玫瑰赠德芙心语巧克力·33枝戴安娜、66枝红玫瑰、1扎满天星',749);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012458.jpg_220x240.jpg',
'全新韩式系列','韩式系列/加倍爱你·卡罗拉玫瑰15枝、戴安娜玫瑰5枝、深粉色绣球1枝、白桔梗5枝、尤加利叶10枝',498);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012167.jpg_220x240.jpg',
'精选优品','爱的小确幸·戴安娜粉玫瑰21枝，粉色桔梗5枝，石竹梅7枝',386);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012339.jpg_220x240.jpg',
null,'抱抱我/自然风抱桶花·向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝',198);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012149.jpg_220x240.jpg',
null,'99的爱·香槟玫瑰99枝，尤加利15枝',749);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012208.jpg_220x240.jpg',
null,'甜蜜纪事·玫瑰共50枝：红玫瑰11枝、香槟玫瑰19枝、戴安娜粉玫瑰20枝',549);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012150.jpg_220x240.jpg',
null,'幸福久久·戴安娜粉玫瑰99枝，栀子叶适量',711);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010609.jpg_220x240.jpg',
null,'想你365天·红玫瑰365枝',2999);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010904.jpg_220x240.jpg',
null,'青青子衿·白色多头香水百合6枝',350);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012112.jpg_220x240.jpg',
null,'温柔如你·戴安娜粉玫瑰12枝，石竹梅7枝',252);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010917.jpg_220x240.jpg',
null,'永恒的爱情·红玫瑰99枝',799);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010804.jpg_220x240.jpg',
null,'真爱·红玫瑰9枝，石竹梅4枝，栀子叶0.5扎',170);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012285.jpg_220x240.jpg',
null,'「熊抱花束」陪伴你 ·雪山白玫瑰19枝、蓝绣球3枝、紫色桔梗5枝',835);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012434.jpg_220x240.jpg',
null,'蜜恋·戴安娜粉玫瑰11枝、浅蓝色绣球1枝、浅紫洋桔梗5枝',282);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012039.jpg_220x240.jpg',
null,'如初·19枝白玫瑰，紫色勿忘我5枝',256);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012275.jpg_220x240.jpg',
null,'伴你久久·冷美人紫玫瑰99枝',749);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010668.jpg_220x240.jpg',
null,'LOVE 99·99枝精品红玫瑰花束',711);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012281.jpg_220x240.jpg',
null,'「熊抱花束」遇见你·香槟玫瑰33枝、黄色水仙百合1.5扎、浅紫色绣球1枝',872);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010620.jpg_220x240.jpg',
null,'嫁给我吧· 戴安娜粉玫瑰108枝',835);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012274.jpg_220x240.jpg',
null,'嫁给我吧/红玫瑰·红玫瑰108枝',822);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010999.jpg_220x240.jpg',
null,'爱到永久·999枝红玫瑰',6624);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012025.jpg_220x240.jpg',
null,'梦想缤纷·戴安娜粉玫瑰11枝+香槟玫瑰13+红玫瑰5枝',370);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012433.jpg_220x240.jpg',
'创意手提花款','全心全意·红玫瑰13枝、粉佳人玫瑰6枝、白桔梗5枝',299);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012336.jpg_220x240.jpg',
null,'炙热（复古网纱款）／33枝·红玫瑰33枝',424);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012118.jpg_220x240.jpg',
'新品热销','花仙子·蓝绣球2枝，粉绣球1枝，紫玫瑰9枝',410);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012273.jpg_220x240.jpg',
null,'爱你如初·雪山白玫瑰66枝',586);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9010928.jpg_220x240.jpg',
null,'浪漫满屋·香槟玫瑰11支，浅蓝色绣球1枝',261);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012297.jpg_220x240.jpg',
null,'邂逅西雅图· 玫红色玫瑰（魅惑）19枝，尤加利叶',749);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012300.jpg_220x240.jpg',
null,'赤道花园· 红色玫瑰（红拂）19枝，尤加利叶',749);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012221.jpg_220x240.jpg',
null,'浪漫告白·卡罗拉红玫瑰11枝、白色小雏菊4枝',306);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012161.jpg_220x240.jpg',
null,'爱的诺言·红玫瑰19枝，白色腊梅2枝',286);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012113.jpg_220x240.jpg',
null,'浪漫巴黎·红玫瑰12枝，石竹梅10枝',252);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012289.jpg_220x240.jpg',
null,'邂逅浪漫·红玫瑰29枝+红色蔷薇10枝，灯台9枝，尤加利叶',586);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012063.jpg_220x240.jpg',
null,'紫霞仙子·紫玫瑰36枝，石竹梅20枝',486);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012431.jpg_220x240.jpg',
'创意手提花款','欢乐时光·香槟玫瑰19枝、白色桔梗5枝、白色相思梅5枝',324);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012283.jpg_220x240.jpg',
null,'「熊抱花束」守护你 ·粉绣球3枝、白绣球2枝、粉色洋桔梗0.5扎',835);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012126.jpg_220x240.jpg',
null,'情有独钟·戴安娜粉玫瑰50枝',535);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012165.jpg_220x240.jpg',
null,'爱在巴黎·精品玫瑰礼盒:红玫瑰39枝，搭配白色腊梅、尤加利、银叶菊少量',485);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012246.jpg_220x240.jpg',
null,'邻家女孩·红玫瑰33枝、红色小雏菊',445);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012435.jpg_220x240.jpg',
null,'心动信号·红色玫瑰11枝、粉绣球1枝、绿色洋桔梗5枝',286);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012430.jpg_220x240.jpg',
'创意手提花款','Better You·苏醒粉玫瑰19枝、粉色桔梗5枝、银叶菊5枝',299);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012041.jpg_220x240.jpg',
null,'浪漫缤纷·戴安娜粉玫瑰50枝',535);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012245.jpg_220x240.jpg',
null,'粉红恋人·苏醒玫瑰29枝，搭配银叶菊0.5扎',388);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012432.jpg_220x240.jpg',
'创意手提花款','向往·白玫瑰11枝、粉色桔梗3枝、白色桔梗3枝、尤加利10枝',248);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012088.jpg_220x240.jpg',
null,'白雪公主·白玫瑰50枝',536);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012290.jpg_220x240.jpg',
null,'好幸运·粉佳人玫瑰13枝，苏醒玫瑰16枝，粉色扶朗5枝，灯台9枝，尤加利叶',612);
INSERT INTO flowerDetailsGive VALUES (NULL,'homedetailsgive/9012155.jpg_220x240.jpg',
null,'甜心·粉佳人粉玫瑰15枝，香槟玫瑰8枝，红玫瑰6枝',372);

-- 创建flowerDetailsBoyfrienf表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetailsBoyfrienf;
CREATE TABLE flowerDetailsBoyfrienf (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9010969.jpg_220x240.jpg',
null,'你最珍贵·精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量',311);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012440.jpg_220x240.jpg',
'节日定制款','星河璀璨·香槟玫瑰9枝、蓝绣球、向日葵、白色洋桔梗、大叶尤加利',361);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012411.jpg_220x240.jpg',
null,'十全十美·香槟玫瑰10枝，橙康乃馨10枝，红色洋牡丹10枝',436);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012072.jpg_220x240.jpg',
null,'向日葵之歌·向日葵6枝',236);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9092149.jpg_220x240.jpg',
null,'一缕清香·向日葵3枝，白色洋桔梗0.5扎',248);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012376.jpg_220x240.jpg',
'热销','邂逅你的美·白玫瑰9枝，橙色多头玫6枝',248);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9050020.jpg_220x240.jpg',
null,'生如夏花·向日葵3枝、香槟玫瑰9枝、白色小雏菊',310);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9010811.jpg_220x240.jpg',
null,'阳光心情·10枝多头黄百合',411);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012346.jpg_220x240.jpg',
null,'心向暖阳·向日葵2枝，香槟玫瑰6枝',231);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012174.jpg_220x240.jpg',
null,'晴朗·香槟玫瑰11枝，向日葵2枝，绿色桔梗5枝，绿色小菊3枝，叶上花3枝',302);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012337.jpg_220x240.jpg',
null,'静若繁花·紫色绣球1枝，魅影或冷美人玫瑰11枝',360);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9092133.jpg_220x240.jpg',
null,'Sunshine·向日葵5枝，多头金香玉玫瑰6枝',452);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012214.jpg_220x240.jpg',
null,'常相伴·香槟玫瑰16枝，绿色康乃馨12枝',435);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012338.jpg_220x240.jpg',
null,'灿烂的笑容·向日葵2枝，金枝玉叶玫瑰13枝',324);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012196.jpg_220x240.jpg',
null,'向阳的温暖·精品向日葵礼盒：向日葵3枝，绿色康乃馨8枝，白百合2枝',460);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012215.jpg_220x240.jpg',
null,'向日葵的夏天·向日葵3枝，绿色康乃馨6枝，小绿菊3枝',385);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012016.jpg_220x240.jpg',
null,'阳光满溢·香槟玫瑰15枝，向日葵3枝',348);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012319.jpg_220x240.jpg',
null,'清风徐来·白色马蹄莲1扎、跳舞兰1扎、贝壳0.5扎、香槟8枝',711);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012104.jpg_220x240.jpg',
null,'心晴·香槟玫瑰19枝、香槟色桔梗3枝、紫色桔梗2枝',345);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012252.jpg_220x240.jpg',
null,'请原谅我·多头白百合2枝、浅蓝绣球1枝、金枝玉叶黄玫瑰6枝、香槟玫瑰3枝',411);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012322.jpg_220x240.jpg',
null,'Sunflower·向日葵4朵、黄金球6枝、香槟10枝、白色洋桔梗3枝、绿色康乃馨5枝',624);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012294.jpg_220x240.jpg',
null,'魔法潘多拉· 雪山白玫瑰11枝、紫掌5片、蓝色绣球1枝、浅紫色紫罗兰9枝、鸢尾叶5枝、鸟巢蕨5片',749);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012065.jpg_220x240.jpg',
null,'爱的华尔兹·香槟玫瑰33枝，叶上花10枝',422);
INSERT INTO flowerDetailsBoyfrienf VALUES (NULL,'homedetailsboyfriend/9012211.jpg_220x240.jpg',
null,'阳光灿烂·向日葵3枝、金枝玉叶黄玫瑰19枝',385);



-- 创建flowerDetailsFriend表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetailsFriend;
CREATE TABLE flowerDetailsFriend (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);

INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010849.jpg_220x240.jpg',
null,'恋恋情深·11枝香槟玫瑰，白色多头百合2枝',248);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012451.jpg_220x240.jpg',
'全新韩式系列','韩式系列/公主的假日·戴安娜玫瑰11枝、白色洋桔梗5枝、大叶尤加利10枝',274);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010969.jpg_220x240.jpg',
null,'你最珍贵·精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量',311);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012154.jpg_220x240.jpg',
null,'甜美公主·白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝',461);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012223.jpg_220x240.jpg',
null,'我只钟情你·香槟玫瑰11枝、白色小雏菊3枝',295);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010849.jpg_220x240 (1).jpg',
'畅销爆款','缘份·11枝红玫瑰,2枝多头白香水百合',236);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012175.jpg_220x240.jpg',
null,'月光女神·白玫瑰11枝，绿色桔梗5枝，小菊3枝，白色石竹梅4枝',298);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012455.jpg_220x240.jpg',
'全新韩式系列','韩式系列/亲爱的你·粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色绣球1枝',460);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012446.jpg_220x240.jpg',
'新品特价','满天星-浅粉·满天星1扎',248);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012345.jpg_220x240.jpg',
'热卖单品','甜蜜相伴·粉佳人玫瑰9枝，白色洋桔梗0.2扎',202);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012462.jpg_220x240.jpg',
'韩式新品','韩式花篮/平淡岁月·苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝',370);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012011.jpg_220x240.jpg',
'畅销爆款','阳光海岸·19枝香槟玫瑰',285);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012452.jpg_220x240.jpg',
'全新韩式系列','韩式系列/一路向阳·向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝',296);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012437.jpg_220x240.jpg',
null,'粉雪佳人·戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝',219);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012457.jpg_220x240.jpg',
'全新韩式系列','韩式系列/着迷·紫霞仙子玫瑰11枝、白色洋桔梗10枝、尤加利5枝、浅紫色紫罗兰3枝',289);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012463.jpg_220x240.jpg',
'韩式系列新品','韩式系列/青春有你·苏醒玫瑰16枝、白色洋桔梗5枝、浅蓝绣球1枝',359);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012441.jpg_220x240.jpg',
'节日定制款',' 语笑嫣然·粉佳人玫瑰9枝、粉色小菊、洋桔梗、大叶尤加利',218);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012461.jpg_220x240.jpg',
'韩式系列新品',' 韩式系列/温柔以待·粉色康乃馨13枝，戴安娜玫瑰5枝、粉色洋桔梗5枝、浅紫紫罗兰5枝、尤加利10枝',249);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012453.jpg_220x240.jpg',
'全新韩式系列',' 韩式系列/情窦初开·桃红雪山玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝、粉紫色绣球1枝',296);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012056.jpg_220x240.jpg',
null,'香妃·香槟玫瑰9枝',132);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012456.jpg_220x240.jpg',
'全新韩式系列','韩式系列/心愿·白雪山玫瑰5枝、香槟玫瑰11枝、粉色小菊3枝、绿桔梗5枝、尤加利叶5枝',296);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012369.jpg_220x240.jpg',
null,'如沐春风/自然风抱桶花·粉佳人玫瑰11枝',179);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012454.jpg_220x240.jpg',
'全新韩式系列','韩式系列/佳期如梦·白雪山玫瑰13枝、粉色洋桔梗5枝、尤加利10枝、粉色紫罗兰5枝',289);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012079.jpg_220x240.jpg',
null,'假日公主·戴安娜粉玫瑰11枝',139);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012411.jpg_220x240.jpg',
null,'十全十美·香槟玫瑰10枝，橙康乃馨10枝，红色洋牡丹10枝',349);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012149.jpg_220x240.jpg',
null,'99的爱·香槟玫瑰99枝，尤加利15枝',599);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012365.jpg_220x240.jpg',
'创意心形设计','爱的喜悦/创意心形金属花篮·粉佳人玫瑰9枝，粉桔梗0.7扎，香槟桔梗0.3扎',269);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012072.jpg_220x240.jpg',
null,'向日葵之歌·向日葵6枝',189);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012033.jpg_220x240.jpg',
null,'为爱相随·多头百合1枝，戴安娜粉玫瑰11枝',179);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012061.jpg_220x240.jpg',
null,'恋恋不忘·香槟玫瑰99枝，叶上花20枝',639);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012038.jpg_220x240.jpg',
'畅销款','依靠·戴安娜粉玫瑰12枝，紫色桔梗5枝，粉色勿忘我3枝',158);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012447.jpg_220x240.jpg',
'新品特价','满天星-浅紫·满天星1扎',198);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010904.jpg_220x240.jpg',
null,'青青子衿·白色多头香水百合6枝',280);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9092116.jpg_220x240.jpg',
null,'恋恋情深＋心相印蛋糕·11枝香槟玫瑰，白色多头百合2枝',329);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012207.jpg_220x240.jpg',
null,'金牛座守护花·白玫瑰11枝、浅蓝绣球1枝、浅紫色洋桔梗5枝',298);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012449.jpg_220x240.jpg',
'新品特价','满天星/特大号-浅紫·满天星2扎',388);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010811.jpg_220x240.jpg',
null,'阳光心情·10枝多头黄百合',329);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9020015.jpg_220x240.jpg',
null,'水果花篮-温馨祝福·粉香水百合1枝,粉玫瑰8枝',279);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012434.jpg_220x240.jpg',
null,'蜜恋·戴安娜粉玫瑰11枝、浅蓝色绣球1枝、浅紫洋桔梗5枝',226);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012039.jpg_220x240.jpg',
null,'如初·19枝白玫瑰，紫色勿忘我5枝',205);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012045.jpg_220x240.jpg',
null,'心花怒放·粉香水百合5枝',198);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012242.jpg_220x240.jpg',
null,'柔情蜜意·11枝戴安娜粉玫瑰，多头白百合2枝',206);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9020012.jpg_220x240.jpg',
null,'水果花篮-欣情·百合、红掌、玫瑰、扶郎、康乃馨等花材；进口橙子、红富士苹果、红提、哈密瓜等新鲜水果',348);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012128.jpg_220x240.jpg',
null,'好时光·多头粉色香水百合4枝，苏醒粉玫瑰9枝',239);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012413.jpg_220x240.jpg',
null,'春风十里·粉佳人玫瑰10枝，粉色洋牡丹10枝，粉色绣球1枝',429);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012118.jpg_220x240.jpg',
'新品热销','花仙子·蓝绣球2枝，粉绣球1枝，紫玫瑰9枝',328);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012030.jpg_220x240.jpg',
null,'天使的心跳·粉佳人粉玫瑰19枝，粉色桔梗6枝',226);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012219.jpg_220x240.jpg',
null,'天秤座守护花·香槟玫瑰11枝、多头白百合3枝、蕾丝3枝、银叶菊8枝',298);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9092148.jpg_220x240.jpg',
'韩式推荐','风一样的女子·向日葵3枝，戴安娜粉玫瑰3枝',188);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012239.jpg_220x240.jpg',
null,'多彩的季节·三色玫瑰共50枝',439);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012337.jpg_220x240.jpg',
null,'静若繁花·紫色绣球1枝，魅影或冷美人玫瑰11枝',288);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9020011.jpg_220x240.jpg',
null,'水果花篮-欣喜·百合,向日葵、玫瑰、扶郎、康乃馨等花材，橙子、苹果、进口红提',298);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012233.jpg_220x240.jpg',
null,'夏日倾情·香槟玫瑰19枝，银叶菊1扎',308);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010890.jpg_220x240.jpg',
null,'致青春/无声的爱·满天星一大扎',229);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012320.jpg_220x240.jpg',
null,'繁星·粉色绣球1枝、蓝色小飞燕1扎、粉色洋桔梗0.3扎、粉雪山15枝',499);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012141.jpg_220x240.jpg',
null,'柔情似水·香槟色玫瑰11枝，紫红色勿忘我0.3扎',158);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012342.jpg_220x240.jpg',
null,'岁月静好·海蓝绣球1枝，粉佳人/戴安娜玫瑰3枝，粉色紫罗兰6枝',198);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012448.jpg_220x240.jpg',
'新品特价','满天星/特大号-浅粉·满天星2扎',388);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012043.jpg_220x240.jpg',
null,'夏之物语·香槟玫瑰50枝',439);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012366.jpg_220x240.jpg',
'创意心形设计','爱的心情/创意心形金属花篮·香槟玫瑰11枝，白色桔梗0.3扎',259);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012217.jpg_220x240.jpg',
null,'巨蟹座守护花·戴安娜玫瑰3枝、坦尼克玫瑰6枝、粉色勿忘我5枝',139);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012431.jpg_220x240.jpg',
'创意手提花款','欢乐时光·香槟玫瑰19枝、白色桔梗5枝、白色相思梅5枝',259);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012235.jpg_220x240.jpg',
null,'双鱼座守护花·蓝色绣球1枝，紫色小雏菊4枝',292);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010815.jpg_220x240.jpg',
null,'好心情·红色太阳花10枝，香槟玫瑰5枝，香槟色桔梗3枝，水仙百合5枝',182);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012143.jpg_220x240.jpg',
null,'倾城月色·雪山白玫瑰11枝',156);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012293.jpg_220x240.jpg',
null,'Flora Love· 粉色玫瑰（荔枝）5枝、浅紫色紫罗兰9枝、白色郁金香9枝、粉色绣球1枝、鸢尾叶1扎、银叶菊1枝',599);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012435.jpg_220x240.jpg',
null,'心动信号·红色玫瑰11枝、粉绣球1枝、绿色洋桔梗5枝',229);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012298.jpg_220x240.jpg',
null,'天使之吻·A级白粉色玫瑰（红袖或爱莎）19枝，尤加利叶',599);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9010949.jpg_220x240.jpg',
null,'恰似你的温柔·精品玫瑰礼盒,香槟玫瑰11枝、深紫色勿忘我0.3扎',206);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012321.jpg_220x240.jpg',
null,'爱的陪伴·紫色马蹄莲1扎、紫色紫罗兰1扎、粉色绣球1枝、粉色康乃馨11枝',569);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012430.jpg_220x240.jpg',
'创意手提花款','Better You·苏醒粉玫瑰19枝、粉色桔梗5枝、银叶菊5枝',239);
INSERT INTO flowerDetailsFriend VALUES (NULL,'homedetailsfriend/9012291.jpg_220x240.jpg',
null,'如初之光·红玫瑰9枝、紫红色紫罗兰9枝、紫红色蕙兰1枝、红色洋牡丹9枝、红掌3片、黑马9枝、灯台7枝',799);


-- 创建flowerDetailsDlder表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetailsDlder;
CREATE TABLE flowerDetailsDlder (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);

INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010766.jpg_220x240.jpg',
'人气推荐','圆满·粉百合2枝、红玫瑰9枝、红色康乃馨15枝',279);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012462.jpg_220x240.jpg',
'韩式新品','韩式花篮/平淡岁月·苏醒玫瑰13枝，蓝紫色绣球1枝，香槟洋桔梗5枝',296);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012047.jpg_220x240.jpg',
null,'爱的思念·手提式花篮',226);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012440.jpg_220x240.jpg',
'节日定制款','星河璀璨·香槟玫瑰9枝、蓝绣球、向日葵、白色洋桔梗、大叶尤加利',289);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012452.jpg_220x240.jpg',
'全新韩式系列','韩式系列/一路向阳·向日葵3枝、香槟玫瑰9枝、橙色多头玫5枝、黄色腊梅5枝、大叶尤加利5枝',296);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012465.jpg_220x240.jpg',
'韩式母亲节新品','韩式系列/倍加珍惜·粉色康乃馨11枝，粉佳人玫瑰5枝',286);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012334.jpg_220x240.jpg',
null,'幸福满溢·多头百合2枝，卡罗拉玫瑰8枝，红太阳花6枝',240);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012094.jpg_220x240.jpg',
null,'牵挂·红色康乃馨33枝',240);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012332.jpg_220x240.jpg',
'热卖推荐','留住好时光·粉绣球1枝，粉雪山玫瑰6枝',245);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010842.jpg_220x240.jpg',
null,'感恩密码·19枝粉康乃馨',165);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010736.jpg_220x240.jpg',
null,'感激·29枝红康乃馨,2枝多头粉百合',225);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012095.jpg_220x240.jpg',
null,'幸福绽放·粉色康乃馨19枝',165);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012314.jpg_220x240.jpg',
null,'温馨问候·香槟玫瑰9枝、多头白百合2枝、粉色康乃馨13枝',285);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012461.jpg_220x240.jpg',
'韩式系列新品','韩式系列/温柔以待·粉色康乃馨13枝，戴安娜玫瑰5枝、粉色洋桔梗5枝、浅紫紫罗兰5枝、尤加利10枝',249);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010846.jpg_220x240.jpg',
null,'幸福花园·红色康乃馨11枝',128);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010964.jpg_220x240.jpg',
null,'天使之祈·精品康乃馨礼盒,粉色康乃馨19枝，勿忘我适量',198);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010741.jpg_220x240.jpg',
null,'健康长久·红色康乃馨99枝、多头红色康乃馨1扎',433);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012093.jpg_220x240.jpg',
null,'永恒的爱·粉色康乃馨33枝',258);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010845.jpg_220x240.jpg',
'人气推荐','幸福典藏·红色康乃馨16枝，白色相思梅或满天星，栀子叶0.5扎',142);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012189.jpg_220x240.jpg',
'人气推荐','恩情无限·粉色康乃馨11枝，百合2枝',178);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012315.jpg_220x240.jpg',
null,'妈妈我爱你·粉色康乃馨、粉绣球、香槟玫瑰、洋牡丹、黄色香雪兰',429);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012339.jpg_220x240.jpg',
null,'抱抱我/自然风抱桶花·向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝',158);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012411.jpg_220x240.jpg',
null,'十全十美·香槟玫瑰10枝，橙康乃馨10枝，红色洋牡丹10枝',349);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012204.jpg_220x240.jpg',
'精品优选','幸福万年长·红色康乃馨66枝，白边紫色多头康乃馨15枝，栀子叶2扎',346);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012201.jpg_220x240.jpg',
'畅销单品','馨情无限·戴安娜玫瑰11枝，红色康乃馨11支，红色石竹梅4枝',237);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010871.jpg_220x240.jpg',
null,'好想你·红色康乃馨12枝，白色相思梅2枝，栀子叶0.5扎',136);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012096.jpg_220x240.jpg',
null,'妈妈的爱·红色康乃馨16枝,香槟色桔梗3枝',159);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012072.jpg_220x240.jpg',
null,'向日葵之歌·向日葵6枝',189);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9092149.jpg_220x240.jpg',
null,'一缕清香·向日葵3枝，白色洋桔梗0.5扎',198);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012191.jpg_220x240.jpg',
null,'嫣然·粉色康乃馨19枝，粉色扶郎花5枝，紫色小雏菊3枝，银叶菊10枝扎',208);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010904.jpg_220x240.jpg',
null,'青青子衿·白色多头香水百合6枝',280);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012190.jpg_220x240.jpg',
null,'温情祝福·紫红色康乃馨9枝，粉色多头香水百合2枝，紫色桔梗4枝',195);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9020015.jpg_220x240.jpg',
null,'水果花篮-温馨祝福·粉香水百合1枝,粉玫瑰8枝',279);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012313.jpg_220x240.jpg',
null,'暖暖满怀·粉色康乃馨99枝、粉色多头康乃馨1扎',439);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012325.jpg_220x240.jpg',
null,'深情赞美·苏醒玫瑰29枝、红色康乃馨29枝、粉百合3枝、红色多头玫1枝',485);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010875.jpg_220x240.jpg',
null,'因为爱·粉色康乃馨12枝，紫色桔梗3枝，粉色香水百合2枝',245);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010765.jpg_220x240.jpg',
null,'欣欣向荣·红掌、多头粉香水百合、红太阳花、康乃馨等花材',279);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012414.jpg_220x240.jpg',
null,'真的爱你·粉色康乃馨10枝，浅蓝色绣球1枝，浅紫色紫罗兰5枝',288);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9020012.jpg_220x240.jpg',
null,'水果花篮-欣情·百合、红掌、玫瑰、扶郎、康乃馨等花材；进口橙子、红富士苹果、红提、哈密瓜等新鲜水果',348);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012188.jpg_220x240.jpg',
null,'相思红·红色康乃馨11枝，粉色桔梗4枝，红豆5枝',178);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010840.jpg_220x240.jpg',
null,'爱的祝福·2枝多头白香水百合,19枝粉康乃馨',208);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012316.jpg_220x240.jpg',
null,'「熊抱花束」聆听你·红色康乃馨19枝、红玫瑰11枝、多头白百合5枝、粉色绣球',498);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012203.jpg_220x240.jpg',
null,'温馨思念·红色康乃馨19枝，戴安娜粉玫瑰11枝',245);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012007.jpg_220x240.jpg',
null,'你的笑靥·13枝粉康乃馨，9枝红玫瑰',189);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012200.jpg_220x240.jpg',
null,'暖暖的问候·苏醒11枝、白百合2枝、浅粉色康乃馨9枝',259);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012412.jpg_220x240.jpg',
null,'盛情满满·红康乃馨10枝，红玫瑰10枝，红色洋牡丹10枝',369);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012193.jpg_220x240.jpg',
null,'暖暖情意·粉色康乃馨66枝',352);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012337.jpg_220x240.jpg',
null,'静若繁花·紫色绣球1枝，魅影或冷美人玫瑰11枝',288);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9020011.jpg_220x240.jpg',
null,'水果花篮-欣喜·百合,向日葵、玫瑰、扶郎、康乃馨等花材，橙子、苹果、进口红提',298);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012320.jpg_220x240.jpg',
null,'繁星·粉色绣球1枝、蓝色小飞燕1扎、粉色洋桔梗0.3扎、粉雪山15枝',499);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012092.jpg_220x240.jpg',
'母亲最爱','母爱·紫红色康乃馨9枝，粉色多头康乃馨10枝',162);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012415.jpg_220x240.jpg',
null,'爱的绽放·红康乃馨10枝，粉色绣球1枝，红色多头玫瑰3枝，粉多头康乃馨5枝',329);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012214.jpg_220x240.jpg',
null,'常相伴·香槟玫瑰16枝，绿色康乃馨12枝',348);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012324.jpg_220x240.jpg',
null,'柔软·苏醒33枝、浅粉色康乃馨33枝',468);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012321.jpg_220x240.jpg',
null,'爱的陪伴·紫色马蹄莲1扎、紫色紫罗兰1扎、粉色绣球1枝、粉色康乃馨11枝',569);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012430.jpg_220x240.jpg',
'创意手提花款','Better You·苏醒粉玫瑰19枝、粉色桔梗5枝、银叶菊5枝',239);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9020014.jpg_220x240.jpg',
null,'永不褪色的爱·红玫瑰、多头红玫瑰、尤加利叶、红掌、小天使等花材；长城解百纳',379);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9010963.jpg_220x240.jpg',
null,'最思念·精品康乃馨礼盒,红色康乃馨19枝，勿忘我适量',198);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012008.jpg_220x240.jpg',
null,'马蹄莲/漾恬假期·7枝白色马蹄莲，10枝红玫瑰，11枝红康乃馨',238);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012202.jpg_220x240.jpg',
null,'和煦的爱·红色康乃馨33枝，香槟玫瑰9枝',286);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9020017.jpg_220x240.jpg',
null,'苏醒的温柔·苏醒玫瑰、白百合、银叶菊、粉色多头康乃馨；火龙果、香蕉、苹果',339);
INSERT INTO flowerDetailsDlder VALUES (NULL,'homedetailsolder/9012460.jpg_220x240.jpg',
'韩式系列新品','韩式系列/牵挂你·红色康乃馨13枝，粉佳人玫瑰5枝、粉色洋桔梗5枝、粉色紫罗兰3枝、红豆5枝，尤加利10枝',227);


-- 创建flowerDetailssalesGiflfriend表
SET NAMES UTF8;
DROP DATABASE IF EXISTS flowerDetailssalesGiflfriend;
CREATE TABLE flowerDetailssalesGiflfriend (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `homeDetails_img` VARCHAR(255),
   `homeDetails_title` CHAR(200),
   `homeDetails_titles` CHAR(200),
   `homeDetails_price` DECIMAL(8,2)
);

INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010011.jpg_220x240 (1).jpg',
'畅销爆款','一心一意·玫瑰11枝，粉色勿忘我0.3扎',138);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010966.jpg_220x240.jpg',
'年销售冠军','一往情深·精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎',249);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012450.jpg_220x240.jpg',
'全新韩式系列','韩式系列/初心不负· 韩式花束系列花艺师全新打造，卡罗拉玫瑰11枝、白底粉边洋桔梗5枝、大叶尤加利10枝',229);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012009.jpg_220x240.jpg',
'畅销爆款','忘情巴黎·33枝红玫瑰',298);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010731.jpg_220x240.jpg',
null,'牵手一生·红玫瑰19枝',198);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012175.jpg_220x240.jpg',
null,'月光女神·白玫瑰11枝，绿色桔梗5枝，小菊3枝，白色石竹梅4枝',238);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012223.jpg_220x240.jpg',
null,'我只钟情你·香槟玫瑰11枝、白色小雏菊3枝',236);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010855.jpg_220x240.jpg',
null,'用心爱你·99枝：33枝戴安娜＋66枝红玫瑰',589);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012125.jpg_220x240.jpg',
'女神最爱','缪斯女神·红玫瑰16枝，红豆5枝，粉色桔梗1枝，银叶菊2枝',188);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010804.jpg_220x240.jpg',
null,'真爱·红玫瑰9枝，石竹梅4枝，栀子叶0.5扎',136);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012060.jpg_220x240.jpg',
'畅销单品','眷念·戴安娜粉玫瑰33枝，石竹梅20枝',298);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012154.jpg_220x240.jpg',
null,'甜美公主·白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝',369);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012089.jpg_220x240.jpg',
null,'爱在心头·玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝',396);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012112.jpg_220x240.jpg',
null,'温柔如你·戴安娜粉玫瑰12枝，石竹梅7枝',202);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010849.jpg_220x240.jpg',
'畅销爆款','缘份·11枝红玫瑰,2枝多头白香水百合',189);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012039.jpg_220x240.jpg',
null,'如初·19枝白玫瑰，紫色勿忘我5枝',205);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012457.jpg_220x240.jpg',
'全新韩式系列','韩式系列/着迷·紫霞仙子玫瑰11枝、白色洋桔梗10枝、尤加利5枝、浅紫色紫罗兰3枝',289);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012167.jpg_220x240.jpg',
'精选优品','爱的小确幸·戴安娜粉玫瑰21枝，粉色桔梗5枝，石竹梅7枝',309);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012055.jpg_220x240.jpg',
null,'不变的心·戴安娜玫瑰66枝',469);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012161.jpg_220x240.jpg',
null,'爱的诺言·红玫瑰19枝，白色腊梅2枝',229);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010904.jpg_220x240.jpg',
null,'青青子衿·白色多头香水百合6枝',280);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012041.jpg_220x240.jpg',
null,'浪漫缤纷·戴安娜粉玫瑰50枝',428);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010668.jpg_220x240.jpg',
null,'LOVE 99·99枝精品红玫瑰花束',569);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012345.jpg_220x240.jpg',
'热卖单品','甜蜜相伴·粉佳人玫瑰9枝，白色洋桔梗0.2扎',162);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010928.jpg_220x240.jpg',
null,'浪漫满屋·香槟玫瑰11支，浅蓝色绣球1枝',209);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012126.jpg_220x240.jpg',
null,'情有独钟·戴安娜粉玫瑰50枝',428);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010917.jpg_220x240.jpg',
null,'永恒的爱情·红玫瑰99枝',639);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012339.jpg_220x240.jpg',
null,'抱抱我/自然风抱桶花·向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝',158);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012208.jpg_220x240.jpg',
null,'甜蜜纪事·玫瑰共50枝：红玫瑰11枝、香槟玫瑰19枝、戴安娜粉玫瑰20枝',439);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012150.jpg_220x240.jpg',
null,'幸福久久·戴安娜粉玫瑰99枝，栀子叶适量',589);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012025.jpg_220x240.jpg',
null,'梦想缤纷·戴安娜粉玫瑰11枝+香槟玫瑰13+红玫瑰5枝',296);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012113.jpg_220x240.jpg',
null,'浪漫巴黎·红玫瑰12枝，石竹梅10枝',202);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9092112.jpg_220x240.jpg',
null,'99枝玫瑰赠德芙心语巧克力·33枝戴安娜、66枝红玫瑰、1扎满天星',599);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012118.jpg_220x240.jpg',
'新品热销','花仙子·蓝绣球2枝，粉绣球1枝，紫玫瑰9枝',328);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010620.jpg_220x240.jpg',
null,'嫁给我吧· 戴安娜粉玫瑰108枝',668);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012221.jpg_220x240.jpg',
null,'浪漫告白·卡罗拉红玫瑰11枝、白色小雏菊4枝',245);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012437.jpg_220x240.jpg',
null,'粉雪佳人·戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝',219);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012163.jpg_220x240.jpg',
null,'甜蜜物语·黛安娜粉玫瑰33枝，多头粉色香水百合3枝，粉色勿忘我0.3扎',389);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012153.jpg_220x240.jpg',
null,'浪漫絮语·（戴安娜粉玫瑰或者玛利亚粉玫瑰）32枝，白玫瑰6枝，香槟玫瑰6枝，红玫瑰6枝',439);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012165.jpg_220x240.jpg',
null,'爱在巴黎·精品玫瑰礼盒:红玫瑰39枝，搭配白色腊梅、尤加利、银叶菊少量',388);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012088.jpg_220x240.jpg',
null,'白雪公主·白玫瑰50枝',429);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012064.jpg_220x240.jpg',
null,'伊人如梦·精品玫瑰礼盒:粉佳人12枝 苏醒12枝 白玫5枝',378);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9092117.jpg_220x240.jpg',
null,'忘情巴黎＋德芙心语巧克力98克特价组合套装·33枝红玫瑰',339);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012455.jpg_220x240.jpg',
'全新韩式系列','韩式系列/亲爱的你·粉佳人玫瑰16枝、白和粉色洋桔梗各5枝、尤加利10枝、浅紫色小菊3枝、深粉色绣球1枝',368);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012336.jpg_220x240.jpg',
null,'炙热（复古网纱款）／33枝·红玫瑰33枝',339);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012149.jpg_220x240.jpg',
null,'99的爱·香槟玫瑰99枝，尤加利15枝',599);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012288.jpg_220x240.jpg',
null,'心连心·红玫瑰19枝，龙柳心型小架构',239);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012246.jpg_220x240.jpg',
null,'邻家女孩·红玫瑰33枝、红色小雏菊',356);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012155.jpg_220x240.jpg',
null,'甜心·粉佳人粉玫瑰15枝，香槟玫瑰8枝，红玫瑰6枝',298);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012300.jpg_220x240.jpg',
null,'赤道花园· 红色玫瑰（红拂）19枝，尤加利叶',599);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9010609.jpg_220x240.jpg',
null,'想你365天·红玫瑰365枝',2399);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012273.jpg_220x240.jpg',
null,'爱你如初·雪山白玫瑰66枝',469);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012063.jpg_220x240.jpg',
null,'紫霞仙子·紫玫瑰36枝，石竹梅20枝',389);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012434.jpg_220x240.jpg',
null,'蜜恋·戴安娜粉玫瑰11枝、浅蓝色绣球1枝、浅紫洋桔梗5枝',226);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012275.jpg_220x240.jpg',
null,'伴你久久·冷美人紫玫瑰99枝',599);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012335.jpg_220x240.jpg',
null,'炙热（复古网纱款）／99枝·红玫瑰99枝',589);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012289.jpg_220x240.jpg',
null,'邂逅浪漫·红玫瑰29枝+红色蔷薇10枝，灯台9枝，尤加利叶',469);
INSERT INTO flowerDetailssalesGiflfriend VALUES (NULL,'sales/firlfried/9012274.jpg_220x240.jpg',
null,'嫁给我吧/红玫瑰·红玫瑰108枝',658);
