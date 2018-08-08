-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: shenghe
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ld_admin_menu`
--

DROP TABLE IF EXISTS `ld_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_admin_menu`
--

LOCK TABLES `ld_admin_menu` WRITE;
/*!40000 ALTER TABLE `ld_admin_menu` DISABLE KEYS */;
INSERT INTO `ld_admin_menu` VALUES (1,0,0,1,20,'admin','Plugin','default','','插件中心','cloud','插件中心'),(2,1,1,1,10000,'admin','Hook','index','','钩子管理','','钩子管理'),(3,2,1,0,10000,'admin','Hook','plugins','','钩子插件管理','','钩子插件管理'),(4,2,2,0,10000,'admin','Hook','pluginListOrder','','钩子插件排序','','钩子插件排序'),(5,2,1,0,10000,'admin','Hook','sync','','同步钩子','','同步钩子'),(6,0,0,1,0,'admin','Setting','default','','设置','cogs','系统设置入口'),(7,6,1,1,50,'admin','Link','index','','友情链接','','友情链接管理'),(8,7,1,0,10000,'admin','Link','add','','添加友情链接','','添加友情链接'),(9,7,2,0,10000,'admin','Link','addPost','','添加友情链接提交保存','','添加友情链接提交保存'),(10,7,1,0,10000,'admin','Link','edit','','编辑友情链接','','编辑友情链接'),(11,7,2,0,10000,'admin','Link','editPost','','编辑友情链接提交保存','','编辑友情链接提交保存'),(12,7,2,0,10000,'admin','Link','delete','','删除友情链接','','删除友情链接'),(13,7,2,0,10000,'admin','Link','listOrder','','友情链接排序','','友情链接排序'),(14,7,2,0,10000,'admin','Link','toggle','','友情链接显示隐藏','','友情链接显示隐藏'),(15,6,1,1,10,'admin','Mailer','index','','邮箱配置','','邮箱配置'),(16,15,2,0,10000,'admin','Mailer','indexPost','','邮箱配置提交保存','','邮箱配置提交保存'),(17,15,1,0,10000,'admin','Mailer','template','','邮件模板','','邮件模板'),(18,15,2,0,10000,'admin','Mailer','templatePost','','邮件模板提交','','邮件模板提交'),(19,15,1,0,10000,'admin','Mailer','test','','邮件发送测试','','邮件发送测试'),(20,6,1,0,10000,'admin','Menu','index','','后台菜单','','后台菜单管理'),(21,20,1,0,10000,'admin','Menu','lists','','所有菜单','','后台所有菜单列表'),(22,20,1,0,10000,'admin','Menu','add','','后台菜单添加','','后台菜单添加'),(23,20,2,0,10000,'admin','Menu','addPost','','后台菜单添加提交保存','','后台菜单添加提交保存'),(24,20,1,0,10000,'admin','Menu','edit','','后台菜单编辑','','后台菜单编辑'),(25,20,2,0,10000,'admin','Menu','editPost','','后台菜单编辑提交保存','','后台菜单编辑提交保存'),(26,20,2,0,10000,'admin','Menu','delete','','后台菜单删除','','后台菜单删除'),(27,20,2,0,10000,'admin','Menu','listOrder','','后台菜单排序','','后台菜单排序'),(28,20,1,0,10000,'admin','Menu','getActions','','导入新后台菜单','','导入新后台菜单'),(29,6,1,1,30,'admin','Nav','index','','导航管理','','导航管理'),(30,29,1,0,10000,'admin','Nav','add','','添加导航','','添加导航'),(31,29,2,0,10000,'admin','Nav','addPost','','添加导航提交保存','','添加导航提交保存'),(32,29,1,0,10000,'admin','Nav','edit','','编辑导航','','编辑导航'),(33,29,2,0,10000,'admin','Nav','editPost','','编辑导航提交保存','','编辑导航提交保存'),(34,29,2,0,10000,'admin','Nav','delete','','删除导航','','删除导航'),(35,29,1,0,10000,'admin','NavMenu','index','','导航菜单','','导航菜单'),(36,35,1,0,10000,'admin','NavMenu','add','','添加导航菜单','','添加导航菜单'),(37,35,2,0,10000,'admin','NavMenu','addPost','','添加导航菜单提交保存','','添加导航菜单提交保存'),(38,35,1,0,10000,'admin','NavMenu','edit','','编辑导航菜单','','编辑导航菜单'),(39,35,2,0,10000,'admin','NavMenu','editPost','','编辑导航菜单提交保存','','编辑导航菜单提交保存'),(40,35,2,0,10000,'admin','NavMenu','delete','','删除导航菜单','','删除导航菜单'),(41,35,2,0,10000,'admin','NavMenu','listOrder','','导航菜单排序','','导航菜单排序'),(42,1,1,1,10000,'admin','Plugin','index','','插件列表','','插件列表'),(43,42,2,0,10000,'admin','Plugin','toggle','','插件启用禁用','','插件启用禁用'),(44,42,1,0,10000,'admin','Plugin','setting','','插件设置','','插件设置'),(45,42,2,0,10000,'admin','Plugin','settingPost','','插件设置提交','','插件设置提交'),(46,42,2,0,10000,'admin','Plugin','install','','插件安装','','插件安装'),(47,42,2,0,10000,'admin','Plugin','update','','插件更新','','插件更新'),(48,42,2,0,10000,'admin','Plugin','uninstall','','卸载插件','','卸载插件'),(49,109,0,1,10000,'admin','User','default','','管理组','','管理组'),(50,49,1,1,10000,'admin','Rbac','index','','角色管理','','角色管理'),(51,50,1,0,10000,'admin','Rbac','roleAdd','','添加角色','','添加角色'),(52,50,2,0,10000,'admin','Rbac','roleAddPost','','添加角色提交','','添加角色提交'),(53,50,1,0,10000,'admin','Rbac','roleEdit','','编辑角色','','编辑角色'),(54,50,2,0,10000,'admin','Rbac','roleEditPost','','编辑角色提交','','编辑角色提交'),(55,50,2,0,10000,'admin','Rbac','roleDelete','','删除角色','','删除角色'),(56,50,1,0,10000,'admin','Rbac','authorize','','设置角色权限','','设置角色权限'),(57,50,2,0,10000,'admin','Rbac','authorizePost','','角色授权提交','','角色授权提交'),(58,0,1,0,10000,'admin','RecycleBin','index','','回收站','','回收站'),(59,58,2,0,10000,'admin','RecycleBin','restore','','回收站还原','','回收站还原'),(60,58,2,0,10000,'admin','RecycleBin','delete','','回收站彻底删除','','回收站彻底删除'),(61,6,1,1,10000,'admin','Route','index','','URL美化','','URL规则管理'),(62,61,1,0,10000,'admin','Route','add','','添加路由规则','','添加路由规则'),(63,61,2,0,10000,'admin','Route','addPost','','添加路由规则提交','','添加路由规则提交'),(64,61,1,0,10000,'admin','Route','edit','','路由规则编辑','','路由规则编辑'),(65,61,2,0,10000,'admin','Route','editPost','','路由规则编辑提交','','路由规则编辑提交'),(66,61,2,0,10000,'admin','Route','delete','','路由规则删除','','路由规则删除'),(67,61,2,0,10000,'admin','Route','ban','','路由规则禁用','','路由规则禁用'),(68,61,2,0,10000,'admin','Route','open','','路由规则启用','','路由规则启用'),(69,61,2,0,10000,'admin','Route','listOrder','','路由规则排序','','路由规则排序'),(70,61,1,0,10000,'admin','Route','select','','选择URL','','选择URL'),(71,6,1,1,0,'admin','Setting','site','','网站信息','','网站信息'),(72,71,2,0,10000,'admin','Setting','sitePost','','网站信息设置提交','','网站信息设置提交'),(73,6,1,0,10000,'admin','Setting','password','','密码修改','','密码修改'),(74,73,2,0,10000,'admin','Setting','passwordPost','','密码修改提交','','密码修改提交'),(75,6,1,1,10000,'admin','Setting','upload','','上传设置','','上传设置'),(76,75,2,0,10000,'admin','Setting','uploadPost','','上传设置提交','','上传设置提交'),(77,6,1,0,10000,'admin','Setting','clearCache','','清除缓存','','清除缓存'),(78,6,1,1,40,'admin','Slide','index','','幻灯片管理','','幻灯片管理'),(79,78,1,0,10000,'admin','Slide','add','','添加幻灯片','','添加幻灯片'),(80,78,2,0,10000,'admin','Slide','addPost','','添加幻灯片提交','','添加幻灯片提交'),(81,78,1,0,10000,'admin','Slide','edit','','编辑幻灯片','','编辑幻灯片'),(82,78,2,0,10000,'admin','Slide','editPost','','编辑幻灯片提交','','编辑幻灯片提交'),(83,78,2,0,10000,'admin','Slide','delete','','删除幻灯片','','删除幻灯片'),(84,78,1,0,10000,'admin','SlideItem','index','','幻灯片页面列表','','幻灯片页面列表'),(85,84,1,0,10000,'admin','SlideItem','add','','幻灯片页面添加','','幻灯片页面添加'),(86,84,2,0,10000,'admin','SlideItem','addPost','','幻灯片页面添加提交','','幻灯片页面添加提交'),(87,84,1,0,10000,'admin','SlideItem','edit','','幻灯片页面编辑','','幻灯片页面编辑'),(88,84,2,0,10000,'admin','SlideItem','editPost','','幻灯片页面编辑提交','','幻灯片页面编辑提交'),(89,84,2,0,10000,'admin','SlideItem','delete','','幻灯片页面删除','','幻灯片页面删除'),(90,84,2,0,10000,'admin','SlideItem','ban','','幻灯片页面隐藏','','幻灯片页面隐藏'),(91,84,2,0,10000,'admin','SlideItem','cancelBan','','幻灯片页面显示','','幻灯片页面显示'),(92,84,2,0,10000,'admin','SlideItem','listOrder','','幻灯片页面排序','','幻灯片页面排序'),(93,6,1,1,10000,'admin','Storage','index','','文件存储','','文件存储'),(94,93,2,0,10000,'admin','Storage','settingPost','','文件存储设置提交','','文件存储设置提交'),(95,6,1,1,20,'admin','Theme','index','','模板管理','','模板管理'),(96,95,1,0,10000,'admin','Theme','install','','安装模板','','安装模板'),(97,95,2,0,10000,'admin','Theme','uninstall','','卸载模板','','卸载模板'),(98,95,2,0,10000,'admin','Theme','installTheme','','模板安装','','模板安装'),(99,95,2,0,10000,'admin','Theme','update','','模板更新','','模板更新'),(100,95,2,0,10000,'admin','Theme','active','','启用模板','','启用模板'),(101,95,1,0,10000,'admin','Theme','files','','模板文件列表','','启用模板'),(102,95,1,0,10000,'admin','Theme','fileSetting','','模板文件设置','','模板文件设置'),(103,95,1,0,10000,'admin','Theme','fileArrayData','','模板文件数组数据列表','','模板文件数组数据列表'),(104,95,2,0,10000,'admin','Theme','fileArrayDataEdit','','模板文件数组数据添加编辑','','模板文件数组数据添加编辑'),(105,95,2,0,10000,'admin','Theme','fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存','','模板文件数组数据添加编辑提交保存'),(106,95,2,0,10000,'admin','Theme','fileArrayDataDelete','','模板文件数组数据删除','','模板文件数组数据删除'),(107,95,2,0,10000,'admin','Theme','settingPost','','模板文件编辑提交保存','','模板文件编辑提交保存'),(108,95,1,0,10000,'admin','Theme','dataSource','','模板文件设置数据源','','模板文件设置数据源'),(109,0,0,1,10,'user','AdminIndex','default','','用户管理','group','用户管理'),(110,49,1,1,10000,'admin','User','index','','管理员','','管理员管理'),(111,110,1,0,10000,'admin','User','add','','管理员添加','','管理员添加'),(112,110,2,0,10000,'admin','User','addPost','','管理员添加提交','','管理员添加提交'),(113,110,1,0,10000,'admin','User','edit','','管理员编辑','','管理员编辑'),(114,110,2,0,10000,'admin','User','editPost','','管理员编辑提交','','管理员编辑提交'),(115,110,1,0,10000,'admin','User','userInfo','','个人信息','','管理员个人信息修改'),(116,110,2,0,10000,'admin','User','userInfoPost','','管理员个人信息修改提交','','管理员个人信息修改提交'),(117,110,2,0,10000,'admin','User','delete','','管理员删除','','管理员删除'),(118,110,2,0,10000,'admin','User','ban','','停用管理员','','停用管理员'),(119,110,2,0,10000,'admin','User','cancelBan','','启用管理员','','启用管理员'),(120,0,0,1,30,'portal','AdminIndex','default','','门户管理','th','门户管理'),(121,120,1,1,10000,'portal','AdminArticle','index','','文章管理','','文章列表'),(122,121,1,0,10000,'portal','AdminArticle','add','','添加文章','','添加文章'),(123,121,2,0,10000,'portal','AdminArticle','addPost','','添加文章提交','','添加文章提交'),(124,121,1,0,10000,'portal','AdminArticle','edit','','编辑文章','','编辑文章'),(125,121,2,0,10000,'portal','AdminArticle','editPost','','编辑文章提交','','编辑文章提交'),(126,121,2,0,10000,'portal','AdminArticle','delete','','文章删除','','文章删除'),(127,121,2,0,10000,'portal','AdminArticle','publish','','文章发布','','文章发布'),(128,121,2,0,10000,'portal','AdminArticle','top','','文章置顶','','文章置顶'),(129,121,2,0,10000,'portal','AdminArticle','recommend','','文章推荐','','文章推荐'),(130,121,2,0,10000,'portal','AdminArticle','listOrder','','文章排序','','文章排序'),(131,120,1,1,10000,'portal','AdminCategory','index','','分类管理','','文章分类列表'),(132,131,1,0,10000,'portal','AdminCategory','add','','添加文章分类','','添加文章分类'),(133,131,2,0,10000,'portal','AdminCategory','addPost','','添加文章分类提交','','添加文章分类提交'),(134,131,1,0,10000,'portal','AdminCategory','edit','','编辑文章分类','','编辑文章分类'),(135,131,2,0,10000,'portal','AdminCategory','editPost','','编辑文章分类提交','','编辑文章分类提交'),(136,131,1,0,10000,'portal','AdminCategory','select','','文章分类选择对话框','','文章分类选择对话框'),(137,131,2,0,10000,'portal','AdminCategory','listOrder','','文章分类排序','','文章分类排序'),(138,131,2,0,10000,'portal','AdminCategory','delete','','删除文章分类','','删除文章分类'),(139,120,1,1,10000,'portal','AdminPage','index','','页面管理','','页面管理'),(140,139,1,0,10000,'portal','AdminPage','add','','添加页面','','添加页面'),(141,139,2,0,10000,'portal','AdminPage','addPost','','添加页面提交','','添加页面提交'),(142,139,1,0,10000,'portal','AdminPage','edit','','编辑页面','','编辑页面'),(143,139,2,0,10000,'portal','AdminPage','editPost','','编辑页面提交','','编辑页面提交'),(144,139,2,0,10000,'portal','AdminPage','delete','','删除页面','','删除页面'),(145,120,1,1,10000,'portal','AdminTag','index','','文章标签','','文章标签'),(146,145,1,0,10000,'portal','AdminTag','add','','添加文章标签','','添加文章标签'),(147,145,2,0,10000,'portal','AdminTag','addPost','','添加文章标签提交','','添加文章标签提交'),(148,145,2,0,10000,'portal','AdminTag','upStatus','','更新标签状态','','更新标签状态'),(149,145,2,0,10000,'portal','AdminTag','delete','','删除文章标签','','删除文章标签'),(150,0,1,0,10000,'user','AdminAsset','index','','资源管理','file','资源管理列表'),(151,150,2,0,10000,'user','AdminAsset','delete','','删除文件','','删除文件'),(152,109,0,0,10000,'user','AdminIndex','default1','','用户组','','用户组'),(153,152,1,1,10000,'user','AdminIndex','index','','本站用户','','本站用户'),(154,153,2,0,10000,'user','AdminIndex','ban','','本站用户拉黑','','本站用户拉黑'),(155,153,2,0,10000,'user','AdminIndex','cancelBan','','本站用户启用','','本站用户启用'),(156,152,1,1,10000,'user','AdminOauth','index','','第三方用户','','第三方用户'),(157,156,2,0,10000,'user','AdminOauth','delete','','删除第三方用户绑定','','删除第三方用户绑定'),(158,6,1,1,10000,'user','AdminUserAction','index','','用户操作管理','','用户操作管理'),(159,158,1,0,10000,'user','AdminUserAction','edit','','编辑用户操作','','编辑用户操作'),(160,158,2,0,10000,'user','AdminUserAction','editPost','','编辑用户操作提交','','编辑用户操作提交'),(161,158,1,0,10000,'user','AdminUserAction','sync','','同步用户操作','','同步用户操作'),(162,120,1,1,10000,'portal','AdminMessage','index','','留言管理','','');
/*!40000 ALTER TABLE `ld_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_asset`
--

DROP TABLE IF EXISTS `ld_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_asset`
--

LOCK TABLES `ld_asset` WRITE;
/*!40000 ALTER TABLE `ld_asset` DISABLE KEYS */;
INSERT INTO `ld_asset` VALUES (1,1,761182,1533527740,1,0,'c268a582c4dbb0d9b1531fe6c6a2d8f6653289aadb53252efa793254b96888d2','banner.png','admin/20180806/d30e42e0c71593b758e966a4efdb8f59.png','c268a582c4dbb0d9b1531fe6c6a2d8f6','ec550a54eae3009a19e232affdb7ea44a6147164','png',NULL),(2,1,31877,1533528863,1,0,'4cff5883f160bbc9516e0c6ae138c59db60dbb1f70af493d7c7f8853f6b222cd','108.png','portal/20180806/20f6921d6beb8a4db7971b3f3552186a.png','4cff5883f160bbc9516e0c6ae138c59d','0a4358f2a7aced1bda7d7e5ee649ca6c724a44b2','png',NULL),(3,1,27386,1533528870,1,0,'53f1a91b022d3a285cbae977f66bb464029b3f7a288331ad41ccb172575fbf92','80.jpg','portal/20180806/cab575353c5ff8db241a0ef994d56ad7.jpg','53f1a91b022d3a285cbae977f66bb464','9fb15f187b911396862e201c1a8b362132552354','jpg',NULL),(4,1,156041,1533529361,1,0,'57b4f7dfda88fbda37db0f498b18e6899edd3067ce1c899fe35f3cd29fe7807f','in1_1.png','portal/20180806/108503f256ef7a2b30e781d39764501e.png','57b4f7dfda88fbda37db0f498b18e689','445e8e3cb2b9626a7209dd266fa2f672e11d301c','png',NULL),(5,1,75501,1533536325,1,0,'1f6e413222cc042b74ac30ef6cf6419bd077dd61a5d9c270e947421a701c58f7','cnxh_1.png','portal/20180806/5ba4c24f8689a17999b3dedd075e6df4.png','1f6e413222cc042b74ac30ef6cf6419b','95d570efdd3c4fc9d0f718a5a5b1ec079fe8e5e3','png',NULL),(6,1,484191,1533536434,1,0,'817d8b046efd220e7d995e5b48437c34ec65a61bac2c72a3c7130e6a6b589e74','banner3.png','portal/20180806/992485d35468b41e31eb4c8f67f97ec1.png','817d8b046efd220e7d995e5b48437c34','5af37b2570e27bc1cea90c2137fcfddfb2b0884f','png',NULL),(7,1,356363,1533538150,1,0,'95bb1213d731bc55cf4e05efad3b1d6c352e3047084f18604973a9553c1fba63','in2_1.png','portal/20180806/dd4745396f2b1fdf52bd7e53b564e1b4.png','95bb1213d731bc55cf4e05efad3b1d6c','040d6435685518372b311bb6d8c1b578aadbd0e3','png',NULL),(8,1,2724295,1533542280,1,0,'8b6ada2b50584f81aa8780bd3ec5cf8ad56ff95238c3e4807b7137469b58af9c','banner2.png','portal/20180806/9f761718230c6d6ad604d02b8f35d6dd.png','8b6ada2b50584f81aa8780bd3ec5cf8a','d387269ca86a92ee41c41d1c4bf32b93d57a2d4f','png',NULL),(9,1,171245,1533542446,1,0,'a0ee9eaf34565e51fa6d514ee9abd880c290b59e49ed4ff5a1f5e0861e52b735','case1.png','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','a0ee9eaf34565e51fa6d514ee9abd880','c7619adc3a25f6262b03f29c910bf9565a55abe8','png',NULL),(10,1,844132,1533542700,1,0,'13c428b70314d486c6c4e70c2461bb38cc317b1a3f539f57f6f85adec4b8e5dc','case2.png','portal/20180806/8ece1120770de83d5c4b1e2cb5d8a42f.png','13c428b70314d486c6c4e70c2461bb38','603f02df34d44e4dde7e0bbbccac5331665de86c','png',NULL),(11,1,13282,1533543771,1,0,'ccd276e5f732cea11e3cf5bbe7bba63ba04ca9057046c49cbd90feab988ba0d5','case2_1.png','admin/20180806/a8fa82295b7d647768ca86d9f0626312.png','ccd276e5f732cea11e3cf5bbe7bba63b','d82d23e98c09a0e4b492682165f3e51f342380ee','png',NULL),(12,1,12469,1533543803,1,0,'440f8b85d59e8b80959e1040605f5f1a612641e21e0a706f63ff8f1cbad3a69a','case2_2.png','admin/20180806/0fcdfe7320bb954762a3a1ba3b16a2d5.png','440f8b85d59e8b80959e1040605f5f1a','584f372ab5a69d871bfe0e0608db208d6f213b79','png',NULL),(13,1,23258,1533543829,1,0,'9de46b173d364f2ff339583f253a8d41f793f28a6865376fc3b30eb7794f17e5','case2_3.png','admin/20180806/b28d5f8731c750ef61332db0d6590af1.png','9de46b173d364f2ff339583f253a8d41','bb5967125918c11c95fb3ef3d7f4de804d81d311','png',NULL),(14,1,687653,1533545048,1,0,'950bc5fe963535ec4ebcc32040913fada17c6106286a0ef1130dd9f4e4220bd6','js1_1.png','portal/20180806/f805b75007fa1d4b096b88e923c2ad93.png','950bc5fe963535ec4ebcc32040913fad','4925d374b81932c650e3c0271d10052b5a8c5228','png',NULL),(15,1,18264,1533546726,1,0,'7fd19bccc4b8784301c48377018cfaeab278b78fb4d535b1d49961a90bc21940','js2_1.png','portal/20180806/6a3036eb3423a589c0ca7535e982bf25.png','7fd19bccc4b8784301c48377018cfaea','a83b3d7575b0d9699802a441ab2627011473839b','png',NULL),(16,1,1655754,1533547898,1,0,'e3b28dcc5735a4274a6aabff4044e26767060a3b027fb44babdb4ca860fecbac','banner5.png','portal/20180806/1677d66f6765de265830a916fc937734.png','e3b28dcc5735a4274a6aabff4044e267','97b3c5deb9290f0c95de7b6c5c871088f3410809','png',NULL),(17,1,679454,1533548998,1,0,'3160980574ca8d8d8033f1f3ca619ab598ace8cadbadf3df88e5053c9ec2539e','banner6.png','portal/20180806/de3eddd5c9b41356c96252e27b01edaf.png','3160980574ca8d8d8033f1f3ca619ab5','414ffaf86fb558db11bccfa06ef10a2d23c19219','png',NULL),(18,1,129564,1533609663,1,0,'348252ccca8fac4010d97c5091f4fadd924d461c7982934f957b8c997a8b9190','ab1_1 (1).png','portal/20180807/1a51af0b077cfe13033bb121eb1aea3b.png','348252ccca8fac4010d97c5091f4fadd','931235b7e3b9bb39453937d78489a18ed55c50c7','png',NULL),(19,1,44702,1533610695,1,0,'2d545b1e23ec2e411ae2caa13afc270a067825fe10974cafca6cc47ce2495ece','ab3_1.png','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','2d545b1e23ec2e411ae2caa13afc270a','a7809d1f0659fce7699b05743ebca91bc7f678af','png',NULL),(20,1,1748123,1533625043,1,0,'b1bedfe1eb23f1084468dd96df988a27eb60ce765ee3b8ae50cec00bb730fc3b','banner4.png','portal/20180807/ca5f84c7302c1740dfb5866f1d110a8b.png','b1bedfe1eb23f1084468dd96df988a27','462379215baf09684b139abab31ed3684949b3ec','png',NULL),(21,1,24718,1533708114,1,0,'25b13c19ea5a049cc28d8cc0ec954bc092bac0428da0670ccbc9fb8be3546258','64.jpg','admin/20180808/1e848eb9ac69c19a88182e6efdc1a9cd.jpg','25b13c19ea5a049cc28d8cc0ec954bc0','b01357776de5cab44ca85e2c88b9afd85168aad7','jpg',NULL),(22,1,18105,1533708374,1,0,'8be3bd5fcc00d652d00db7c02975330aab0e4251d45ae8a51616696e3174e704','16.jpg','admin/20180808/93ae8540aebfce304f67f1f0d52e7027.jpg','8be3bd5fcc00d652d00db7c02975330a','11eff346862643e6814ac7eff282685c5ea30182','jpg',NULL),(23,1,29727,1533708435,1,0,'8f7fe2b426fe8b3676450d9bc9e33fa20088c4810e7747d4c393282a8228e898','七牛云qshell单个文件上传.png','admin/20180808/afcde12f54bf069c3e1b0090ce371d10.png','8f7fe2b426fe8b3676450d9bc9e33fa2','835bb925bbd80741883fd5faefca19fc9bd4c083','png',NULL);
/*!40000 ALTER TABLE `ld_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_auth_access`
--

DROP TABLE IF EXISTS `ld_auth_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_auth_access`
--

LOCK TABLES `ld_auth_access` WRITE;
/*!40000 ALTER TABLE `ld_auth_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_auth_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_auth_rule`
--

DROP TABLE IF EXISTS `ld_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_auth_rule`
--

LOCK TABLES `ld_auth_rule` WRITE;
/*!40000 ALTER TABLE `ld_auth_rule` DISABLE KEYS */;
INSERT INTO `ld_auth_rule` VALUES (1,1,'admin','admin_url','admin/Hook/index','','钩子管理',''),(2,1,'admin','admin_url','admin/Hook/plugins','','钩子插件管理',''),(3,1,'admin','admin_url','admin/Hook/pluginListOrder','','钩子插件排序',''),(4,1,'admin','admin_url','admin/Hook/sync','','同步钩子',''),(5,1,'admin','admin_url','admin/Link/index','','友情链接',''),(6,1,'admin','admin_url','admin/Link/add','','添加友情链接',''),(7,1,'admin','admin_url','admin/Link/addPost','','添加友情链接提交保存',''),(8,1,'admin','admin_url','admin/Link/edit','','编辑友情链接',''),(9,1,'admin','admin_url','admin/Link/editPost','','编辑友情链接提交保存',''),(10,1,'admin','admin_url','admin/Link/delete','','删除友情链接',''),(11,1,'admin','admin_url','admin/Link/listOrder','','友情链接排序',''),(12,1,'admin','admin_url','admin/Link/toggle','','友情链接显示隐藏',''),(13,1,'admin','admin_url','admin/Mailer/index','','邮箱配置',''),(14,1,'admin','admin_url','admin/Mailer/indexPost','','邮箱配置提交保存',''),(15,1,'admin','admin_url','admin/Mailer/template','','邮件模板',''),(16,1,'admin','admin_url','admin/Mailer/templatePost','','邮件模板提交',''),(17,1,'admin','admin_url','admin/Mailer/test','','邮件发送测试',''),(18,1,'admin','admin_url','admin/Menu/index','','后台菜单',''),(19,1,'admin','admin_url','admin/Menu/lists','','所有菜单',''),(20,1,'admin','admin_url','admin/Menu/add','','后台菜单添加',''),(21,1,'admin','admin_url','admin/Menu/addPost','','后台菜单添加提交保存',''),(22,1,'admin','admin_url','admin/Menu/edit','','后台菜单编辑',''),(23,1,'admin','admin_url','admin/Menu/editPost','','后台菜单编辑提交保存',''),(24,1,'admin','admin_url','admin/Menu/delete','','后台菜单删除',''),(25,1,'admin','admin_url','admin/Menu/listOrder','','后台菜单排序',''),(26,1,'admin','admin_url','admin/Menu/getActions','','导入新后台菜单',''),(27,1,'admin','admin_url','admin/Nav/index','','导航管理',''),(28,1,'admin','admin_url','admin/Nav/add','','添加导航',''),(29,1,'admin','admin_url','admin/Nav/addPost','','添加导航提交保存',''),(30,1,'admin','admin_url','admin/Nav/edit','','编辑导航',''),(31,1,'admin','admin_url','admin/Nav/editPost','','编辑导航提交保存',''),(32,1,'admin','admin_url','admin/Nav/delete','','删除导航',''),(33,1,'admin','admin_url','admin/NavMenu/index','','导航菜单',''),(34,1,'admin','admin_url','admin/NavMenu/add','','添加导航菜单',''),(35,1,'admin','admin_url','admin/NavMenu/addPost','','添加导航菜单提交保存',''),(36,1,'admin','admin_url','admin/NavMenu/edit','','编辑导航菜单',''),(37,1,'admin','admin_url','admin/NavMenu/editPost','','编辑导航菜单提交保存',''),(38,1,'admin','admin_url','admin/NavMenu/delete','','删除导航菜单',''),(39,1,'admin','admin_url','admin/NavMenu/listOrder','','导航菜单排序',''),(40,1,'admin','admin_url','admin/Plugin/default','','插件中心',''),(41,1,'admin','admin_url','admin/Plugin/index','','插件列表',''),(42,1,'admin','admin_url','admin/Plugin/toggle','','插件启用禁用',''),(43,1,'admin','admin_url','admin/Plugin/setting','','插件设置',''),(44,1,'admin','admin_url','admin/Plugin/settingPost','','插件设置提交',''),(45,1,'admin','admin_url','admin/Plugin/install','','插件安装',''),(46,1,'admin','admin_url','admin/Plugin/update','','插件更新',''),(47,1,'admin','admin_url','admin/Plugin/uninstall','','卸载插件',''),(48,1,'admin','admin_url','admin/Rbac/index','','角色管理',''),(49,1,'admin','admin_url','admin/Rbac/roleAdd','','添加角色',''),(50,1,'admin','admin_url','admin/Rbac/roleAddPost','','添加角色提交',''),(51,1,'admin','admin_url','admin/Rbac/roleEdit','','编辑角色',''),(52,1,'admin','admin_url','admin/Rbac/roleEditPost','','编辑角色提交',''),(53,1,'admin','admin_url','admin/Rbac/roleDelete','','删除角色',''),(54,1,'admin','admin_url','admin/Rbac/authorize','','设置角色权限',''),(55,1,'admin','admin_url','admin/Rbac/authorizePost','','角色授权提交',''),(56,1,'admin','admin_url','admin/RecycleBin/index','','回收站',''),(57,1,'admin','admin_url','admin/RecycleBin/restore','','回收站还原',''),(58,1,'admin','admin_url','admin/RecycleBin/delete','','回收站彻底删除',''),(59,1,'admin','admin_url','admin/Route/index','','URL美化',''),(60,1,'admin','admin_url','admin/Route/add','','添加路由规则',''),(61,1,'admin','admin_url','admin/Route/addPost','','添加路由规则提交',''),(62,1,'admin','admin_url','admin/Route/edit','','路由规则编辑',''),(63,1,'admin','admin_url','admin/Route/editPost','','路由规则编辑提交',''),(64,1,'admin','admin_url','admin/Route/delete','','路由规则删除',''),(65,1,'admin','admin_url','admin/Route/ban','','路由规则禁用',''),(66,1,'admin','admin_url','admin/Route/open','','路由规则启用',''),(67,1,'admin','admin_url','admin/Route/listOrder','','路由规则排序',''),(68,1,'admin','admin_url','admin/Route/select','','选择URL',''),(69,1,'admin','admin_url','admin/Setting/default','','设置',''),(70,1,'admin','admin_url','admin/Setting/site','','网站信息',''),(71,1,'admin','admin_url','admin/Setting/sitePost','','网站信息设置提交',''),(72,1,'admin','admin_url','admin/Setting/password','','密码修改',''),(73,1,'admin','admin_url','admin/Setting/passwordPost','','密码修改提交',''),(74,1,'admin','admin_url','admin/Setting/upload','','上传设置',''),(75,1,'admin','admin_url','admin/Setting/uploadPost','','上传设置提交',''),(76,1,'admin','admin_url','admin/Setting/clearCache','','清除缓存',''),(77,1,'admin','admin_url','admin/Slide/index','','幻灯片管理',''),(78,1,'admin','admin_url','admin/Slide/add','','添加幻灯片',''),(79,1,'admin','admin_url','admin/Slide/addPost','','添加幻灯片提交',''),(80,1,'admin','admin_url','admin/Slide/edit','','编辑幻灯片',''),(81,1,'admin','admin_url','admin/Slide/editPost','','编辑幻灯片提交',''),(82,1,'admin','admin_url','admin/Slide/delete','','删除幻灯片',''),(83,1,'admin','admin_url','admin/SlideItem/index','','幻灯片页面列表',''),(84,1,'admin','admin_url','admin/SlideItem/add','','幻灯片页面添加',''),(85,1,'admin','admin_url','admin/SlideItem/addPost','','幻灯片页面添加提交',''),(86,1,'admin','admin_url','admin/SlideItem/edit','','幻灯片页面编辑',''),(87,1,'admin','admin_url','admin/SlideItem/editPost','','幻灯片页面编辑提交',''),(88,1,'admin','admin_url','admin/SlideItem/delete','','幻灯片页面删除',''),(89,1,'admin','admin_url','admin/SlideItem/ban','','幻灯片页面隐藏',''),(90,1,'admin','admin_url','admin/SlideItem/cancelBan','','幻灯片页面显示',''),(91,1,'admin','admin_url','admin/SlideItem/listOrder','','幻灯片页面排序',''),(92,1,'admin','admin_url','admin/Storage/index','','文件存储',''),(93,1,'admin','admin_url','admin/Storage/settingPost','','文件存储设置提交',''),(94,1,'admin','admin_url','admin/Theme/index','','模板管理',''),(95,1,'admin','admin_url','admin/Theme/install','','安装模板',''),(96,1,'admin','admin_url','admin/Theme/uninstall','','卸载模板',''),(97,1,'admin','admin_url','admin/Theme/installTheme','','模板安装',''),(98,1,'admin','admin_url','admin/Theme/update','','模板更新',''),(99,1,'admin','admin_url','admin/Theme/active','','启用模板',''),(100,1,'admin','admin_url','admin/Theme/files','','模板文件列表',''),(101,1,'admin','admin_url','admin/Theme/fileSetting','','模板文件设置',''),(102,1,'admin','admin_url','admin/Theme/fileArrayData','','模板文件数组数据列表',''),(103,1,'admin','admin_url','admin/Theme/fileArrayDataEdit','','模板文件数组数据添加编辑',''),(104,1,'admin','admin_url','admin/Theme/fileArrayDataEditPost','','模板文件数组数据添加编辑提交保存',''),(105,1,'admin','admin_url','admin/Theme/fileArrayDataDelete','','模板文件数组数据删除',''),(106,1,'admin','admin_url','admin/Theme/settingPost','','模板文件编辑提交保存',''),(107,1,'admin','admin_url','admin/Theme/dataSource','','模板文件设置数据源',''),(108,1,'admin','admin_url','admin/User/default','','管理组',''),(109,1,'admin','admin_url','admin/User/index','','管理员',''),(110,1,'admin','admin_url','admin/User/add','','管理员添加',''),(111,1,'admin','admin_url','admin/User/addPost','','管理员添加提交',''),(112,1,'admin','admin_url','admin/User/edit','','管理员编辑',''),(113,1,'admin','admin_url','admin/User/editPost','','管理员编辑提交',''),(114,1,'admin','admin_url','admin/User/userInfo','','个人信息',''),(115,1,'admin','admin_url','admin/User/userInfoPost','','管理员个人信息修改提交',''),(116,1,'admin','admin_url','admin/User/delete','','管理员删除',''),(117,1,'admin','admin_url','admin/User/ban','','停用管理员',''),(118,1,'admin','admin_url','admin/User/cancelBan','','启用管理员',''),(119,1,'portal','admin_url','portal/AdminArticle/index','','文章管理',''),(120,1,'portal','admin_url','portal/AdminArticle/add','','添加文章',''),(121,1,'portal','admin_url','portal/AdminArticle/addPost','','添加文章提交',''),(122,1,'portal','admin_url','portal/AdminArticle/edit','','编辑文章',''),(123,1,'portal','admin_url','portal/AdminArticle/editPost','','编辑文章提交',''),(124,1,'portal','admin_url','portal/AdminArticle/delete','','文章删除',''),(125,1,'portal','admin_url','portal/AdminArticle/publish','','文章发布',''),(126,1,'portal','admin_url','portal/AdminArticle/top','','文章置顶',''),(127,1,'portal','admin_url','portal/AdminArticle/recommend','','文章推荐',''),(128,1,'portal','admin_url','portal/AdminArticle/listOrder','','文章排序',''),(129,1,'portal','admin_url','portal/AdminCategory/index','','分类管理',''),(130,1,'portal','admin_url','portal/AdminCategory/add','','添加文章分类',''),(131,1,'portal','admin_url','portal/AdminCategory/addPost','','添加文章分类提交',''),(132,1,'portal','admin_url','portal/AdminCategory/edit','','编辑文章分类',''),(133,1,'portal','admin_url','portal/AdminCategory/editPost','','编辑文章分类提交',''),(134,1,'portal','admin_url','portal/AdminCategory/select','','文章分类选择对话框',''),(135,1,'portal','admin_url','portal/AdminCategory/listOrder','','文章分类排序',''),(136,1,'portal','admin_url','portal/AdminCategory/delete','','删除文章分类',''),(137,1,'portal','admin_url','portal/AdminIndex/default','','门户管理',''),(138,1,'portal','admin_url','portal/AdminPage/index','','页面管理',''),(139,1,'portal','admin_url','portal/AdminPage/add','','添加页面',''),(140,1,'portal','admin_url','portal/AdminPage/addPost','','添加页面提交',''),(141,1,'portal','admin_url','portal/AdminPage/edit','','编辑页面',''),(142,1,'portal','admin_url','portal/AdminPage/editPost','','编辑页面提交',''),(143,1,'portal','admin_url','portal/AdminPage/delete','','删除页面',''),(144,1,'portal','admin_url','portal/AdminTag/index','','文章标签',''),(145,1,'portal','admin_url','portal/AdminTag/add','','添加文章标签',''),(146,1,'portal','admin_url','portal/AdminTag/addPost','','添加文章标签提交',''),(147,1,'portal','admin_url','portal/AdminTag/upStatus','','更新标签状态',''),(148,1,'portal','admin_url','portal/AdminTag/delete','','删除文章标签',''),(149,1,'user','admin_url','user/AdminAsset/index','','资源管理',''),(150,1,'user','admin_url','user/AdminAsset/delete','','删除文件',''),(151,1,'user','admin_url','user/AdminIndex/default','','用户管理',''),(152,1,'user','admin_url','user/AdminIndex/default1','','用户组',''),(153,1,'user','admin_url','user/AdminIndex/index','','本站用户',''),(154,1,'user','admin_url','user/AdminIndex/ban','','本站用户拉黑',''),(155,1,'user','admin_url','user/AdminIndex/cancelBan','','本站用户启用',''),(156,1,'user','admin_url','user/AdminOauth/index','','第三方用户',''),(157,1,'user','admin_url','user/AdminOauth/delete','','删除第三方用户绑定',''),(158,1,'user','admin_url','user/AdminUserAction/index','','用户操作管理',''),(159,1,'user','admin_url','user/AdminUserAction/edit','','编辑用户操作',''),(160,1,'user','admin_url','user/AdminUserAction/editPost','','编辑用户操作提交',''),(161,1,'user','admin_url','user/AdminUserAction/sync','','同步用户操作',''),(162,1,'portal','admin_url','portal/Adminmessage/index','','留言管理','');
/*!40000 ALTER TABLE `ld_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_comment`
--

DROP TABLE IF EXISTS `ld_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_comment`
--

LOCK TABLES `ld_comment` WRITE;
/*!40000 ALTER TABLE `ld_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_hook`
--

DROP TABLE IF EXISTS `ld_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_hook`
--

LOCK TABLES `ld_hook` WRITE;
/*!40000 ALTER TABLE `ld_hook` DISABLE KEYS */;
INSERT INTO `ld_hook` VALUES (1,1,0,'应用初始化','app_init','cmf','应用初始化'),(2,1,0,'应用开始','app_begin','cmf','应用开始'),(3,1,0,'模块初始化','module_init','cmf','模块初始化'),(4,1,0,'控制器开始','action_begin','cmf','控制器开始'),(5,1,0,'视图输出过滤','view_filter','cmf','视图输出过滤'),(6,1,0,'应用结束','app_end','cmf','应用结束'),(7,1,0,'日志write方法','log_write','cmf','日志write方法'),(8,1,0,'输出结束','response_end','cmf','输出结束'),(9,1,0,'后台控制器初始化','admin_init','cmf','后台控制器初始化'),(10,1,0,'前台控制器初始化','home_init','cmf','前台控制器初始化'),(11,1,1,'发送手机验证码','send_mobile_verification_code','cmf','发送手机验证码'),(12,3,0,'模板 body标签开始','body_start','','模板 body标签开始'),(13,3,0,'模板 head标签结束前','before_head_end','','模板 head标签结束前'),(14,3,0,'模板底部开始','footer_start','','模板底部开始'),(15,3,0,'模板底部开始之前','before_footer','','模板底部开始之前'),(16,3,0,'模板底部结束之前','before_footer_end','','模板底部结束之前'),(17,3,0,'模板 body 标签结束之前','before_body_end','','模板 body 标签结束之前'),(18,3,0,'模板左边栏开始','left_sidebar_start','','模板左边栏开始'),(19,3,0,'模板左边栏结束之前','before_left_sidebar_end','','模板左边栏结束之前'),(20,3,0,'模板右边栏开始','right_sidebar_start','','模板右边栏开始'),(21,3,0,'模板右边栏结束之前','before_right_sidebar_end','','模板右边栏结束之前'),(22,3,1,'评论区','comment','','评论区'),(23,3,1,'留言区','guestbook','','留言区'),(24,2,0,'后台首页仪表盘','admin_dashboard','admin','后台首页仪表盘'),(25,4,0,'后台模板 head标签结束前','admin_before_head_end','','后台模板 head标签结束前'),(26,4,0,'后台模板 body 标签结束之前','admin_before_body_end','','后台模板 body 标签结束之前'),(27,2,0,'后台登录页面','admin_login','admin','后台登录页面'),(28,1,1,'前台模板切换','switch_theme','cmf','前台模板切换'),(29,3,0,'主要内容之后','after_content','','主要内容之后'),(30,2,0,'文章显示之前','portal_before_assign_article','portal','文章显示之前'),(31,2,0,'后台文章保存之后','portal_admin_after_save_article','portal','后台文章保存之后'),(32,2,1,'获取上传界面','fetch_upload_view','user','获取上传界面'),(33,3,0,'主要内容之前','before_content','cmf','主要内容之前'),(34,1,0,'日志写入完成','log_write_done','cmf','日志写入完成'),(35,1,1,'后台模板切换','switch_admin_theme','cmf','后台模板切换');
/*!40000 ALTER TABLE `ld_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_hook_plugin`
--

DROP TABLE IF EXISTS `ld_hook_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_hook_plugin`
--

LOCK TABLES `ld_hook_plugin` WRITE;
/*!40000 ALTER TABLE `ld_hook_plugin` DISABLE KEYS */;
INSERT INTO `ld_hook_plugin` VALUES (1,10000,1,'footer_start','Wxlogin');
/*!40000 ALTER TABLE `ld_hook_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_link`
--

DROP TABLE IF EXISTS `ld_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_link`
--

LOCK TABLES `ld_link` WRITE;
/*!40000 ALTER TABLE `ld_link` DISABLE KEYS */;
INSERT INTO `ld_link` VALUES (1,1,1,8,'','http://mydear.vip','黑龙江省建设集团','admin/20180806/a8fa82295b7d647768ca86d9f0626312.png','_blank',''),(2,1,0,10000,'','http://mydear.vip','你好世界','admin/20180806/0fcdfe7320bb954762a3a1ba3b16a2d5.png','_blank',''),(3,1,0,10000,'','http://mydear.vip','helloworld','admin/20180806/b28d5f8731c750ef61332db0d6590af1.png','_blank','');
/*!40000 ALTER TABLE `ld_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_message`
--

DROP TABLE IF EXISTS `ld_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `message` varchar(300) NOT NULL DEFAULT '' COMMENT '信息',
  `createtime` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_message`
--

LOCK TABLES `ld_message` WRITE;
/*!40000 ALTER TABLE `ld_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_nav`
--

DROP TABLE IF EXISTS `ld_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_nav`
--

LOCK TABLES `ld_nav` WRITE;
/*!40000 ALTER TABLE `ld_nav` DISABLE KEYS */;
INSERT INTO `ld_nav` VALUES (1,1,'主导航','主导航'),(2,0,'底部导航','');
/*!40000 ALTER TABLE `ld_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_nav_menu`
--

DROP TABLE IF EXISTS `ld_nav_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `catid` tinyint(3) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_nav_menu`
--

LOCK TABLES `ld_nav_menu` WRITE;
/*!40000 ALTER TABLE `ld_nav_menu` DISABLE KEYS */;
INSERT INTO `ld_nav_menu` VALUES (1,1,0,1,0,'首页',0,'','home','','0-1'),(2,1,0,1,10000,'案例',3,'','{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":3}}','',''),(3,1,0,1,10000,'360技术',4,'','{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":4}}','',''),(4,1,0,1,10000,'企业文化',9,'','{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":9}}','',''),(5,1,0,1,10000,'关于我们',10,'','{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":10}}','',''),(6,1,0,1,10000,'战略合作',11,'','{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":11}}','','');
/*!40000 ALTER TABLE `ld_nav_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_option`
--

DROP TABLE IF EXISTS `ld_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_option`
--

LOCK TABLES `ld_option` WRITE;
/*!40000 ALTER TABLE `ld_option` DISABLE KEYS */;
INSERT INTO `ld_option` VALUES (1,1,'site_info','{\"site_name\":\"\\u4e16\\u7eaa\\u76db\\u548c\",\"site_seo_title\":\"\\u4e16\\u7eaa\\u76db\\u548c\",\"site_seo_keywords\":\"\\u4e16\\u7eaa\\u76db\\u548c\",\"site_seo_description\":\"\\u4e16\\u7eaa\\u76db\\u548c\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}'),(2,1,'cmf_settings','{\"open_registration\":\"1\",\"banned_usernames\":\"\"}'),(3,1,'cdn_settings','{\"cdn_static_root\":\"\"}'),(4,1,'admin_settings','{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}'),(5,1,'smtp_setting','{\"from_name\":\"i_strive@126.com\",\"from\":\"i_strive@126.com\",\"host\":\"smtp.126.com\",\"smtp_secure\":\"\",\"port\":\"25\",\"username\":\"admin\",\"password\":\"123123\"}'),(6,1,'server_settings','{\"k_email\":\"shijishenghe-chengyixun@163.com\",\"k_tel\":\"400-0909-2091\",\"q_email\":\"ali@qq.com\",\"q_tel\":\"400-0909-2091\"}');
/*!40000 ALTER TABLE `ld_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_plugin`
--

DROP TABLE IF EXISTS `ld_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_plugin`
--

LOCK TABLES `ld_plugin` WRITE;
/*!40000 ALTER TABLE `ld_plugin` DISABLE KEYS */;
INSERT INTO `ld_plugin` VALUES (1,1,0,1,0,'Wxlogin','微信登录','','','Tangchao','','1.2','微信登录','{\"appid\":\"\",\"appkey\":\"\"}');
/*!40000 ALTER TABLE `ld_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_portal_category`
--

DROP TABLE IF EXISTS `ld_portal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_portal_category`
--

LOCK TABLES `ld_portal_category` WRITE;
/*!40000 ALTER TABLE `ld_portal_category` DISABLE KEYS */;
INSERT INTO `ld_portal_category` VALUES (1,0,0,1,0,10000,'新闻','','0-1','新闻资讯','新闻资讯','新闻资讯','list_news','article_news','{\"thumbnail\":\"portal\\/20180806\\/992485d35468b41e31eb4c8f67f97ec1.png\",\"thumbnail_m\":\"portal\\/20180806\\/20f6921d6beb8a4db7971b3f3552186a.png\"}'),(2,0,0,1,0,10000,'首页案例','','0-2','','','','list_news','article_news','{\"thumbnail\":\"\"}'),(3,0,0,1,0,10000,'案例','','0-3','案例','','','list_case','article_news','{\"thumbnail\":\"portal\\/20180806\\/9f761718230c6d6ad604d02b8f35d6dd.png\"}'),(4,0,0,1,0,10000,'360技术','','0-4','','','','list_tech','article_news','{\"thumbnail\":\"portal\\/20180807\\/ca5f84c7302c1740dfb5866f1d110a8b.png\"}'),(5,4,0,1,0,10000,'产品线','','0-4-5','','','','list_news','article_news','{\"thumbnail\":\"\"}'),(6,4,0,1,0,10000,'产品优势','','0-4-6','','','','list_news','article_news','{\"thumbnail\":\"\"}'),(7,6,0,1,0,10000,'钢结构住宅优势','','0-4-6-7','','','','list_news','article_news','{\"thumbnail\":\"portal\\/20180806\\/6a3036eb3423a589c0ca7535e982bf25.png\"}'),(8,6,0,1,0,10000,'轻钢轻混凝土结构优势','','0-4-6-8','','','','list_news','article_news','{\"thumbnail\":\"portal\\/20180806\\/6a3036eb3423a589c0ca7535e982bf25.png\"}'),(9,0,0,1,0,10000,'企业文化','','0-9','','','','list_culture','article_news','{\"thumbnail\":\"portal\\/20180806\\/1677d66f6765de265830a916fc937734.png\"}'),(10,0,0,1,0,10000,'关于我们','','0-10','','','','list_about','article_news','{\"thumbnail\":\"portal\\/20180806\\/992485d35468b41e31eb4c8f67f97ec1.png\"}'),(11,0,0,1,0,10000,'战略合作','','0-11','','','','list_hezuo','article_news','{\"thumbnail\":\"portal\\/20180806\\/de3eddd5c9b41356c96252e27b01edaf.png\"}'),(12,10,0,1,0,10000,'钢结构装配建筑','钢结构住宅在众多的住宅建筑结构中最适宜构件的工厂化生产，可以将设计、生产、施工、安装一体化，变“现场建造”为“工厂制造”，提高住宅工业化、商品化水平，而且钢结构住宅自重轻，基础造价低，适用于软弱地基，安装容易，施工快，周期短，投资回收快，施工污染环境少，抗震性能好，可回收利用，经济环保等，因而在住宅市场有着良好的发展前景，被誉为二十一世纪的“绿色建筑”之一。','0-10-12','','','','list_news','article_news','{\"thumbnail\":\"\"}'),(13,10,0,1,0,10000,'研发专利','','0-10-13','','','','list_news','article_news','{\"thumbnail\":\"\"}'),(14,0,0,1,1533709483,10000,'啥的范德萨','','0-14','','','','list_news','article_news','{\"thumbnail\":\"portal\\/20180806\\/20f6921d6beb8a4db7971b3f3552186a.png\",\"thumbnail_m\":\"admin\\/20180808\\/afcde12f54bf069c3e1b0090ce371d10.png\"}');
/*!40000 ALTER TABLE `ld_portal_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_portal_category_post`
--

DROP TABLE IF EXISTS `ld_portal_category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_portal_category_post`
--

LOCK TABLES `ld_portal_category_post` WRITE;
/*!40000 ALTER TABLE `ld_portal_category_post` DISABLE KEYS */;
INSERT INTO `ld_portal_category_post` VALUES (1,1,1,10000,1),(2,2,1,10000,1),(3,3,1,10000,1),(4,4,2,10000,1),(5,5,2,10000,1),(6,6,2,10000,1),(7,7,3,10000,1),(8,8,3,10000,1),(9,9,3,10000,1),(10,10,3,10000,1),(11,11,3,10000,1),(12,12,3,10000,1),(13,13,5,10000,1),(14,14,5,10000,1),(15,15,7,10000,1),(16,16,7,10000,1),(17,17,7,10000,1),(18,18,7,10000,1),(19,19,7,10000,1),(20,20,8,10000,1),(21,21,8,10000,1),(22,22,8,10000,1),(23,23,8,10000,1),(24,24,8,10000,1),(25,25,12,10000,1),(26,26,12,10000,1),(27,27,12,10000,1),(28,28,12,10000,1),(29,29,13,10000,1),(30,30,13,10000,1),(31,31,13,10000,1),(32,32,13,10000,1),(33,33,13,10000,1),(34,34,13,10000,1),(35,35,13,10000,1),(36,36,13,10000,1),(37,37,13,10000,1),(38,38,13,10000,1),(39,39,11,10000,1),(40,40,11,10000,1),(41,41,11,10000,1);
/*!40000 ALTER TABLE `ld_portal_category_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_portal_post`
--

DROP TABLE IF EXISTS `ld_portal_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_title_en` varchar(100) NOT NULL DEFAULT '' COMMENT '英文标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `thumbrecomm` varchar(100) NOT NULL DEFAULT '' COMMENT '推荐图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_portal_post`
--

