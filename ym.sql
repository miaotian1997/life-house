SET NAMES UTF8;
DROP DATABASE IF EXISTS ym;
CREATE DATABASE ym CHARSET=UTF8;
USE ym;
#用户信息
CREATE TABLE ym_user(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  uname VARCHAR(25),
  upwd VARCHAR(32)
);

INSERT INTO ym_user VALUES(null,1,'mm',md5('123'));
INSERT INTO ym_user VALUES(null,2,'tt',md5('123'));
INSERT INTO ym_user VALUES(null,3,'hh',md5('123'));
INSERT INTO ym_user VALUES(null,4,'tom',md5('123'));
INSERT INTO ym_user VALUES(null,5,'jerry',md5('123'));

#首页图片
CREATE TABLE ym_tp(
cid INT PRIMARY KEY AUTO_INCREMENT,
img VARCHAR(128) DEFAULT NULL,
href VARCHAR(128) DEFAULT NULL
);
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/1.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/2.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/3.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/4.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/5.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/6.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/7.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/8.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/9.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/10.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/11.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/12.jpg','product_details.html?lid=28');
INSERT INTO ym_tp VALUES(null, 'http://127.0.0.1:3000/img/index/13.jpg','product_details.html?lid=28');

#商品列表
CREATE TABLE  ym_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(52), #商品图片
  title VARCHAR(100), #描述
  price VARCHAR(32),#价格
  comment VARCHAR(1000),#评价
  good VARCHAR(100) #好评度
);
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/1.jpg','ins网格照片墙少女心宿舍装饰相片墙配件 ins墙面饰品装饰挂件配件 95x65cm/黑色',' 29.90','2001条评价','好评99%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/2.jpg','客厅卧室餐桌装饰品绣球花艺套装 透明玻璃花瓶仿真花束绢花干花假花装饰品摆件 5白5浅绿(绣球款)',' 99.90','5156条评价','好评98%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/3.jpg','First Day蝴蝶兰 仿真花套装假花客厅摆放花艺装饰花 小号紫色',' 62.90','66条评价','好评98%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/4.jpg','欧客厅摆件创意可爱家装饰品电视柜工艺装饰品玄关树脂摆件酒柜装饰婚礼摆件 大号一对',' 75.91','3103条评价','好评99%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/5.jpg','干花绣球花装饰花花艺假花仿真花艺摆件装饰品田园整体花艺 小号',' 79.90','447条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/6.jpg','美式简约装饰品树脂工艺品创意萌桌面摆设 彼得潘小马驹',' 39.90','438条评价','好评99%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/7.jpg','书架装饰摆件仿真书假书装饰书摆设单本出售(随机发货）',' 5.90','962条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/8.jpg','北欧家居装饰花绢花餐桌客厅茶几摆设仿真花套装 小王子牡丹花艺 小号',' 99.90','1141条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/9.jpg','ins北欧小清新绢花假花仿真花客厅花瓶装饰品摆件餐桌花艺套装设 随心整体花艺/浆果大号',' 89.90','67条评价','好评95%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/10.jpg',' 创意精灵仿滩羊毛玩偶摆件送女友礼物礼品 家居客厅卧室装饰品 绿色大号',' 49.90','160条评价','好评100%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/11.jpg','装饰摆件生日礼物创意工艺家居摆设装饰 树脂动物摆件萌兔子 抱蛋兔一对',' 149.90','1203条评价','好评98%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/12.jpg','单支仿真花绢花单杆绿叶插花家居装装饰花多色 短枝绣球花 大号紫色',' 19.90','985条评价','好评96%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/13.jpg','北欧创意客厅桌面动物陶瓷工艺品摆件 圣凯瑟琳梅花鹿 小号',' 49.90','192条评价','好评98%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/14.jpg','小王子派对动物书立摆件 原创设计树脂装饰书立架书靠 小松鼠',' 69.90','380条评价','好评100%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/15.jpg','园风树脂小兔子摆设套装 创意客厅卧室办公桌家居装饰品摆件萌宠桌面礼物圣诞节礼物送儿童女生 站立女兔+坐地男兔',' 39.90','7325条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/16.jpg','意田园风可爱粉嫩陶瓷小兔子摆件装饰客厅卧室儿童房家居装饰品柜子饰品节日礼物礼品 小号',' 39.90','449条评价','好评99%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/17.jpg','北欧风创意墙上挂饰ins家居麻绳饰品餐厅墙壁墙面装饰壁挂挂件 三件套',' 159.90','150条评价','好评100%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/18.jpg',' 仿真花假花装饰花绢花客厅桌面装饰花跳舞兰 黄色',' 8.90','665条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/19.jpg','装饰小饰品工艺品汽车装饰摆件闺蜜生日结婚礼物 安娜雪人 娃娃雪人四件套',' 78.90','735条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/20.jpg','小木桩底座摆件树桩原木头杉树摄影拍照手工DIY装饰道具',' 9.90','263条评价','好评97%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/21.jpg','仿真花假花装饰绢花客厅桌面保湿玫瑰花艺把束15支 花朵香槟色',' 89.90','678条评价','好评98%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/22.jpg','多肉花盆插花花器卡通多肉植物小花盆迷你创意个性室内绿植小花盆 睡梦女孩',' 29.90','93条评价','好评100%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/23.jpg','ins北欧干花清新绢花假花仿真花客厅花瓶装饰品套装餐桌花艺摆件 万人迷/浅紫兰(铁线莲)',' 12.90','17条评价','好评100%');
INSERT INTO ym_product VALUES(null, 'http://127.0.0.1:3000/img/products/24.jpg','ins北欧干花清新绢花假花仿真花客厅花瓶装饰品套装餐桌花艺摆件 万人迷/浅紫兰(铁线莲)',' 59.90','117条评价','好评98%');

#商品详情轮播
CREATE TABLE ym_lunbo(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT(3),     #获取对应的lid值
  pic VARCHAR(1000) #图片1
);
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/5.png');
INSERT INTO ym_lunbo VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/lunbo/6.png');
INSERT INTO ym_lunbo VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/lunbo/5.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/5.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/6.png');
INSERT INTO ym_lunbo VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/lunbo/7.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/5.png');
INSERT INTO ym_lunbo VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/lunbo/6.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/5.png');
INSERT INTO ym_lunbo VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/lunbo/6.png');
INSERT INTO ym_lunbo VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/lunbo/1.png');
INSERT INTO ym_lunbo VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/lunbo/2.png');
INSERT INTO ym_lunbo VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/lunbo/3.png');
INSERT INTO ym_lunbo VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/lunbo/4.png');
INSERT INTO ym_lunbo VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/lunbo/5.png');

#详细页列表信息
CREATE TABLE ym_details(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),#标题
  price VARCHAR(32),#价格
  pic VARCHAR(1000) #图片1
);
INSERT INTO ym_details VALUES(null,"ins网格照片墙少女心宿舍装饰相片墙配件 ins墙面饰品装饰挂件配件 65x45cm/白色","19.90",'http://127.0.0.1:3000/img/product_details/1/lunbo/1.png');
INSERT INTO ym_details VALUES(null,"客厅卧室餐桌装饰品绣球花艺套装 透明玻璃花瓶仿真花束绢花干花假花装饰品摆件 5白5浅绿(绣球款)","99.90",'http://127.0.0.1:3000/img/product_details/2/lunbo/1.png');
INSERT INTO ym_details VALUES(null,"米子家居 北欧客厅摆件创意可爱家装饰品电视柜工艺装饰品玄关树脂摆件酒柜装饰婚礼摆件 大号一对","79.90",'http://127.0.0.1:3000/img/product_details/3/lunbo/1.png');
INSERT INTO ym_details VALUES(null,"仿真花假花装饰绢花客厅桌面保湿玫瑰花艺把束15支 花朵款浅粉色","89.90",'http://127.0.0.1:3000/img/product_details/4/lunbo/1.png');
INSERT INTO ym_details VALUES(null," 创意精灵仿滩羊毛玩偶摆件送女友礼物礼品 家居客厅卧室装饰品 绿色大号","49.90",'http://127.0.0.1:3000/img/product_details/5/lunbo/1.png');
INSERT INTO ym_details VALUES(null,"美式简约装饰品树脂工艺品创意萌桌面摆设 彼得潘小马驹","39.90",'http://127.0.0.1:3000/img/product_details/6/lunbo/1.png');

