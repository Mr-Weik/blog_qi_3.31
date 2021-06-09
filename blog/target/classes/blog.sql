/*
 Navicat Premium Data Transfer

 Source Server         : 42.193.98.156 8.1
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 42.193.98.156:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 03/05/2021 15:13:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `views` int DEFAULT NULL,
  `appreciation` int NOT NULL DEFAULT '0',
  `share_statement` int NOT NULL DEFAULT '0',
  `commentabled` int NOT NULL DEFAULT '0',
  `published` int NOT NULL DEFAULT '0',
  `recommend` int NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `description` text,
  `tag_ids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
BEGIN;
INSERT INTO `t_blog` VALUES (1, 'maven中静态资源的过滤', '# maven中静态资源的过滤\r\n\r\npom.xml文件中加入下面配置\r\n\r\n### 可以过滤java和resources文件夹里面所有的的.properties和.xml文件\r\n**directory：指定资源所在的目录，目录的路径是相对于pom.xml文件的\r\nincludes：指定要包含哪些文件**\r\n**filtering标签中：false表示不过滤，true表示过滤**\r\n\r\n```java\r\n    <build>\r\n        <resources>\r\n            <resource>\r\n                <directory>src/main/java</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n            <resource>\r\n                <directory>src/main/resources</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n        </resources>\r\n    </build>\r\n```\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584367888190&di=7855ff350e759b4b3de8c614978673b4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201612%2F07%2F20161207154722_Cmce5.thumb.400_0.gif', '原创', 0, 1, 1, 1, 1, 1, '2020-03-12 08:25:47', '2020-03-13 11:56:19', 3, 1, 'pom.xml文件中加入下面配置\r\n可以过滤java和resources文件夹里面所有的的.properties和.xml文件', '4');
INSERT INTO `t_blog` VALUES (4, 'Linux下安装Mysql服务', '+ 服务器环境\r\n  + centos8\r\n+ 连接工具  win下 `Xshell`   Mac下 `Termius`\r\n+ 安装步骤\r\n\r\n\r\n\r\n1. yum install mysql mysql-server mysql-devel -y   （安装MySQL数据库）\r\n2. service mysqld start  （启动数据库）\r\n3. chkconfig mysqld on  （开机自动启动数据库）\r\n4. mysql -u root    （以最高权限登录数据库）\r\n5. show databases;   （显示数据库）\r\n6. use mysql;（选中数据库mysql）\r\n7. ALTER USER \"root\"@\"localhost\" IDENTIFIED BY \"你的密码\"\r\n8. update user set host = \'%\' where user = \'root\';   （更新账号root的权限！）\r\n9. FLUSH PRIVILEGES;  (刷新权限)\r\n10. exit  (退出数据库）', 'https://img0.baidu.com/it/u=3132030522,553099578&fm=26&fmt=auto&gp=0.jpg', '', 0, 0, 0, 0, 1, 1, '2021-05-03 14:46:20', '2021-05-03 14:46:20', 10, 1, 'Linux一键安装方式', '9,12,13');
COMMIT;

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` bigint DEFAULT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
BEGIN;
INSERT INTO `t_blog_tags` VALUES (1, 3, '4');
INSERT INTO `t_blog_tags` VALUES (2, 4, '1');
INSERT INTO `t_blog_tags` VALUES (3, 4, '3');
INSERT INTO `t_blog_tags` VALUES (4, 5, '3');
INSERT INTO `t_blog_tags` VALUES (5, 5, '4');
INSERT INTO `t_blog_tags` VALUES (6, 7, '2');
INSERT INTO `t_blog_tags` VALUES (7, 6, '5');
INSERT INTO `t_blog_tags` VALUES (64, 5, '3');
INSERT INTO `t_blog_tags` VALUES (65, 4, '3');
INSERT INTO `t_blog_tags` VALUES (66, 4, '6');
INSERT INTO `t_blog_tags` VALUES (74, 7, '10');
INSERT INTO `t_blog_tags` VALUES (75, 8, '11');
INSERT INTO `t_blog_tags` VALUES (76, 8, '12');
INSERT INTO `t_blog_tags` VALUES (77, 8, '13');
INSERT INTO `t_blog_tags` VALUES (78, 4, '2');
INSERT INTO `t_blog_tags` VALUES (79, 5, '2');
INSERT INTO `t_blog_tags` VALUES (80, 4, '3');
INSERT INTO `t_blog_tags` VALUES (81, 5, '3');
INSERT INTO `t_blog_tags` VALUES (82, 4, '3');
INSERT INTO `t_blog_tags` VALUES (83, 9, '4');
INSERT INTO `t_blog_tags` VALUES (84, 12, '4');
INSERT INTO `t_blog_tags` VALUES (85, 13, '4');
COMMIT;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `blog_id` bigint DEFAULT NULL,
  `parent_comment_id` bigint DEFAULT NULL,
  `admincomment` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
BEGIN;
INSERT INTO `t_comment` VALUES (1, '小白', 'bai@qq.com', '小白的评论', '/images/avatar.jpg', '2020-03-15 21:28:13', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (2, '小红', 'hong@qq.com', '小红的评论', '/images/avatar.jpg', '2020-03-15 21:35:02', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (5, '小蓝', 'lan@qq.com', '小蓝的评论', '/images/avatar.jpg', '2020-03-16 15:04:24', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (7, '朱一鸣', '691639910@qq.com', '博主的评论', 'http://5b0988e595225.cdn.sohucs.com/images/20181103/feaa7d14883047fb81bbaa16f681f583.jpeg', '2020-03-16 15:11:07', 2, -1, 1);
INSERT INTO `t_comment` VALUES (8, '安东尼', '2333@qq.com', '不论是我的世界车水马龙繁华盛世 还是它们都瞬间消失化为须臾 我都会坚定地走向你 不慌张 不犹豫', '/images/avatar.jpg', '2020-03-24 17:41:17', 11, -1, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
BEGIN;
INSERT INTO `t_tag` VALUES (9, '服务器');
INSERT INTO `t_tag` VALUES (10, 'Java');
INSERT INTO `t_tag` VALUES (11, '自动化');
INSERT INTO `t_tag` VALUES (12, '环境搭建');
INSERT INTO `t_tag` VALUES (13, '环境部署');
COMMIT;

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_type
-- ----------------------------
BEGIN;
INSERT INTO `t_type` VALUES (7, 'LInux');
INSERT INTO `t_type` VALUES (8, 'Python');
INSERT INTO `t_type` VALUES (9, 'Java');
INSERT INTO `t_type` VALUES (10, 'MySql');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'coco', 'coco', 'e10adc3949ba59abbe56e057f20f883e', '996168543@qq.com', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584367404804&di=070c78aac95428c480b480a87b534e96&imgtype=0&src=http%3A%2F%2Fbbs.cnlinfo.net%2Fup%2Ftou%2F150611164743.jpg', 1, '2020-03-08 18:25:26', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