LOCK TABLES `ld_portal_post` WRITE;
/*!40000 ALTER TABLE `ld_portal_post` DISABLE KEYS */;
INSERT INTO `ld_portal_post` VALUES (1,0,1,1,1,1,1,0,1,2,0,0,0,1533528301,1533537525,1533528180,0,'我们的特色小镇','','','为贯彻西藏自治区推进新型城镇化工作会议精神，积极探索特色小城镇示范点建设发展模式，加快特色小城镇示范点建设步伐。去年5月8日，西藏自治区政府办公厅下发了《西藏自治区特色小城镇示范点建设工作实施方案》，自治区计划投入10亿元支持地方开展特色小城镇示范点建设。在自治区的首批20个特色小城镇示范点中，拉萨有墨竹工卡县甲玛乡、尼木县吞巴乡、当雄县羊八井镇入围','周瑜','portal/20180806/5ba4c24f8689a17999b3dedd075e6df4.png','portal/20180806/108503f256ef7a2b30e781d39764501e.png','&lt;p&gt;为贯彻西藏自治区推进新型城镇化工作会议精神，积极探索特色小城镇示范点建设发展模式，加快特色小城镇示范点建设步伐。去年5月8日，西藏自治区政府办公厅下发了《西藏自治区特色小城镇示范点建设工作实施方案》，自治区计划投入10亿元支持地方开展特色小城镇示范点建设。在自治区的首批20个特色小城镇示范点中，拉萨有墨竹工卡县甲玛乡、尼木县吞巴乡、当雄县羊八井镇入围为贯彻西藏自治区推进新型城镇化工作会议精神，积极探索特色小城镇示范点建设发展模式，加快特色小城镇示范点建设步伐。去年5月8日，西藏自治区政府办公厅下发了《西藏自治区特色小城镇示范点建设工作实施方案》，自治区计划投入10亿元支持地方开展特色小城镇示范点建设。在自治区的首批20个特色小城镇示范点中，拉萨有墨竹工卡县甲玛乡、尼木县吞巴乡、当雄县羊八井镇入围为贯彻西藏自治区推进新型城镇化工作会议精神，积极探索特色小城镇示范点建设发展模式，加快特色小城镇示范点建设步伐。去年5月8日，西藏自治区政府办公厅下发了《西藏自治区特色小城镇示范点建设工作实施方案》，自治区计划投入10亿元支持地方开展特色小城镇示范点建设。在自治区的首批20个特色小城镇示范点中，拉萨有墨竹工卡县甲玛乡、尼木县吞巴乡、当雄县羊八井镇入围&lt;/p&gt;',NULL,'{\"thumbnail\":\"portal\\/20180806\\/5ba4c24f8689a17999b3dedd075e6df4.png\",\"thumbrecomm\":\"portal\\/20180806\\/108503f256ef7a2b30e781d39764501e.png\",\"template\":\"\"}'),(2,0,1,1,1,1,1,0,1,1,0,0,0,1533528989,1533536338,1533528840,0,'分页后生成的分页变量名,只有设置分页参数时才有','','','','','portal/20180806/5ba4c24f8689a17999b3dedd075e6df4.png','portal/20180806/108503f256ef7a2b30e781d39764501e.png','&lt;p&gt;分页后生成的分页变量名,只有设置分页参数时才有分页后生成的分页变量名,只有设置分页参数时才有分页后生成的分页变量名,只有设置分页参数时才有分页后生成的分页变量名,只有设置分页参数时才有&lt;/p&gt;',NULL,'{\"thumbnail\":\"portal\\/20180806\\/5ba4c24f8689a17999b3dedd075e6df4.png\",\"thumbrecomm\":\"portal\\/20180806\\/108503f256ef7a2b30e781d39764501e.png\",\"template\":\"\"}'),(3,0,1,1,1,1,1,0,1,21,0,0,0,1533533946,1533536328,1533533880,0,'紧跟政策做国家的“风向标“ ','','','世纪盛和自创建以来服务于全国市场。以国家提出的“大力发展装配式建筑、推动产业结构调整升级”为契机，“以科技创新、综合运营”为举措，坚持“互信、包容、合作、共赢”的经营原则。','','portal/20180806/5ba4c24f8689a17999b3dedd075e6df4.png','portal/20180806/108503f256ef7a2b30e781d39764501e.png','&lt;p&gt;世纪盛和自创建以来服务于全国市场。以国家提出的“大力发展装配式建筑、推动产业结构调整升级”为契机，“以科技创新、综合运营”为举措，坚持“互信、包容、合作、共赢”的经营原则。&lt;/p&gt;',NULL,'{\"thumbnail\":\"portal\\/20180806\\/5ba4c24f8689a17999b3dedd075e6df4.png\",\"thumbrecomm\":\"portal\\/20180806\\/108503f256ef7a2b30e781d39764501e.png\",\"template\":\"\"}'),(4,0,1,1,1,1,1,0,0,0,0,0,0,1533538175,1533538175,1533538038,0,'西藏扶贫','Support XiZang programs for the poor ','','','','portal/20180806/dd4745396f2b1fdf52bd7e53b564e1b4.png','','\n&lt;p&gt;引入生成器之前我们先来了解一下python函数工作机制：&lt;/p&gt;\n&lt;p&gt;我们调用一个普通的 Python 函数时，一般是从函数的第一行代码开始执行，结束于 return 语句、异常或者函数结束（可以看作隐式的返回 None）。一旦函数将控制权交还给调用者，就意味着全部结束。函数中做的所有工作以及保存在局部变量中的数据都将丢失。再次调用这个函数时，一切都将从头创建。 &lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;对于在计算机编程中所讨论的函数，这是很标准的流程。这样的函数只能返回一个值，不过，有时可以创建能产生一个序列的函数还是有帮助的。要做到这一点，这种函数需要能够“保存自己的工作”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n',NULL,'{\"thumbnail\":\"portal\\/20180806\\/dd4745396f2b1fdf52bd7e53b564e1b4.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(5,0,1,1,1,1,1,0,0,0,0,0,0,1533538211,1533538732,1533538140,0,'新疆扶贫妲己','Support XiZang programs for the poor ','','','','portal/20180806/dd4745396f2b1fdf52bd7e53b564e1b4.png','','&lt;p&gt;新疆扶贫妲己新疆扶贫妲己新疆扶贫妲己新疆扶贫妲己新疆扶贫妲己新疆扶贫妲己&lt;/p&gt;',NULL,'{\"thumbnail\":\"portal\\/20180806\\/dd4745396f2b1fdf52bd7e53b564e1b4.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(6,0,1,1,1,1,1,0,0,0,0,0,0,1533538247,1533538530,1533538200,0,'鄂尔多斯扶贫打机','Support XiZang programs for the poor ','','','','portal/20180806/dd4745396f2b1fdf52bd7e53b564e1b4.png','','\n&lt;p&gt;引入生成器之前我们先来了解一下python函数工作机制：&lt;/p&gt;\n&lt;p&gt;我们调用一个普通的 Python 函数时，一般是从函数的第一行代码开始执行，结束于 return 语句、异常或者函数结束（可以看作隐式的返回 None）。一旦函数将控制权交还给调用者，就意味着全部结束。函数中做的所有工作以及保存在局部变量中的数据都将丢失。再次调用这个函数时，一切都将从头创建。 &lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;对于在计算机编程中所讨论的函数，这是很标准的流程。这样的函数只能返回一个值，不过，有时可以创建能产生一个序列的函数还是有帮助的。要做到这一点，这种函数需要能够“保存自己的工作”。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n',NULL,'{\"thumbnail\":\"portal\\/20180806\\/dd4745396f2b1fdf52bd7e53b564e1b4.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(7,0,1,1,1,1,1,0,0,0,0,0,0,1533542508,1533542515,1533542340,0,'冰岛歌剧院','','','','','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','','',NULL,'{\"thumbnail\":\"portal\\/20180806\\/aa9b9a6c90286b3c0b8ed02555c48132.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(8,0,1,1,1,1,1,0,0,0,0,0,0,1533542545,1533542545,1533542521,0,'安阳歌曲元','','','','','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180806\\/aa9b9a6c90286b3c0b8ed02555c48132.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(9,0,1,1,1,1,1,0,0,0,0,0,0,1533542567,1533542567,1533542549,0,'濮阳歌剧院','','','','','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180806\\/aa9b9a6c90286b3c0b8ed02555c48132.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(10,0,1,1,1,1,1,0,0,0,0,0,0,1533542586,1533542586,1533542570,0,'洛阳歌剧院','','','','','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180806\\/aa9b9a6c90286b3c0b8ed02555c48132.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(11,0,1,1,1,1,1,0,0,0,0,0,0,1533542621,1533542621,1533542605,0,'开封歌剧院','','','','','portal/20180806/aa9b9a6c90286b3c0b8ed02555c48132.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180806\\/aa9b9a6c90286b3c0b8ed02555c48132.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(12,0,1,1,1,1,1,0,1,0,0,0,0,1533542641,1533544174,1533542580,0,'濮阳好地方','','','','','portal/20180806/8ece1120770de83d5c4b1e2cb5d8a42f.png','','',NULL,'{\"thumbnail\":\"portal\\/20180806\\/8ece1120770de83d5c4b1e2cb5d8a42f.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(13,0,1,1,1,1,1,0,0,0,0,0,0,1533545076,1533545076,1533544951,0,'轻质自保温灌浆墙体','','','','','','','&lt;p&gt;轻质自保温灌浆墙体是一种新型、非承重墙体。广泛应用于：公共建筑和民用建筑的各类结构非承重外围护墙和内隔墙。&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"},{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"},{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"}]}'),(14,0,1,1,1,1,1,0,0,0,0,0,0,1533545155,1533545155,1533545096,0,'轻质自保温灌浆墙体2','','','','','','','&lt;p&gt;轻质自保温灌浆墙体是一种新型、非承重墙体。广泛应用于：公共建筑和民用建筑的各类结构非承重外围护墙和内隔墙。&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"},{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"},{\"url\":\"portal\\/20180806\\/f805b75007fa1d4b096b88e923c2ad93.png\",\"name\":\"js1_1.png\"}]}'),(15,0,1,1,1,1,1,0,0,0,0,0,0,1533545856,1533545856,1533545834,0,'材性稳定','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(16,0,1,1,1,1,1,0,0,0,0,0,0,1533545877,1533545877,1533545860,0,'耐热性','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(17,0,1,1,1,1,1,0,0,0,0,0,0,1533545892,1533545892,1533545881,0,'高强度','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(18,0,1,1,1,1,1,0,0,0,0,0,0,1533545910,1533545910,1533545899,0,'韧性好','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(19,0,1,1,1,1,1,0,0,0,0,0,0,1533545938,1533545938,1533545914,0,'质量好','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(20,0,1,1,1,1,1,0,0,0,0,0,0,1533545962,1533545962,1533545950,0,'好价格','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(21,0,1,1,1,1,1,0,0,0,0,0,0,1533545974,1533545974,1533545965,0,'低强度','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(22,0,1,1,1,1,1,0,0,0,0,0,0,1533545988,1533545988,1533545978,0,'不得了','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(23,0,1,1,1,1,1,0,0,0,0,0,0,1533546002,1533546002,1533545991,0,'上清华','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(24,0,1,1,1,1,1,0,0,0,0,0,0,1533546024,1533546024,1533546013,0,'北大不错','','','','','','','&lt;p&gt;&lt;span style=\'font-family: &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\'&gt;作为结构主要材料的钢材，内部机构组织均匀，比较接近于均质和各向同性体，实际受力情况和工程力学计算结果接近，设计更精准&lt;/span&gt;&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(25,0,1,1,1,1,1,0,0,0,0,0,0,1533609666,1533609666,1533609596,0,'图1','','','','','portal/20180807/1a51af0b077cfe13033bb121eb1aea3b.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180807\\/1a51af0b077cfe13033bb121eb1aea3b.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(26,0,1,1,1,1,1,0,0,0,0,0,0,1533609686,1533609686,1533609670,0,'图2','','','','','portal/20180807/1a51af0b077cfe13033bb121eb1aea3b.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180807\\/1a51af0b077cfe13033bb121eb1aea3b.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(27,0,1,1,1,1,1,0,0,0,0,0,0,1533609703,1533609703,1533609689,0,'图3','','','','','portal/20180807/1a51af0b077cfe13033bb121eb1aea3b.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180807\\/1a51af0b077cfe13033bb121eb1aea3b.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(28,0,1,1,1,1,1,0,0,0,0,0,0,1533609720,1533609720,1533609706,0,'图4','','','','','portal/20180807/1a51af0b077cfe13033bb121eb1aea3b.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/1a51af0b077cfe13033bb121eb1aea3b.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(29,0,1,1,1,1,1,0,0,0,0,0,0,1533610697,1533610697,1533610679,0,'1','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(30,0,1,1,1,1,1,0,0,0,0,0,0,1533610713,1533610713,1533610700,0,'2','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(31,0,1,1,1,1,1,0,0,0,0,0,0,1533610728,1533610728,1533610716,0,'3','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(32,0,1,1,1,1,1,0,0,0,0,0,0,1533610745,1533610745,1533610732,0,'4','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(33,0,1,1,1,1,1,0,0,0,0,0,0,1533610764,1533610764,1533610751,0,'6','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(34,0,1,1,1,1,1,0,0,0,0,0,0,1533610789,1533610789,1533610772,0,'5','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(35,0,1,1,1,1,1,0,0,0,0,0,0,1533610809,1533610809,1533610795,0,'7','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(36,0,1,1,1,1,1,0,0,0,0,0,0,1533610827,1533610827,1533610814,0,'8','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(37,0,1,1,1,1,1,0,0,0,0,0,0,1533610847,1533610847,1533610830,0,'9','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','','',NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(38,0,1,1,1,1,1,0,0,0,0,0,0,1533610867,1533610867,1533610850,0,'10','','','','','portal/20180807/7e1ceb63d79e7328d470044889e6a509.png','',NULL,NULL,'{\"thumbnail\":\"portal\\/20180807\\/7e1ceb63d79e7328d470044889e6a509.png\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(39,0,1,1,1,1,1,0,0,0,0,0,0,1533611064,1533611064,1533611032,0,'我们的观点','Why join us','','','','','','&lt;p&gt;世纪盛和自创建以来服务于全国市场。以国家提出的“大力发展装配式建筑、推动产业结构调整升级”为契机，“以科技创新、综合运营”为举措，坚持“互信、包容、合作、共赢”的经营原则。&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(40,0,1,1,1,1,1,0,0,0,0,0,0,1533611094,1533611094,1533611073,0,'激励机制','','','','','','','\n&lt;p&gt;选择世纪盛和，选择实力&lt;/p&gt;\n&lt;p&gt;重视人才，以人为本&lt;/p&gt;\n&lt;p&gt;重视人才，以人为本&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}'),(41,0,1,1,1,1,1,0,0,0,0,0,0,1533611134,1533611134,1533611112,0,'我们的业绩','','','','','','','&lt;p&gt;“交流、合作、共赢”是企业发展的共同需求。建立平等互利、共同发展的长期合作机制，充分挖掘合作潜力，将我们各自丰富的资源变为互利合作、共同发展的促进力、影响力。双方要相互包容、求同存异中共同发展。&lt;/p&gt;',NULL,'{\"thumbnail\":\"\",\"thumbrecomm\":\"\",\"template\":\"\"}');
/*!40000 ALTER TABLE `ld_portal_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_portal_tag`
--

DROP TABLE IF EXISTS `ld_portal_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_portal_tag`
--

LOCK TABLES `ld_portal_tag` WRITE;
/*!40000 ALTER TABLE `ld_portal_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_portal_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_portal_tag_post`
--

DROP TABLE IF EXISTS `ld_portal_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_portal_tag_post`
--

LOCK TABLES `ld_portal_tag_post` WRITE;
/*!40000 ALTER TABLE `ld_portal_tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_portal_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_recycle_bin`
--

DROP TABLE IF EXISTS `ld_recycle_bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_recycle_bin`
--

LOCK TABLES `ld_recycle_bin` WRITE;
/*!40000 ALTER TABLE `ld_recycle_bin` DISABLE KEYS */;
INSERT INTO `ld_recycle_bin` VALUES (1,14,1533709483,'portal_category','啥的范德萨',0);
/*!40000 ALTER TABLE `ld_recycle_bin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_role`
--

DROP TABLE IF EXISTS `ld_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_role`
--

LOCK TABLES `ld_role` WRITE;
/*!40000 ALTER TABLE `ld_role` DISABLE KEYS */;
INSERT INTO `ld_role` VALUES (1,0,1,1329633709,1329633709,0,'超级管理员','拥有网站最高管理员权限！'),(2,0,1,1329633709,1329633709,0,'普通管理员','权限由最高管理员分配！');
/*!40000 ALTER TABLE `ld_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_role_user`
--

DROP TABLE IF EXISTS `ld_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_role_user`
--

LOCK TABLES `ld_role_user` WRITE;
/*!40000 ALTER TABLE `ld_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_route`
--

DROP TABLE IF EXISTS `ld_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_route`
--

LOCK TABLES `ld_route` WRITE;
/*!40000 ALTER TABLE `ld_route` DISABLE KEYS */;
INSERT INTO `ld_route` VALUES (1,5000,1,2,'portal/List/index?id=1','news'),(2,4999,1,2,'portal/Article/index?cid=1','news/:id'),(3,5000,1,2,'portal/List/index?id=2','portalcase'),(4,4999,1,2,'portal/Article/index?cid=2','portalcase/:id'),(5,5000,1,2,'portal/List/index?id=3','case'),(6,4999,1,2,'portal/Article/index?cid=3','case/:id'),(7,5000,1,2,'portal/List/index?id=4','tech'),(8,4999,1,2,'portal/Article/index?cid=4','tech/:id'),(9,5000,1,2,'portal/List/index?id=5','product'),(10,4999,1,2,'portal/Article/index?cid=5','product/:id'),(11,5000,1,2,'portal/List/index?id=9','culture'),(12,4999,1,2,'portal/Article/index?cid=9','culture/:id'),(13,5000,1,2,'portal/List/index?id=10','about'),(14,4999,1,2,'portal/Article/index?cid=10','about/:id'),(15,5000,1,2,'portal/List/index?id=11','hezuo'),(16,4999,1,2,'portal/Article/index?cid=11','hezuo/:id');
/*!40000 ALTER TABLE `ld_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_slide`
--

DROP TABLE IF EXISTS `ld_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_slide`
--

LOCK TABLES `ld_slide` WRITE;
/*!40000 ALTER TABLE `ld_slide` DISABLE KEYS */;
INSERT INTO `ld_slide` VALUES (1,1,0,'首页幻灯片',''),(2,1,0,'关于我们','');
/*!40000 ALTER TABLE `ld_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_slide_item`
--

DROP TABLE IF EXISTS `ld_slide_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `image_m` varchar(300) NOT NULL DEFAULT '' COMMENT '手机图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_slide_item`
--

LOCK TABLES `ld_slide_item` WRITE;
/*!40000 ALTER TABLE `ld_slide_item` DISABLE KEYS */;
INSERT INTO `ld_slide_item` VALUES (1,1,1,10000,'banner1','admin/20180806/d30e42e0c71593b758e966a4efdb8f59.png','','http://sohu.com','','','',NULL),(2,1,1,10000,'banner2','admin/20180806/d30e42e0c71593b758e966a4efdb8f59.png','','http://baidu.com','','','',NULL),(3,2,1,10000,'banner1','portal/20180806/992485d35468b41e31eb4c8f67f97ec1.png','','http://sohu.com','','','',NULL),(4,2,1,10000,'banner2','portal/20180806/1677d66f6765de265830a916fc937734.png','','','','','',NULL),(5,1,1,10000,'abc','admin/20180808/93ae8540aebfce304f67f1f0d52e7027.jpg','admin/20180808/afcde12f54bf069c3e1b0090ce371d10.png','http://baidu.com','','','',NULL);
/*!40000 ALTER TABLE `ld_slide_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_theme`
--

DROP TABLE IF EXISTS `ld_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_theme`
--

LOCK TABLES `ld_theme` WRITE;
/*!40000 ALTER TABLE `ld_theme` DISABLE KEYS */;
INSERT INTO `ld_theme` VALUES (2,0,0,0,0,'index','ld','1.0.2','http://mydear.vip','','龙鼎','http://mydear.vip','zh-cn','龙鼎模板','龙鼎模板');
/*!40000 ALTER TABLE `ld_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_theme_file`
--

DROP TABLE IF EXISTS `ld_theme_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_theme_file`
--

LOCK TABLES `ld_theme_file` WRITE;
/*!40000 ALTER TABLE `ld_theme_file` DISABLE KEYS */;
INSERT INTO `ld_theme_file` VALUES (1,0,10,'simpleboot3','文章页','portal/Article/index','portal/article','文章页模板文件','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL),(2,0,10,'simpleboot3','联系我们页','portal/Page/index','portal/contact','联系我们页模板文件','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}',NULL),(3,0,5,'simpleboot3','首页','portal/Index/index','portal/index','首页模板文件','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(4,0,10,'simpleboot3','文章列表页','portal/List/index','portal/list','文章列表模板文件','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(5,0,10,'simpleboot3','单页面','portal/Page/index','portal/page','单页面模板文件','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}','{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}',NULL),(6,0,10,'simpleboot3','搜索页面','portal/search/index','portal/search','搜索模板文件','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}','{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}',NULL),(7,1,0,'simpleboot3','模板全局配置','public/Config','public/config','模板全局配置文件','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}','{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}',NULL),(8,1,1,'simpleboot3','导航条','public/Nav','public/nav','导航条模板文件','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}','{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}',NULL),(17,0,10,'index','新闻列表页','portal/List/index','portal/list_news','新闻列表模板文件','{\"vars\":[],\"widgets\":[]}','{\"vars\":[],\"widgets\":[]}',NULL),(18,0,10,'index','新闻文章页','portal/Article/index','portal/article_news','文章页模板文件','[]','[]',NULL),(19,0,10,'index','案例列表页','portal/List/index','portal/list_case','案例列表模板文件','{\"vars\":[],\"widgets\":[]}','{\"vars\":[],\"widgets\":[]}',NULL),(20,0,10,'index','技术列表页','portal/List/index','portal/list_tech','技术列表模板文件','{\"vars\":[],\"widgets\":[]}','{\"vars\":[],\"widgets\":[]}',NULL),(21,0,10,'index','文化列表页','portal/List/index','portal/list_culture','文化列表模板文件','{\"vars\":{\"zhanlue\":{\"title\":\"\\u4f01\\u4e1a\\u6218\\u7565\",\"value\":[{\"title\":\"\\u5b9a\\u4f4d\",\"con\":\"\\u88c5\\u914d\\u5f0f\\u4e00\\u4f53\\u5316 360\\u00b0\\u670d\\u52a1\\u5e73\\u53f0\"},{\"title\":\"\\u4f7f\\u547d\",\"con\":\"\\u805a\\u7126\\u670d\\u52a1\\u4f53\\u7cfb \\u4e3a\\u5efa\\u7b51\\u884c\\u4e1a\\u521b\\u9020\\u6700\\u5927\\u4ef7\\u503c\"},{\"title\":\"\\u613f\\u666f\",\"con\":\"\\u7528\\u4e2d\\u56fd\\u6280\\u672f \\u505a\\u6c9f\\u901a\\u4e16\\u754c\\u7684\\u6865\\u6881\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"con\":{\"title\":\"\\u8bf4\\u660e\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}}},\"rule\":{\"require\":false}}},\"widgets\":[]}','{\"vars\":{\"zhanlue\":{\"title\":\"\\u4f01\\u4e1a\\u6218\\u7565\",\"value\":[],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"con\":{\"title\":\"\\u8bf4\\u660e\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}}},\"rule\":{\"require\":false}}},\"widgets\":[]}',NULL),(22,0,10,'index','关于我们列表页','portal/List/index','portal/list_about','关于我们列表模板文件','{\"vars\":[],\"widgets\":[]}','{\"vars\":[],\"widgets\":[]}',NULL),(23,0,10,'index','合作列表页','portal/List/index','portal/list_hezuo','合作列表模板文件','{\"vars\":[],\"widgets\":[]}','{\"vars\":[],\"widgets\":[]}',NULL);
/*!40000 ALTER TABLE `ld_theme_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_third_party_user`
--

DROP TABLE IF EXISTS `ld_third_party_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_third_party_user`
--

LOCK TABLES `ld_third_party_user` WRITE;
/*!40000 ALTER TABLE `ld_third_party_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_third_party_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user`
--

DROP TABLE IF EXISTS `ld_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user`
--

LOCK TABLES `ld_user` WRITE;
/*!40000 ALTER TABLE `ld_user` DISABLE KEYS */;
INSERT INTO `ld_user` VALUES (1,1,0,0,1533706940,0,0,0.00,1533524534,1,'admin','###cb39128d82274f80018dc1d48a212ba0','admin','858174095@qq.com','','','','127.0.0.1','','',NULL);
/*!40000 ALTER TABLE `ld_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_action`
--

DROP TABLE IF EXISTS `ld_user_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_action`
--

LOCK TABLES `ld_user_action` WRITE;
/*!40000 ALTER TABLE `ld_user_action` DISABLE KEYS */;
INSERT INTO `ld_user_action` VALUES (1,1,1,1,2,1,'用户登录','login','user','');
/*!40000 ALTER TABLE `ld_user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_action_log`
--

DROP TABLE IF EXISTS `ld_user_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_action_log`
--

LOCK TABLES `ld_user_action_log` WRITE;
/*!40000 ALTER TABLE `ld_user_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_balance_log`
--

DROP TABLE IF EXISTS `ld_user_balance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_balance_log`
--

LOCK TABLES `ld_user_balance_log` WRITE;
/*!40000 ALTER TABLE `ld_user_balance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_balance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_favorite`
--

DROP TABLE IF EXISTS `ld_user_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_favorite`
--

LOCK TABLES `ld_user_favorite` WRITE;
/*!40000 ALTER TABLE `ld_user_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_like`
--

DROP TABLE IF EXISTS `ld_user_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_like`
--

LOCK TABLES `ld_user_like` WRITE;
/*!40000 ALTER TABLE `ld_user_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_login_attempt`
--

DROP TABLE IF EXISTS `ld_user_login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_login_attempt`
--

LOCK TABLES `ld_user_login_attempt` WRITE;
/*!40000 ALTER TABLE `ld_user_login_attempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_score_log`
--

DROP TABLE IF EXISTS `ld_user_score_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_score_log`
--

LOCK TABLES `ld_user_score_log` WRITE;
/*!40000 ALTER TABLE `ld_user_score_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_user_score_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_user_token`
--

DROP TABLE IF EXISTS `ld_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_user_token`
--

LOCK TABLES `ld_user_token` WRITE;
/*!40000 ALTER TABLE `ld_user_token` DISABLE KEYS */;
INSERT INTO `ld_user_token` VALUES (1,1,1549076552,1533524552,'ffbcaa9f38e1859a0c5f655bd898e2f5ffbcaa9f38e1859a0c5f655bd898e2f5','web');
/*!40000 ALTER TABLE `ld_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ld_verification_code`
--

DROP TABLE IF EXISTS `ld_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ld_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ld_verification_code`
--

LOCK TABLES `ld_verification_code` WRITE;
/*!40000 ALTER TABLE `ld_verification_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `ld_verification_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-08 14:38:10
