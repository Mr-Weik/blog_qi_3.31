/*
 Navicat Premium Data Transfer

 Source Server         : 152.136.150.225
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 152.136.150.225:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 02/05/2021 13:48:26
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
BEGIN;
INSERT INTO `t_blog` VALUES (1, 'maven中静态资源的过滤', '# maven中静态资源的过滤\r\n\r\npom.xml文件中加入下面配置\r\n\r\n### 可以过滤java和resources文件夹里面所有的的.properties和.xml文件\r\n**directory：指定资源所在的目录，目录的路径是相对于pom.xml文件的\r\nincludes：指定要包含哪些文件**\r\n**filtering标签中：false表示不过滤，true表示过滤**\r\n\r\n```java\r\n    <build>\r\n        <resources>\r\n            <resource>\r\n                <directory>src/main/java</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n            <resource>\r\n                <directory>src/main/resources</directory>\r\n                <includes>\r\n                    <include>**/*.properties</include>\r\n                    <include>**/*.xml</include>\r\n                </includes>\r\n                <filtering>false</filtering>\r\n            </resource>\r\n        </resources>\r\n    </build>\r\n```\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584367888190&di=7855ff350e759b4b3de8c614978673b4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201612%2F07%2F20161207154722_Cmce5.thumb.400_0.gif', '原创', 0, 1, 1, 1, 1, 1, '2020-03-12 08:25:47', '2020-03-13 11:56:19', 3, 1, 'pom.xml文件中加入下面配置\r\n可以过滤java和resources文件夹里面所有的的.properties和.xml文件', '4');
INSERT INTO `t_blog` VALUES (3, 'Web自动Selenium', '## 自动化的概述\r\n\r\n### 自动化的优点\r\n\r\n1. 减少人工劳力\r\n2. 提高工作效率\r\n3. 产品规格统一标准\r\n4. 规模化（批量生产）\r\n\r\n### 自动化测试是什么\r\n\r\n+ 让程序代替人工验证系统功能的过程\r\n\r\n#### 自动化测试在什么时候用\r\n\r\n1. 回归测试\r\n2. 压力测试\r\n3. 兼容测试\r\n4. 版本迭代\r\n\r\n####  什么项目/功能适合做自动化\r\n\r\n1. 需求不变\r\n2. 主线业务\r\n3. 版本迭代\r\n\r\n\r\n\r\n# web 自动化什么时候做\r\n\r\n在功能测试完成之后去做\r\n\r\n### web自动化测试所属的分类\r\n\r\n黑盒测试，对web-ui界面的测试\r\n\r\n\r\n\r\n\r\n\r\n### selenium的特点\r\n\r\n+ 支持的系统多\r\n  + mac. Windows . linux\r\n+ 支持的浏览器\r\n  + chrome firefox id edge\r\n+ 支持的语言多\r\n  + python java ruby c# 沙浦\r\n+ 开源，免费\r\n\r\n### selenium 的工作原理\r\n\r\n+ 同python代码操作webdriver，webdriver的本质就是通过\r\n\r\n\r\n\r\n\r\n\r\n# 元素定位\r\n\r\n+ 概述：\r\n  + 我们在操作元素之前，需要告诉系统操作哪一个元素\r\n+ 总共有八种方法\r\n  + id\r\n    + 通过元素的id的属性值定位\r\n    + 方法名: driver_find_element_by_id\r\n    + 参数: 标签的id的属性值\r\n  + Name:\r\n    + 通过元素的class属性值定位\r\n    + driver.find_element_by_name\r\n    + 参数：标签的name的属性值\r\n  + class_name\r\n    + 通过元素的class的属性值定位\r\n    + 方法名: driver_find_element_by_class_name\r\n    + 参数: 标签的class的属性名\r\n  + Tag_name\r\n    + 通过标签的名字进行定位\r\n    + 方法名: driver.find_element_by_tag_name\r\n    + 参数: 标签的名字\r\n  + Link_text\r\n    + 专门找a标签，通过a标签上的文字内容进行点位\r\n    + 方法名: driver.find_element_by_link_text\r\n    + 参数：a标签上的文字内容\r\n  + partial_link_text\r\n    + 专门找a标签。通过a标签上的部分文字内容进行定位\r\n    + 方法名: driver.find_element_by_partial_link_text\r\n    + 参数:a标签上的部分文字内容\r\n\r\n\r\n\r\n## 定义一组元素\r\n\r\n+ 方法名都叫做 find_elements_by_xxx\r\n+ 这个方法返回的永远是列表，会帮我们返回所有符合条件的元素，如果没有，就返回空列表，如果有列表就返回对应的列表\r\n+ `find_element_by_xxx` 会找html代码中从上往下，第一个符合条件的元素，如果没有，则报错.NoSuchElement\r\n\r\n\r\n\r\n## 关于xpath\r\n\r\n+ xml 和 html\r\n  + xml是为了传输数据而设计，heml是为了展示数据而设计\r\n  + xml的标签名称需要自己定义，html的标签名称需要根据规范编写\r\n+ 概述:\r\n  + Xpath 是一种根据路径来查询元素内容的小型查询语言\r\n    + 可以帮我们定位`元素节点`,`文本节点`,`属性节点`\r\n+ 节点之间的关系\r\n  + 父\r\n  + 子\r\n  + 同胞/兄弟\r\n  + 先辈\r\n  + 后代\r\n+ 语法：\r\n  + //标签名[@属性名=\'属性名\']\r\n    + 定位属性名为属性值的标签\r\n    + //input[@date=\'hello\']\r\n    + 定位所有data为hello的input的标签\r\n  + //标签[conntains(@属性名,\'属性值\'的标签)]\r\n    + 定位属性名的属性值包含\'属性值\'的标签\r\n    + //input[contains(@data,\'python\')]\r\n    + 定位所有data属性包含python的input标签\r\n+ /\r\n  + 每一级和每一级之间的分隔符\r\n+ //\r\n  + 不考虑位置\r\n+ .\r\n  + 当前\r\n+ @\r\n  + 选取属性\r\n+ ..\r\n  + 上一级\r\n+ 过滤\r\n  + //bookstore/book\r\n    + 第一个bookstrore下的book,从1开始计算下标\r\n  + //bookstore/book[laster]\r\n    + 最后一个Bookstore下的book\r\n  + //\r\n    + 选取下标为1和2的两个Bookstore下的标签\r\n  + //\r\n    + 选取所有包含data属性的titile标签\r\n  + //\r\n    + 找Bookstore下的\r\n+ 通配符\r\n  + ​    *\r\n    + 任意标签的额名字，或者属性名字(属性名字前面有@)\r\n+ 其他语法\r\n  + |\r\n    + 可以用来连接多个xpath表达式\r\n  + and 和 or\r\n    + and 和 or 是写在中括号中的\r\n    + //*[@title=\'hello\' and @python=\'hello\']', 'https://seopic.699pic.com/photo/50007/0704.jpg_wh1200.jpg', '', 0, 0, 0, 0, 1, 1, '2021-05-01 23:54:25', '2021-05-02 10:57:32', 8, 1, 'Web自动化', '4');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
BEGIN;
INSERT INTO `t_tag` VALUES (3, '前端');
INSERT INTO `t_tag` VALUES (4, '后端');
INSERT INTO `t_tag` VALUES (5, 'springboot');
INSERT INTO `t_tag` VALUES (6, 'java');
INSERT INTO `t_tag` VALUES (7, 'javase');
INSERT INTO `t_tag` VALUES (8, '杂谈');
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
INSERT INTO `t_type` VALUES (6, '动漫方法');
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