#详情图片
CREATE TABLE ym_pic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT(3),     #获取对应的lid值
  pic VARCHAR(1000) #图片1
);
#1
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/2.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/3.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/4.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/5.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/6.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/7.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/8.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/9.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/10.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/11.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/12.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/13.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/14.jpg');
INSERT INTO ym_pic VALUES(null,1,'http://127.0.0.1:3000/img/product_details/1/details/15.jpg');
#2
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/1.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/2.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/3.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/4.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/5.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/6.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/7.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/8.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/9.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details10.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/11.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/12.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/13.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/14.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/15.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/16.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/17.jpg');
INSERT INTO ym_pic VALUES(null,2,'http://127.0.0.1:3000/img/product_details/2/details/18.jpg');
#3
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/1.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/2.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/3.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/4.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/5.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/6.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/7.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/8.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/9.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/10.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/11.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/12.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/13.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/14.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/15.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/16.jpg');
INSERT INTO ym_pic VALUES(null,3,'http://127.0.0.1:3000/img/product_details/3/details/17.jpg');
#4
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/1.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/2.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/3.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/4.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/5.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/6.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/7.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/8.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/9.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/10.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/11.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/12.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/13.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/14.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/15.jpg');
INSERT INTO ym_pic VALUES(null,4,'http://127.0.0.1:3000/img/product_details/4/details/16.jpg');
#5
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/1.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/2.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/3.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/4.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/5.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/6.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/7.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/8.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/9.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/10.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/11.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/12.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/13.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/14.jpg');
INSERT INTO ym_pic VALUES(null,5,'http://127.0.0.1:3000/img/product_details/5/details/15.jpg');
#6
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/1.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/1.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/2.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/3.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/4.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/5.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/6.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/7.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/8.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/9.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/10.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/11.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/12.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/13.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/14.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/15.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/16.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/17.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/18.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/19.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/20.jpg');
INSERT INTO ym_pic VALUES(null,6,'http://127.0.0.1:3000/img/product_details/6/details/21.jpg');

#创建购物车
#货币误差  小数1-0.99=0.10000000001
#price     INT要求精度不允许
CREATE TABLE ym_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,  #当前用户的id
  pid INT,  #对应商品的id
  price DECIMAL(10,2),  #对应商品的价格
  pname VARCHAR(255),   #对应的商品标题
  count INT(5),    #数量值
  pic VARCHAR(1000)  #商品图片
);
INSERT INTO ym_cart VALUES(null,1,1,"29.90",'ins网格照片墙少女心宿舍装饰相片墙配件 ins墙面饰品装饰挂件配件 95x65cm/黑色',2,'http://127.0.0.1:3000/img/products/1.jpg');
INSERT INTO ym_cart VALUES(null,1,4,"75.91",'欧客厅摆件创意可爱家装饰品电视柜工艺装饰品玄关树脂摆件酒柜装饰婚礼摆件 大号一对',1,'http://127.0.0.1:3000/img/products/4.jpg');
INSERT INTO ym_cart VALUES(null,1,6,"39.90",'美式简约装饰品树脂工艺品创意萌桌面摆设 彼得潘小马驹',3,'http://127.0.0.1:3000/img/products/6.jpg');

#订单发送地址 
CREATE TABLE ym_addr(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(10),  #收货人姓名
  tle VARCHAR(15),   #收货人手机号
  place VARCHAR(65)  #收货人地址
); 
INSERT INTO ym_addr VALUES(null,'花花','15898749547','江苏省苏州市张家港市金港镇团结15组20号');
INSERT INTO ym_addr VALUES(null,'小锅锅','15895649547','广东省东莞市虎门镇太宝路电商产业园5305室');