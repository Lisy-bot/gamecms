/*
 Navicat Premium Data Transfer

 Source Server         : localhost3308
 Source Server Type    : MySQL
 Source Server Version : 50549
 Source Host           : localhost:3308
 Source Schema         : mycms

 Target Server Type    : MySQL
 Target Server Version : 50549
 File Encoding         : 65001

 Date: 12/06/2019 11:13:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_prize
-- ----------------------------
DROP TABLE IF EXISTS `activity_prize`;
CREATE TABLE `activity_prize`  (
  `actp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动奖品的自增id',
  `acty_id` int(11) NOT NULL COMMENT '所属活动类型的id',
  `actp_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动奖品名称',
  `actp_count` int(11) NULL DEFAULT NULL COMMENT '活动奖品数量',
  `actp_probability` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中奖概率',
  `actp_remark` varchar(640) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`actp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity_prize
-- ----------------------------
INSERT INTO `activity_prize` VALUES (1, 1, '儿童智能机器人', 1, '0', NULL);
INSERT INTO `activity_prize` VALUES (2, 1, '汪汪队仿真消防车', 3, '0.001', NULL);
INSERT INTO `activity_prize` VALUES (3, 1, '大侦探皮卡丘公仔', 5, '0.007', NULL);
INSERT INTO `activity_prize` VALUES (4, 1, '机甲战车陀螺', 10, '0.008', NULL);

-- ----------------------------
-- Table structure for activity_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `activity_question_bank`;
CREATE TABLE `activity_question_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目ID',
  `title_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目标题',
  `answer_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案A',
  `answer_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案B',
  `answer_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案C',
  `answer_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案D',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '正确答案',
  `state` int(1) NULL DEFAULT NULL COMMENT '题目状态（0为未抽取状态,1为已抽取状态）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity_question_bank
-- ----------------------------
INSERT INTO `activity_question_bank` VALUES (1, '“商女不知亡国恨，隔江犹唱后庭花”出自于杜牧的', '咏史诗', '伤别诗', '纪行诗', '写景诗', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (2, '下列四个朝代中,时间最靠前的是', '北魏', '南唐', '西晋', '北宋', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (3, '《论语为政》中,孔子所说的而立之年指的是', '20', '30', '40', '50', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (4, '中国古代哲学中,有阴阳八卦的理论,这一理论出自哪一书', '尚书', '论语', '周易', '孟子', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (5, '平常体育报道中经常用到收官之战一词,其中收官二字最初是', '书法', '围棋', '绘画', '音律', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (6, '战国思想家荀子是什么学派的集大成者', '儒家', '法家', '墨家', '名家', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (7, '苏轼的名作《水调歌头明月几时有》与下列哪个节日有关', '中秋', '重阳', '清明', '上巳', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (8, '中国绘画历史悠久,源远流长,下列画家时代最早的是', '阎立本', '唐寅', '郑板桥', '文征明', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (9, '下列文学家中,不属于唐宋八大家的是', '欧阳修', '王勃', '柳宗元', '王安石', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (10, '佛经有云救人一命胜造七级浮屠,浮屠指的是', '酒的代称', '佛塔', '屠夫', '屠苏', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (11, '在中国现代文坛上,以诗歌为主的作家是', '郭沫若', '艾青', '郁达夫', '朱自清', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (12, '李白的诗风是', '沉郁雄浑', '豪迈奔放', '通俗易懂', '狂傲不训', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (13, '《董西厢》属于', '杂剧', '散曲', '说唱', '话本', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (14, '田园诗派的开创者是', '谢灵运', '陶渊明', '王维', '李白', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (15, '先秦两汉时期成就最高、影响最大、通过人物描写来反映历史面貌的是', '左传', '史记', '国语', '汉书', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (16, '《史记》属于什么体史书', '断代体', '编年体', '记传体', '都不对', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (17, '《资治通鉴》是我国北宋年间何人主编的一部编年体的历史巨著', '王安石', '司马光', '欧阳修', '苏轼', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (18, '但愿人长久,千里共婵娟,其中婵娟指的是什么', '月亮', '姻缘', '寿命', '太阳', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (19, '草书、行书、楷书、隶书四种字体当中哪一种是其余三种的起源', '草书', '行书', '楷书', '隶书', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (20, '爆竹声中一岁除,春风送暖入屠苏,这里的屠苏指的是', '苏州', '房屋', '酒', '庄稼', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (21, '拱手而立表示对长者的尊敬,一般来说,男子行拱手礼时应该', '左手在外', '右手在外', '双手交叉', '左手在上', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (22, '我国的京剧脸谱色彩含义丰富,那么黑色一般表示', '忠耿正直', '刚愎自用', '奸诈阴险', '卑鄙无耻', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (23, '下列不属于《三十六计》的是', '浑水摸鱼', '反戈一击', '笑里藏刀', '反客为主', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (24, '床前明月光是李白的千古名句,其中床指的是什么', '窗户', '卧具', '围栏', '门', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (25, '上联孙行者,下面下联中最合适的是', '胡适之', '周作人', '郁达夫', '唐三藏', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (26, '月上柳梢头，人约黄昏后描写的是哪个传统节日', '中秋节', '元宵节', '端午节', '七夕节', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (27, '周密《观潮》一文选自他的', '武林旧事', '齐东野语', '蘋洲渔笛谱', '浩然斋雅谈', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (28, '下列哪个成语典故与项羽有关', '隔岸观火', '暗度陈仓', '背水一战', '破釜沉舟', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (29, '《百家姓》中没有下面哪个姓', '乌', '巫', '肖', '萧', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (30, '”生旦净末丑“是京剧的行当其中净是', '男角', '女角', '儿童', '男女均可', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (31, '我们常说的十八般武艺最初指的是什么', '十八种兵器', '十八种武术', '十八种武器', '十八个人', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (32, '李清照词中的绿肥红瘦描写的是什么季节的景色', '晚春', '仲夏', '初秋', '初冬', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (33, '下面哪个字常用作表示顺序的第五位', '戊', '戍', '戌', '术', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (34, '以下哪个典故能体现逻辑辩证的这一特点', '白马非马', '指鹿为马', '任人唯亲', '知人善用', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (35, '”桃李满天下“的桃李指什么', '朋友', '孩子', '病人', '学生', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (36, '吃年糕的习俗与下列哪位历史人物有关', '伍子胥', '范蠡', '屈原', '范仲淹', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (37, '在古代人们尊称对方的妻子', '令爱', '令正', '令尊', '令弟', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (38, '请问我们常说的润笔指的是什么', '文章书画稿费', '替人研磨墨汁', '为人作序', '清洗毛笔', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (39, '梨园用来指代戏曲界,那么杏林指代的是', '教育界', '医学界', '文艺界', '桃园', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (40, '太极拳讲究以柔克刚、以静制动、以弱胜强，这和哪位思想家的观点不谋而合', '老子', '孟子', '荀子', '孔子', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (41, '下列哪个成语和道听途说一词意思更接近', '空穴来风', '三人成虎', '马马虎虎', '谈笑风生', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (42, '河姆渡遗址位于', '黄河流域', '长江流域', '赣江流域', '海河流域', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (43, '度量衡是我国古代使用的计量单位,其中衡是指哪个方面的标准', '长度', '面积', '体积', '重量', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (44, '入木三分这个成语原本是用来形容什么的', '文章', '书法', '绘画', '音乐', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (45, '古代宫殿大门前成对的石狮一般都是', '左雄右雌', '左雌右雄', '雌雄同体', '都是雌的', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (46, '古代战争中指挥军队撤退时要敲击', '鼓', '锣', '钟', '木棒', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (47, '请问历史中的哪一时期最接近道家所主张的无为而治', '文景之治', '光武中兴', '贞观之治', '开元盛世', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (48, '下面哪个不是北京的别称', '大都', '中都', '上都', '南京', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (49, '孔子提倡的中庸之道的理论基础是', '阴阳五行', '天人合一', '道法自然', '顺其自然', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (50, '国强占香港岛的时间是', '1840年6月', '1841年1月', '1841年8月', '1842年8月', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (51, '片战争前,把鸦片偷运到中国的国家除英国外还有', '美俄', '法德', '美法', '俄法', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (52, '片战争前,外国船只来华贸易的先后顺序是', '葡荷英美', '英荷葡美', '荷葡英美', '葡英荷美', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (53, '早规定所谓领事裁判权不平等条约是', '南京条约', '虎门条约', '望厦条约', '黄埔条约', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (54, '代中国睁眼看世界的第一人是', '徐继畬', '魏源', '林则徐', '姚莹', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (55, '经清政府同意而由英国单方面宣布的条约是', '广州和约', '穿鼻草约', '南京条约', '虎门条约', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (56, '则徐要求严禁鸦片,当时他担任的职务是', '闽浙总督', '湖广总督', '鸿胪寺卿', '两广总督', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (57, '片战争中，守卫广州沙角、大角炮台壮烈捐躯的爱国将领是', '陈连升', '关天培', '陈化成', '裕谦', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (58, '早提出师夷长技以制夷主张的是', '龚自珍', '魏源', '林则徐', '洪仁玕', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (59, '《康輶纪行》一书的作者是', '姚莹', '徐继畲', '魏源', '夏燮', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (60, '著名史学家罗尔纲先生认为太平天国的政权体制是', '君主制', '虚君制', '分封制', '东殿总理制', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (61, '太平天国起义后，洪秀全称天王是在', '金田', '东乡', '永安', '天京', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (62, '太平天国军事上达到全盛时期是在', '1853年', '1854年', '1855年', '1856年', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (63, '太平天国运动由盛转衰的标志是', '安庆失陷', '天京变乱', '洪秀全病逝', '天京陷落', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (64, '近代史上西方列强在中国开辟租界最多的城市是', '上海', '厦门', '天津', '广州', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (65, '第二次鸦片战争发生在', '1858－1860年', '1858－1861年', '1856－1860年', '1859－1860年', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (66, '不属于《天津条约》规定开放的通商口岸是', '南京', '九江', '汉口', '天津', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (67, '洋务派创办的第一个民用企业是', '轮船招商局', '机器织布局', '缫丝厂', '机器厂', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (68, '洋务派举办的第一个培养翻译人才的新式学堂是', '广方言馆', '电报学堂', '同文馆', '制造总局', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (69, '黑旗军在越南河内附近的纸桥大败法军击毙法军头目', '安邺', '李维业', '波滑', '孤拔', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (70, '以下条约没有规定在长江口岸开埠通商的是', '南京条约', '天津条约', '北京条约', '马关条约', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (71, '盛世危言的作者是', '王韬', '薛福成', '马建忠', '郑观应', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (72, '康有为、梁启超在京组织宣传维新变法的政治团体是', '万木草堂', '时务学堂', '强学会', '保国会', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (73, '康有为在第几次上书皇帝中提出了设议院以通下情的主张', '第二次', '第四次', '第五次', '第六次', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (74, '十九世纪末,云南省成为哪国的势力范围', '英国', '法国', '英法两国', '德国', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (75, '甲午战后天津镇江铁路的投资修筑权为哪国攫取', '英德两国', '英美两国', '英国', '美德两国', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (76, '戊戌政变后,清政府编组武卫军,其中袁世凯率领的新建陆军被称为', '武卫前军', '武卫后军', '武卫左军', '武卫右军', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (77, '近代中国,列强在华开办的最早的一家银行是', '东方银行', '有利银行', '汇丰银行', '正金银行', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (78, '戌变法时期,疾呼冲决封建伦常和君主之罗网的人是', '康有为', '梁启超', '谭嗣同', '严复', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (79, '在民主革命的宣传品中,提出建立“中华共和国的著名作品是', '革命书', '革命军', '警世钟', '猛回头', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (80, '资产阶级革命派同保皇派论战的主要阵地是', '强学报', '民报', '时务报', '苏报', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (81, '《革命军》一书的作者是', '章太炎', '邹容', '陈天华', '黄兴', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (82, '近代中国成立的第一个资产阶级革命团体是', '兴中会', '华兴会', '光复会', '补习所', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (83, '被鲁迅先生赞誉为革命军中马前卒的人是', '陈天华', '章炳麟', '邹容', '秋瑾', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (84, '中国第一个资产阶级政党是', '兴中会', '同盟会', '国民党', '革命党', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (85, '中国近代资产阶级革命而牺牲的第一位烈士是', '邹容', '秋瑾', '徐锡麟', '陆皓东', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (86, '武昌起义后,革命党人出席南北议和的首席代表是', '伍廷芳', '唐绍仪', '陈其美', '汪精卫', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (87, '南京临时政府对清政府与帝国主义签订不平等条约的态度是', '概不承认', '全部承认', '重订新约', '部分承认', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (88, '中国近代资产阶级史学的创始人是', '梁启超', '章太炎', '夏曾佑', '刘师培', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (89, '袁世凯死后,北洋军阀分裂为三大派系其中皖系军阀的首领是', '段祺瑞', '冯国璋', '张作霖', '张勋', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (90, '袁世凯死后,继任的北洋政府大总统是', '黎元洪', '冯国璋', '徐世昌', '曹锟', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (91, '《吾人最后之觉悟》一文的作者是', '陈独秀', '李大钊', '胡适', '鲁迅', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (92, '鲁迅发表的第一篇白话小说是', '孔乙己', '阿Q正传', '狂人日记', '祝福', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (93, '护法运动的主要组织者和领导者是', '黄兴', '宋教仁', '孙中山', '蔡锷', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (94, '迫使袁世凯宣布取消帝制的革命运动是', '二次革命', '护国运动', '保路运动', '护法运动', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (95, '在新文化运动中,首先主张改良文体以白话文代替文言文的是', '陈独秀', '李大钊', '胡适', '钱玄同', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (96, '二次革命中响应孙中山武力讨袁号召率先起兵的是', '黄兴', '李烈钧', '胡汉民', '柏文蔚', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (97, '五四运动前,由于民族资本主义的进一步发展,中国产业工人已达到了', '90万', '100万', '200万', '300万', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (98, '最早在我国赞扬十月革命的胜利,宣扬马克思主义的是', '陈独秀', '李大钊', '鲁迅', '毛泽东', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (99, '1915年12月25日,在云南爆发的一场反对袁世凯称帝的运动是', '戊戌变法', '二次革命', '护国战争', '护法战争', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (100, '在二次革命中,率先宣布独立讨袁的是', '黄兴', '李烈钧', '柏文蔚', '陈其美', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (101, '二次革命中首先宣布独立的省份是', '江苏', '江西', '云南', '安徽', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (102, '先后参与领导过二次革命和护国运动的是', '黄兴', '李烈钧', '孙中山', '蔡锷', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (103, '驱除鞑虏,恢复中华的本质含义是', '反清复明', '反满兴汉', '反对压迫', '反对封建', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (104, '在帝国主义瓜分中国的狂潮中,最早强租中国领土的国家是', '英国', '法国', '德国', '俄国', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (105, '张勋复辟事件后得利最大的是', '溥仪', '张勋', '段祺瑞', '孙中山', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (106, '戊戌变法时期,维新派的主要喉舌是', '中外纪闻', '时务报', '国闻报', '学报', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (107, '在太平天国运动后期,参与镇压太平军的外国侵略者有', '常胜军', '常安军', '常捷军', '练军', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (108, '美国提出门户开放政策时,首先表示支持的国家是', '日本', '沙俄', '英国', '德国', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (109, '指挥三河大捷的太平军将领是', '赖汉英', '石达开', '陈玉成', '李秀成', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (110, '1897年取得芦(沟桥)汉(口)铁路代理经营权的国家是', '英国', '法国', '俄国', '比利时', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (111, '义和团运动时期,天津静海独流镇天下第一团的首领是', '张德成', '曹福田', '林黑儿', '朱红灯', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (112, '1874年,支持日本军队侵略台湾的列强是', '英', '法', '俄', '美', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (113, '从18世纪中叶起,英国在对华贸易中卖给中国的主要商品是', '呢绒', '茶叶', '棉花', '金属制品', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (114, '太平天国定都天京后,率兵进行北伐的将领是', '陈玉成', '石达开', '林凤祥', '赖汉英', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (115, '在甲午黄海海战中壮烈殉国的致远号管带是谁', '邓世昌', '丁汝昌', '林永升', '方伯谦', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (116, '在甲午黄海海战中壮烈殉国的经远号管带是谁', '邓世昌', '丁汝昌', '林永升', '方伯谦', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (117, '中国有一个传统习俗小年通常人们要吃', '元宵', '饴糖', '腊八粥', '饺子', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (118, '阳关大道原是指通往那里的道路', '东海', '西域', '南国', '中原', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (119, '一日不见,如隔三秋里的三秋是指', '三个月', '三年', '三个季度', '三十年', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (120, '我们常说的鸿雁传书源自于以下哪个历史故事', '文姬归汉', '霸王别姬', '苏武牧羊', '楚汉相争', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (121, '秦始皇灭六国后,统一了全国文字这种汉字称作', '隶书', '小篆', '楷书', '行书', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (122, '早在秦汉时期,台湾在三国是称为', '夷洲', '流求', '东番', '台湾', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (123, '不属于中国四大佛山的是', '普陀山', '武当山', '九华山', '峨眉山', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (124, '中国第一长洞是', '王屋山洞', '赤城山洞', '青城山洞', '双河洞', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (125, '下列哪个不是中国六大古都', '南昌', '开封', '西安', '洛阳', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (126, '龙门石窟位于下列哪个省', '河南', '甘肃', '陕西', '山东', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (127, '苗族的传统乐器是', '笙', '笛', '萧', '芦笙', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (128, '七夕节，中国人通常吃什么', '蒿饼', '巧果', '汤圆', '竹筒饭', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (129, '中国全部的少数民族语言共分几个语系', '5个', '6个', '7个', '8个', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (130, '中国古代宫殿建筑普遍采用什么颜色', '黄色', '紫色', '红色', '蓝色', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (131, '朝杖之年,耄耋之年是指多少岁', '60岁', '100岁以上', '80-100岁', '70岁', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (132, '下列哪一项不是我国著名的绿茶', '西湖龙井', '碧螺春', '庐山云雾', '铁观音', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (133, '在中国名山中,五岳占有显著的位置其中中岳指的是', '泰山', '华山', '恒山', '嵩山', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (134, '我国的戏曲脸谱最早出现在隋唐时期的', '雅乐', '燕乐', '清商乐', '蜀乐', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (135, '北方人年夜饭要一般都要吃饺子,其象征意义是', '团圆美好', '年年有余', '更岁交子', '五福临门', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (136, '一般认为,北宋风俗画《清明上河图》描绘的是什么季节的景象', '春天', '夏天', '秋天', '冬天', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (137, '《红楼梦》的四大家族中没有下列哪个姓氏', '吴', '贾', '王', '史', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (138, '下列不属于我国四大传说故事的是', '牛郎织女', '孟江女', '白蛇传', '山海经', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (139, '唐代诗人中别称为诗鬼的诗人是', '李白', '李贺', '白居易', '杜甫', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (140, '不属于文房四宝的是', '宣纸', '湖笔', '徽墨', '河砚', 'd', 0);
INSERT INTO `activity_question_bank` VALUES (141, '我国传统表示次序的天干共有几个字', '8', '10', '12', '14', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (142, '我们用羞花来形容历史上哪位美女', '西施', '杨贵妃', '貂禅', '王昭君', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (143, '文成公主与松赞干布和亲是在', '唐太宗', '唐高宗', '唐中宗', '唐玄宗', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (144, '微剧是什么传统戏剧的前身', '湘剧', '京剧', '豫剧', '川剧', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (145, '京剧服装中男性角色蟒袍上的动物是', '蛇', '凤', '龙', '虎', 'c', 0);
INSERT INTO `activity_question_bank` VALUES (146, '宰相的宰最早指', '高级官吏', '官吏统称', '低级官吏', '皇帝', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (147, '四书包括：论语、大学、孟子、 ', '礼记', '中庸', '周易', '春秋', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (148, '五代包括：后梁、后唐、后晋、后汉、 ', '东周', '后周', '南宋', '北宋', 'b', 0);
INSERT INTO `activity_question_bank` VALUES (149, '苏轼的《题西林壁》如今刻在哪里', '西林寺', '东林寺', '庐山', '龙虎山', 'a', 0);
INSERT INTO `activity_question_bank` VALUES (150, '交头接耳这个成语出自下列哪部作品', '水浒传', '三国演义', '红楼梦', '西游记', 'a', 0);

-- ----------------------------
-- Table structure for activity_type
-- ----------------------------
DROP TABLE IF EXISTS `activity_type`;
CREATE TABLE `activity_type`  (
  `acty_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `acty_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动类型名字',
  `begin_time` datetime NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '活动结束时间',
  PRIMARY KEY (`acty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity_type
-- ----------------------------
INSERT INTO `activity_type` VALUES (1, '元旦活动', '2018-12-25 09:21:19', '2019-06-28 10:51:31');

-- ----------------------------
-- Table structure for activity_user
-- ----------------------------
DROP TABLE IF EXISTS `activity_user`;
CREATE TABLE `activity_user`  (
  `actu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动用户的自增id',
  `acty_id` int(11) NOT NULL COMMENT '所属活动类型id',
  `actp_id` int(11) NULL DEFAULT NULL COMMENT '所属活动奖品id',
  `actu_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `actu_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户联系方式',
  `actu_getprize_count` int(3) NULL DEFAULT NULL COMMENT '剩余抽奖次数',
  `actu_login_rank` int(11) NULL DEFAULT NULL COMMENT '当天登录名次',
  `actu_login_time` datetime NULL DEFAULT NULL COMMENT '用户访问时间',
  `actu_getprize_time` datetime NULL DEFAULT NULL COMMENT '获取奖品日期',
  `actu_epginfo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户EGP参数',
  PRIMARY KEY (`actu_id`) USING BTREE,
  INDEX `actu_name`(`actu_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity_user
-- ----------------------------
INSERT INTO `activity_user` VALUES (47, 1, NULL, 'iptv_test', '00000000000', 0, 1, '2019-06-10 10:14:18', NULL, NULL);
INSERT INTO `activity_user` VALUES (48, 1, NULL, 'ynwl_test', '', 2, 1, '2019-06-12 10:37:38', NULL, NULL);

-- ----------------------------
-- Table structure for activity_user_attach
-- ----------------------------
DROP TABLE IF EXISTS `activity_user_attach`;
CREATE TABLE `activity_user_attach`  (
  `actu_attach_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动用户的自增id',
  `acty_attach_id` int(11) NOT NULL COMMENT '所属活动类型id',
  `actu_attach_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `actu_attach1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段1',
  `actu_attach2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段2',
  `actu_attach3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段3',
  `actu_attach4` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段4',
  `actu_attach5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段5',
  `actu_attach6` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加字段6',
  PRIMARY KEY (`actu_attach_id`) USING BTREE,
  UNIQUE INDEX `acty_attach_id`(`acty_attach_id`, `actu_attach_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for advert
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert`  (
  `advert_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `advty_id` int(11) NOT NULL COMMENT '广告类型ID',
  `game_id` int(11) NULL DEFAULT NULL COMMENT '游戏ID，0则为活动',
  `advert_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告名称,不填为游戏',
  `advert_url` varchar(640) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告地址',
  `advert_param` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否带参数，0不带参数，1带参数',
  `advert_focus_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告位选中图标',
  `advert_no_focus_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '广告位不选中图标',
  `advert_focus_smallimg` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告位选中小图标',
  `advert_no_focus_smallimg` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告位不选中小图标',
  `advert_focus_bigimg` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告位选中大图标',
  `advert_no_focus_bigimg` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告位不选中大图标',
  `advert_sort` int(3) NOT NULL DEFAULT 1 COMMENT '排序,数字越大越排前',
  `advert_online` tinyint(2) NOT NULL DEFAULT 2 COMMENT '广告是否上线，0下线，1上线，2测试',
  `advert_add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `advert_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无' COMMENT '广告名称',
  PRIMARY KEY (`advert_id`) USING BTREE,
  INDEX `advert_type_id_index`(`advty_id`) USING BTREE,
  INDEX `advert_id_index`(`advert_id`) USING BTREE,
  INDEX `advert_online_index`(`advert_online`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES (1, 1, 1, NULL, '', 0, NULL, 'advert/153725277901694.png', NULL, 'advert/1533719706526184.png', NULL, 'advert/1533719706526344.png', 8, 1, '2018-09-18 14:39:39', '绝地求生');
INSERT INTO `advert` VALUES (2, 1, 2, NULL, '', 0, NULL, 'advert/1537252785634820.png', NULL, 'advert/1533719953416951.png', NULL, 'advert/1533719953414578.png', 1, 1, '2018-09-18 14:39:45', '开心消消乐');
INSERT INTO `advert` VALUES (3, 1, 3, NULL, '', 0, NULL, 'advert/1537252792387666.png', NULL, 'advert/1533721383722365.png', NULL, 'advert/1533721383721770.png', 1, 1, '2018-09-18 14:39:52', '赛尔号');
INSERT INTO `advert` VALUES (4, 1, 4, NULL, '', 0, NULL, 'advert/1537252804336310.png', NULL, 'advert/1533721345274203.png', NULL, 'advert/1533721345272545.png', 7, 1, '2018-09-18 14:40:04', '丧尸围城');
INSERT INTO `advert` VALUES (5, 1, 5, NULL, '', 0, NULL, 'advert/1537252810907711.png', NULL, 'advert/1533721510545835.png', NULL, 'advert/1533721510544499.png', 2, 1, '2018-09-19 10:51:38', '算数小萌熊');
INSERT INTO `advert` VALUES (6, 1, 6, NULL, '', 0, NULL, 'advert/1537252816561464.png', NULL, 'advert/1533721572585731.png', NULL, 'advert/153372157258429.png', 6, 1, '2018-09-19 16:39:02', '王之荣耀');
INSERT INTO `advert` VALUES (7, 1, 7, NULL, '', 0, NULL, 'advert/1537252822139510.png', NULL, 'advert/1533721629450847.png', NULL, 'advert/1533721629449934.png', 2, 1, '2018-09-18 14:40:22', '仙道');
INSERT INTO `advert` VALUES (8, 1, 8, NULL, '', 0, NULL, 'advert/1537252830381181.png', NULL, 'advert/1533721701103636.png', NULL, 'advert/1533721701102221.png', 5, 1, '2018-09-18 14:40:30', '小小蜘蛛人');
INSERT INTO `advert` VALUES (9, 2, 1, NULL, '', 0, NULL, 'advert/1537252839038347.png', NULL, 'advert/1533721784307430.png', NULL, 'advert/1533721784306340.png', 1, 1, '2018-09-18 14:40:39', 'jdqs');
INSERT INTO `advert` VALUES (10, 2, 1, NULL, '', 0, NULL, 'advert/1539049854242729.png', NULL, NULL, NULL, NULL, 2, 1, '2018-10-09 09:50:54', '绝地求生2');
INSERT INTO `advert` VALUES (11, 3, 2, NULL, '', 0, NULL, 'advert/1537346510880921.png', NULL, NULL, NULL, NULL, 1, 1, '2018-09-19 16:41:50', '休息游戏1');
INSERT INTO `advert` VALUES (12, 3, 4, NULL, '', 0, NULL, 'advert/1537346600471699.png', NULL, NULL, NULL, NULL, 2, 1, '2018-09-19 16:43:20', '休闲2');
INSERT INTO `advert` VALUES (13, 3, 2, NULL, '', 0, NULL, 'advert/1537346510880921.png', NULL, NULL, NULL, NULL, 3, 1, '2018-09-19 16:41:50', '休息游戏1');
INSERT INTO `advert` VALUES (14, 3, 4, NULL, '', 0, NULL, 'advert/1537346600471699.png', NULL, NULL, NULL, NULL, 4, 1, '2018-09-19 16:43:20', '休闲2');
INSERT INTO `advert` VALUES (15, 3, 2, NULL, '', 0, NULL, 'advert/1537346510880921.png', NULL, NULL, NULL, NULL, 5, 1, '2018-09-19 16:41:50', '休息游戏1');
INSERT INTO `advert` VALUES (16, 4, 4, NULL, '', 0, NULL, 'advert/1537346600471699.png', NULL, NULL, NULL, NULL, 6, 1, '2018-10-09 16:44:15', '休闲2');
INSERT INTO `advert` VALUES (17, 7, 1, NULL, '', 0, NULL, 'advert/1537840453046636.png', NULL, NULL, NULL, NULL, 1, 1, '2018-09-25 14:16:34', '游戏分类-休闲益智');
INSERT INTO `advert` VALUES (18, 7, 2, NULL, '', 0, NULL, 'advert/1537845379135453.png', NULL, NULL, NULL, NULL, 2, 1, '2018-10-08 10:16:40', '游戏分类-休闲益智-最新游戏');
INSERT INTO `advert` VALUES (19, 11, -1, NULL, '', 0, NULL, 'advert/1537860866493191.png', NULL, NULL, NULL, NULL, 1, 1, '2018-10-09 10:07:21', '最新活动');
INSERT INTO `advert` VALUES (20, 11, -1, NULL, '', 0, NULL, 'advert/1537860919687102.png', NULL, NULL, NULL, NULL, 1, 1, '2018-09-25 15:35:19', '最新专题');
INSERT INTO `advert` VALUES (21, 11, -1, NULL, '', 0, NULL, 'advert/1537860866493191.png', NULL, NULL, NULL, NULL, 1, 1, '2018-09-25 15:34:26', '最新活动');
INSERT INTO `advert` VALUES (22, 11, -1, NULL, '', 0, NULL, 'advert/1537860919687102.png', NULL, NULL, NULL, NULL, 1, 1, '2018-10-09 10:07:29', '最新专题');
INSERT INTO `advert` VALUES (23, 11, -1, NULL, 'http://192.168.0.72:8080/classicSummerActivity/auth.jsp?user={0}&userID={1}&zyUserToken={2}&stbType={3}&enterURL={4}', 1, NULL, 'advert/1537860866493191.png', NULL, NULL, NULL, NULL, 1, 1, '2018-10-08 10:19:31', '5月活动');
INSERT INTO `advert` VALUES (24, 12, -1, NULL, '', 0, NULL, 'advert/1537860919687102.png', NULL, NULL, NULL, NULL, 1, 1, '2018-10-09 10:08:40', '最新专题');
INSERT INTO `advert` VALUES (25, 11, -1, NULL, '', 0, NULL, 'advert/1537860866493191.png', NULL, NULL, NULL, NULL, 1, 1, '2018-09-25 15:34:26', '最新活动');
INSERT INTO `advert` VALUES (26, 12, -1, NULL, '', 0, NULL, 'advert/1537860919687102.png', NULL, NULL, NULL, NULL, 1, 1, '2018-10-09 10:08:45', '最新专题');
INSERT INTO `advert` VALUES (27, 2, 1, NULL, '', 0, NULL, 'advert/1537252839038347.png', NULL, 'advert/1533721784307430.png', NULL, 'advert/1533721784306340.png', 3, 1, '2018-09-18 14:40:39', 'jdqs');
INSERT INTO `advert` VALUES (28, 2, 1, NULL, '', 0, NULL, 'advert/1537252839038347.png', NULL, 'advert/1533721784307430.png', NULL, 'advert/1533721784306340.png', 3, 1, '2018-09-18 14:40:39', 'jdqs');

-- ----------------------------
-- Table structure for advert_type
-- ----------------------------
DROP TABLE IF EXISTS `advert_type`;
CREATE TABLE `advert_type`  (
  `advty_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告类型ID',
  `advty_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告类型名称',
  PRIMARY KEY (`advty_id`) USING BTREE,
  INDEX `advert_type_id_index`(`advty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advert_type
-- ----------------------------
INSERT INTO `advert_type` VALUES (1, '首页精彩推荐第一行');
INSERT INTO `advert_type` VALUES (2, '首页精彩推荐第二行');
INSERT INTO `advert_type` VALUES (3, '热播排行-休闲益智');
INSERT INTO `advert_type` VALUES (4, '热播排行-动作竞技');
INSERT INTO `advert_type` VALUES (5, '热播排行-角色扮演');
INSERT INTO `advert_type` VALUES (6, '热播排行-策略游戏');
INSERT INTO `advert_type` VALUES (7, '游戏分类-休闲益智-最新游戏');
INSERT INTO `advert_type` VALUES (8, '游戏分类-动作竞技-最新游戏');
INSERT INTO `advert_type` VALUES (9, '游戏分类-角色扮演-最新游戏');
INSERT INTO `advert_type` VALUES (10, '游戏分类-策略游戏-最新游戏');
INSERT INTO `advert_type` VALUES (11, '活动专题-精彩专题');
INSERT INTO `advert_type` VALUES (12, '活动专题-精彩活动');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `comp_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名',
  `comp_address` varchar(126) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司地址',
  `comp_user_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司商务联系人',
  `comp_user_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司商务联系人电话',
  PRIMARY KEY (`comp_id`) USING BTREE,
  INDEX `comp_name_index`(`comp_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '深圳市友能网络科技有限公司', '深圳市宝安区', NULL, NULL);
INSERT INTO `company` VALUES (2, '汇联众合', '北京市海淀区高粱桥斜街中坤大厦801', NULL, NULL);

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `game_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏ID',
  `gamet_id` int(11) NULL DEFAULT NULL COMMENT '游戏类型ID',
  `comp_id` int(11) NULL DEFAULT NULL COMMENT '公司ID',
  `game_name_cn` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏中文名',
  `game_name_en` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏英文名',
  `game_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏地址',
  `game_apk` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏APK地址',
  `game_version` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '游戏版本号',
  `game_focus_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏图标选中图标',
  `game_no_focus_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏图标未选中图标',
  `game_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏介绍文字',
  `game_detail_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏介绍图片',
  `game_jar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏jar地址',
  `game_jad` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏jad地址',
  `game_param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '游戏参数配置',
  `game_resource` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏资源',
  `game_online` tinyint(2) NOT NULL DEFAULT 2 COMMENT '游戏是否上线，0不上线，1上线，2测试',
  `game_free` tinyint(2) NOT NULL DEFAULT 0 COMMENT '游戏是否免费，0不免费，1免费，2试玩',
  `game_sort` tinyint(2) NOT NULL DEFAULT 1 COMMENT '游戏排序,数字越大越排前',
  `game_update_time` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `game_add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`game_id`) USING BTREE,
  INDEX `game_id_index`(`game_id`) USING BTREE,
  INDEX `game_tid_index`(`gamet_id`) USING BTREE,
  INDEX `game_online_index`(`game_online`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, 1, 1, '绝地求生', 'jdqs', NULL, NULL, '1', 'game/jdqs/1537253066488967.png', 'game/jdqs/153784231724130.png', '一游戏', 'game/jdqs/1538012034325631.png', 'game/jdqs/IPTV_JDQS.jar', 'game/jdqs/IPTV_JDQS.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/jdqs/jdqs.zip', 1, 1, 8, '2018-10-09 17:42:50', '2018-08-08 17:14:30');
INSERT INTO `game` VALUES (2, 2, 1, '开心消消乐', 'kxxxl', NULL, NULL, '1', 'game/kxxxl/1537324753369235.png', 'game/kxxxl/1537842252670405.png', '一游戏2', 'game/kxxxl/1537324740029211.png', 'game/kxxxl/IPTV_TTXXL.jar', 'game/kxxxl/IPTV_TTXXL.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', NULL, 1, 1, 1, '2018-09-25 10:24:12', '2018-08-08 17:16:21');
INSERT INTO `game` VALUES (3, 1, 1, '赛尔号', 'srh', NULL, NULL, '1', 'game/srh/1537323986624138.png', 'game/srh/1537842294268199.png', '一游戏3', 'game/srh/1537320796910460.png', 'game/srh/IPTV_SEH.jar', 'game/srh/IPTV_SEH.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', NULL, 1, 1, 2, '2018-09-25 10:24:54', '2018-08-08 17:20:45');
INSERT INTO `game` VALUES (4, 1, 1, '丧尸围城', 'sswc', NULL, NULL, '3', 'game/sswc/153732406035020.png', 'game/sswc/153784230235864.png', '一游戏4', 'game/sswc/1537320806442508.png', 'game/sswc/deadrising.jar', 'game/sswc/deadrising.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/sswc/sswcSD.zip', 1, 1, 3, '2018-09-25 10:25:02', '2018-08-08 17:42:05');
INSERT INTO `game` VALUES (5, 1, 1, '算数小萌熊', 'sxxmx', NULL, NULL, '1', 'game/sxxmx/1537324023795661.png', 'game/sxxmx/1537842387837258.png', '一游戏5', 'game/sxxmx/1537320818194331.png', 'game/sxxmx/IPTV_JX_SSXMX.jar', 'game/sxxmx/IPTV_JX_SSXMX.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', NULL, 1, 1, 5, '2018-09-25 11:10:12', '2018-08-08 17:44:37');
INSERT INTO `game` VALUES (6, 1, 1, '王之荣耀', 'wzry', NULL, NULL, '1', 'game/wzry/1537324030122786.png', 'game/wzry/1537842331009563.png', '一游戏6', 'game/wzry/1537320823778853.png', 'game/wzry/Kingglory.jar', 'game/wzry/Kingglory.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/wzry/WZRY.zip', 1, 1, 6, '2018-09-25 11:10:17', '2018-08-08 17:45:54');
INSERT INTO `game` VALUES (7, 1, 1, '仙道', 'xd', NULL, NULL, '1', 'game/xd/1537324041106764.png', 'game/xd/1537842342252608.png', '一游戏7', 'game/xd/1537320830099185.png', 'game/xd/BiographyIlRd.jar', 'game/xd/BiographyIlRd.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xd/BiographyIlRd.zip', 1, 1, 9, '2018-09-25 11:09:18', '2018-08-08 17:46:45');
INSERT INTO `game` VALUES (8, 1, 1, '小小蜘蛛人', 'xxzzr', NULL, NULL, '1', 'game/xxzzr/1537324048055575.png', 'game/xxzzr/1537842352328544.png', '一游戏8', 'game/xxzzr/1537320835239488.png', 'game/xxzzr/XXZZR.jar', 'game/xxzzr/XXZZR.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xxzzr/LittleSpiderMan.zip', 1, 1, 10, '2018-09-25 11:07:31', '2018-08-08 17:47:55');
INSERT INTO `game` VALUES (9, 1, 1, '小小蜘蛛人', 'xxzzr', NULL, NULL, '1', 'game/xxzzr/1537324054175669.png', 'game/xxzzr/1537842352328544.png', '一游戏9', 'game/xxzzr/1537320840897351.png', 'game/xxzzr/XXZZR.jar', 'game/xxzzr/XXZZR.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xxzzr/LittleSpiderMan.zip', 1, 1, 11, '2018-09-25 11:07:13', '2018-08-08 17:47:55');
INSERT INTO `game` VALUES (10, 1, 1, '算数小萌熊', 'sxxmx', NULL, NULL, '1', 'game/sxxmx/1537324023795661.png', 'game/sxxmx/1537842387837258.png', '一游戏5', 'game/sxxmx/1537320818194331.png', 'game/sxxmx/IPTV_JX_SSXMX.jar', 'game/sxxmx/IPTV_JX_SSXMX.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', NULL, 1, 1, 12, '2018-09-25 11:07:08', '2018-08-08 17:44:37');
INSERT INTO `game` VALUES (11, 1, 1, '王之荣耀', 'wzry', NULL, NULL, '1', 'game/wzry/1537324030122786.png', 'game/wzry/1537842331009563.png', '一游戏6', 'game/wzry/1537320823778853.png', 'game/wzry/Kingglory.jar', 'game/wzry/Kingglory.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/wzry/WZRY.zip', 1, 1, 13, '2018-09-25 11:07:03', '2018-08-08 17:45:54');
INSERT INTO `game` VALUES (12, 1, 1, '仙道', 'xd', NULL, NULL, '1', 'game/xd/1537324041106764.png', 'game/xd/1537842342252608.png', '一游戏7', 'game/xd/1537320830099185.png', 'game/xd/BiographyIlRd.jar', 'game/xd/BiographyIlRd.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xd/BiographyIlRd.zip', 1, 1, 14, '2018-09-25 11:06:58', '2018-08-08 17:46:45');
INSERT INTO `game` VALUES (13, 1, 1, '小小蜘蛛人', 'xxzzr', NULL, NULL, '1', 'game/xxzzr/1537324048055575.png', 'game/sxxmx/1537842387837258.png', '一游戏8', 'game/xxzzr/1537320835239488.png', 'game/xxzzr/XXZZR.jar', 'game/xxzzr/XXZZR.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xxzzr/LittleSpiderMan.zip', 1, 1, 15, '2018-09-25 11:06:53', '2018-08-08 17:47:55');
INSERT INTO `game` VALUES (14, 1, 1, '小小蜘蛛人', 'xxzzr', NULL, NULL, '1', 'game/xxzzr/1537324054175669.png', 'game/xxzzr/1537842359370419.png', '一游戏9', 'game/xxzzr/1537320840897351.png', 'game/xxzzr/XXZZR.jar', 'game/xxzzr/XXZZR.jad', '<param name=\"focusCancel\" value=\"false\" />\n<param name=\"authCode\" value=\"0\" />\n<param name=\"connectType\" value=\"2\" />\n<param name=\"sound\" value=\"1\" />\n<param name=\"playLimitTime\" value=\"0\" />\n', 'game/xxzzr/LittleSpiderMan.zip', 1, 1, 16, '2018-09-25 11:06:48', '2018-08-08 17:47:55');

-- ----------------------------
-- Table structure for game_record
-- ----------------------------
DROP TABLE IF EXISTS `game_record`;
CREATE TABLE `game_record`  (
  `game_id` int(11) NOT NULL DEFAULT 0 COMMENT '游戏ID',
  `user_account` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户账号',
  `game_add_time` datetime NOT NULL COMMENT '游戏添加时间',
  `game_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`game_id`, `user_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏启动记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of game_record
-- ----------------------------
INSERT INTO `game_record` VALUES (1, 'iptv_test', '2018-10-09 17:42:56', '2018-10-09 17:50:39');
INSERT INTO `game_record` VALUES (1, 'ynwl_test', '2018-10-09 17:00:23', '2018-10-12 11:09:57');
INSERT INTO `game_record` VALUES (2, 'ynwl_test', '2018-10-09 16:31:46', '2018-10-12 11:09:52');
INSERT INTO `game_record` VALUES (3, 'ynwl_test', '2018-10-09 17:01:27', '2018-10-09 17:15:47');
INSERT INTO `game_record` VALUES (4, 'ynwl_test', '2018-10-09 16:31:41', '2018-10-12 11:09:43');
INSERT INTO `game_record` VALUES (5, 'ynwl_test', '2018-10-09 17:01:23', '2018-10-12 11:10:00');
INSERT INTO `game_record` VALUES (6, 'ynwl_test', '2018-10-09 16:54:50', '2018-10-09 17:16:35');
INSERT INTO `game_record` VALUES (7, 'ynwl_test', '2018-10-09 17:04:50', '2018-10-09 17:04:50');
INSERT INTO `game_record` VALUES (9, 'ynwl_test', '2018-10-09 16:55:05', '2018-10-09 17:01:14');
INSERT INTO `game_record` VALUES (10, 'ynwl_test', '2018-10-09 17:00:18', '2018-10-09 17:00:18');
INSERT INTO `game_record` VALUES (11, 'ynwl_test', '2018-10-09 17:00:21', '2018-10-09 17:32:34');
INSERT INTO `game_record` VALUES (12, 'ynwl_test', '2018-10-09 16:59:21', '2018-10-09 17:32:32');
INSERT INTO `game_record` VALUES (13, 'ynwl_test', '2018-10-09 17:08:53', '2018-10-09 17:08:53');
INSERT INTO `game_record` VALUES (14, 'ynwl_test', '2018-10-09 17:31:19', '2018-10-09 17:31:19');

-- ----------------------------
-- Table structure for game_type
-- ----------------------------
DROP TABLE IF EXISTS `game_type`;
CREATE TABLE `game_type`  (
  `gamet_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏类型ID',
  `gamet_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏类型名',
  PRIMARY KEY (`gamet_id`) USING BTREE,
  INDEX `gamet_name_index`(`gamet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of game_type
-- ----------------------------
INSERT INTO `game_type` VALUES (1, '休闲益智');
INSERT INTO `game_type` VALUES (2, '动作竞技\r');
INSERT INTO `game_type` VALUES (3, '角色扮演');
INSERT INTO `game_type` VALUES (4, '策略游戏\r');

-- ----------------------------
-- Table structure for intercept
-- ----------------------------
DROP TABLE IF EXISTS `intercept`;
CREATE TABLE `intercept`  (
  `inte_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拦截ID',
  `inty_id` int(11) NOT NULL COMMENT '拦截类型ID',
  `inte_online` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否在线，0下线，1上线',
  `inte_param` tinyint(2) NULL DEFAULT 0 COMMENT '是否带参数，0否，1是',
  `inte_url` varchar(640) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拦截地址',
  PRIMARY KEY (`inte_id`) USING BTREE,
  INDEX `inte_id_index`(`inty_id`) USING BTREE,
  INDEX `inty_id_index`(`inty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拦截表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for intercept_type
-- ----------------------------
DROP TABLE IF EXISTS `intercept_type`;
CREATE TABLE `intercept_type`  (
  `inty_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拦截类型ID',
  `inty_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拦截类型中文名',
  `inty_name_en` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拦截类型英文名',
  PRIMARY KEY (`inty_id`) USING BTREE,
  INDEX `inty_name_index`(`inty_name`) USING BTREE,
  INDEX `inty_id_index`(`inty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拦截类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of intercept_type
-- ----------------------------
INSERT INTO `intercept_type` VALUES (1, '大厅首页拦截', 'home_index');
INSERT INTO `intercept_type` VALUES (2, '大厅首页退出拦截', 'home_exit');
INSERT INTO `intercept_type` VALUES (3, '免费游戏退出拦截', 'miantuilan');
INSERT INTO `intercept_type` VALUES (4, '拦截下线', 'offlinelanjie');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `sysl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `sysl_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `sysl_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `sysl_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ip',
  `sys_time` datetime NOT NULL COMMENT '日志时间',
  PRIMARY KEY (`sysl_id`) USING BTREE,
  INDEX `sysl_name_index`(`sysl_name`) USING BTREE COMMENT '日志用户账号索引'
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=大厅后台管理系统&sysSetting.set_url=http://124.132.254.204:20010/qiduowangguoRES/upload/&sysSetting.set_upload=/data/tomcat/tomcat7_fengbaobuluo/nginxRes/qiduowangguoRES/upload&sysSetting.set_tm_upload=/data/workspaces/tomcat7_fengbaobuluo/tomcat_first/ROOT/qiduowangguoRES/upload&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '183.15.207.181', '2018-08-03 17:02:00');
INSERT INTO `sys_log` VALUES (2, '管家33', '[用户ID]:1,[控制器]:/sysRole,[方法]:add,[参数]:sysRole.sysr_name=运营角色&sysRole.sysr_note=部分权限', '183.15.207.181', '2018-08-03 17:25:05');
INSERT INTO `sys_log` VALUES (3, '管家33', '[用户ID]:1,[控制器]:/sysRole,[方法]:auth,[参数]:sysr_id=2&auth=19,21,43,80,76,46,45,44,20,70,23,22,58,59,68,61,60,63,66,65,64,47,48,49,50,28,25,52,51,26,75,74,72,69,27,67,55,54,29,30,71,32,31,34,35,39,38,37,36,57,41,40', '183.15.207.181', '2018-08-03 17:26:35');
INSERT INTO `sys_log` VALUES (4, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=奇多王国大厅后台管理系统&sysSetting.set_url=http://124.132.254.204:20010/qiduowangguoRES/upload/&sysSetting.set_upload=/data/tomcat/tomcat7_fengbaobuluo/nginxRes/qiduowangguoRES/upload&sysSetting.set_tm_upload=/data/workspaces/tomcat7_fengbaobuluo/tomcat_first/ROOT/qiduowangguoRES/upload&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '183.15.206.10', '2018-08-06 10:06:07');
INSERT INTO `sys_log` VALUES (5, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=反斗城大厅后台管理系统&sysSetting.set_url=http://124.132.254.204:20010/fandouchengRES/upload/&sysSetting.set_upload=/data/tomcat/tomcat7_fengbaobuluo/nginxRes/fandouchengRES/upload&sysSetting.set_tm_upload=/data/workspaces/tomcat7_fengbaobuluo/tomcat_first/ROOT/fandouchengRES/upload&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '183.15.206.10', '2018-08-06 10:46:32');
INSERT INTO `sys_log` VALUES (6, '管家33', '[用户ID]:1,[控制器]:/sysUser,[方法]:add,[参数]:sysUser.sysu_account=chenqq&sysUser.sysu_password=chenqq0721&sysUser.sysu_name=陈巧琦&roleId=2&sysUser.sysu_status=0', '183.15.206.10', '2018-08-06 11:04:01');
INSERT INTO `sys_log` VALUES (7, '管家33', '[用户ID]:1,[控制器]:/sysUser,[方法]:edit,[参数]:sysu_id=2&sysUser.sysu_id=2&sysUser.sysu_account=chenqq&sysUser.sysu_password=&sysUser.sysu_name=陈巧琦&roleId=1&sysUser.sysu_status=1', '183.15.206.10', '2018-08-06 11:04:06');
INSERT INTO `sys_log` VALUES (8, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '183.15.204.139', '2018-08-08 17:14:30');
INSERT INTO `sys_log` VALUES (9, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=8&advert.advert_online=1&advert.game_id=1&advert.advert_param=0&advert.advert_title=绝地求生&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:15:06');
INSERT INTO `sys_log` VALUES (10, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '183.15.204.139', '2018-08-08 17:16:21');
INSERT INTO `sys_log` VALUES (11, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=2&advert.advert_param=0&advert.advert_title=开心消消乐&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:19:13');
INSERT INTO `sys_log` VALUES (12, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=赛尔号&game.game_sort=2&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=srh&game.game_version=1', '183.15.204.139', '2018-08-08 17:20:45');
INSERT INTO `sys_log` VALUES (13, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=3&advert.advert_param=0&advert.advert_title=赛尔号&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:21:46');
INSERT INTO `sys_log` VALUES (14, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=丧尸围城&game.game_sort=3&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sswc&game.game_version=3', '183.15.204.139', '2018-08-08 17:42:05');
INSERT INTO `sys_log` VALUES (15, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=7&advert.advert_online=1&advert.game_id=4&advert.advert_param=0&advert.advert_title=丧尸围城&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:42:25');
INSERT INTO `sys_log` VALUES (16, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=3&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=3&advert.advert_url=http://&advert.advert_title=赛尔号&advert.game_id=3', '183.15.204.139', '2018-08-08 17:42:51');
INSERT INTO `sys_log` VALUES (17, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=3&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=3&advert.advert_url=http://&advert.advert_title=赛尔号&advert.game_id=3', '183.15.204.139', '2018-08-08 17:43:03');
INSERT INTO `sys_log` VALUES (18, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '183.15.204.139', '2018-08-08 17:44:37');
INSERT INTO `sys_log` VALUES (19, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=2&advert.advert_online=1&advert.game_id=5&advert.advert_param=0&advert.advert_title=算数小萌熊&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:45:10');
INSERT INTO `sys_log` VALUES (20, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '183.15.204.139', '2018-08-08 17:45:54');
INSERT INTO `sys_log` VALUES (21, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=6&advert.advert_online=1&advert.game_id=6&advert.advert_param=0&advert.advert_title=王之荣耀&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:46:12');
INSERT INTO `sys_log` VALUES (22, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=仙道&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '183.15.204.139', '2018-08-08 17:46:45');
INSERT INTO `sys_log` VALUES (23, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=2&advert.advert_online=1&advert.game_id=7&advert.advert_param=0&advert.advert_title=仙道&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:47:09');
INSERT INTO `sys_log` VALUES (24, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:add,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '183.15.204.139', '2018-08-08 17:47:55');
INSERT INTO `sys_log` VALUES (25, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=5&advert.advert_online=1&advert.game_id=8&advert.advert_param=0&advert.advert_title=小小蜘蛛人&advert.advty_id=1&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:48:21');
INSERT INTO `sys_log` VALUES (26, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=1&advert.advert_param=0&advert.advert_title=jdqs&advert.advty_id=2&advert.advert_url=http://', '183.15.204.139', '2018-08-08 17:49:44');
INSERT INTO `sys_log` VALUES (27, '陈巧琦', '[用户ID]:2,[控制器]:/game,[方法]:edit,[参数]:game.game_param=authCode=0sound=1focusCancel=falseplayLimitTime=0connectType=2&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=1&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '183.15.204.132', '2018-08-13 16:59:32');
INSERT INTO `sys_log` VALUES (28, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=反斗城大厅后台管理系统&sysSetting.set_url=http://124.132.254.204:20010/fandouchengRES/upload/&sysSetting.set_upload=D:/Program Files/nginx-1.13.5/html/fandouchengRES/upload/&sysSetting.set_tm_upload=D:/Program Files/nginx-1.13.5/html/fandouchengRES/upload/&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '192.168.200.96', '2018-08-28 14:57:34');
INSERT INTO `sys_log` VALUES (29, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=8&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=8&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-07 16:33:31');
INSERT INTO `sys_log` VALUES (30, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-07 16:33:46');
INSERT INTO `sys_log` VALUES (31, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-07 16:34:25');
INSERT INTO `sys_log` VALUES (32, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=9&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=9&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-07 17:03:02');
INSERT INTO `sys_log` VALUES (33, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=反斗城大厅后台管理系统&sysSetting.set_url=http://127.0.0.1:8123/fandouchengRES/upload/&sysSetting.set_upload=D:/Program Files/nginx-1.13.5/html/fandouchengRES/upload/&sysSetting.set_tm_upload=D:/Program Files/nginx-1.13.5/html/fandouchengRES/upload/&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '192.168.200.96', '2018-09-14 17:35:29');
INSERT INTO `sys_log` VALUES (34, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=反斗城大厅后台管理系统&sysSetting.set_url=http://127.0.0.1:8123/fengcheleyuanRES/upload/&sysSetting.set_upload=D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/upload/&sysSetting.set_tm_upload=D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/upload/&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '192.168.200.96', '2018-09-18 09:23:07');
INSERT INTO `sys_log` VALUES (35, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=1&advertType.advty_id=1&advertType.advty_name=首页精彩推荐第一行', '192.168.200.96', '2018-09-18 09:24:56');
INSERT INTO `sys_log` VALUES (36, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=2&advertType.advty_id=2&advertType.advty_name=首页精彩推荐第二行', '192.168.200.96', '2018-09-18 09:25:07');
INSERT INTO `sys_log` VALUES (37, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=1&advert.advert_sort=8&advert.advty_id=1&advert.advert_online=1&advert_id=1&advert.advert_url=http://&advert.advert_title=绝地求生&advert.game_id=1', '192.168.200.96', '2018-09-18 14:25:45');
INSERT INTO `sys_log` VALUES (38, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=2&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=2&advert.advert_url=http://&advert.advert_title=开心消消乐&advert.game_id=2', '192.168.200.96', '2018-09-18 14:27:02');
INSERT INTO `sys_log` VALUES (39, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=3&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=3&advert.advert_url=http://&advert.advert_title=赛尔号&advert.game_id=3', '192.168.200.96', '2018-09-18 14:27:14');
INSERT INTO `sys_log` VALUES (40, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=4&advert.advert_sort=7&advert.advty_id=1&advert.advert_online=1&advert_id=4&advert.advert_url=http://&advert.advert_title=丧尸围城&advert.game_id=4', '192.168.200.96', '2018-09-18 14:27:29');
INSERT INTO `sys_log` VALUES (41, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=5&advert.advert_sort=2&advert.advty_id=1&advert.advert_online=1&advert_id=5&advert.advert_url=http://&advert.advert_title=算数小萌熊&advert.game_id=5', '192.168.200.96', '2018-09-18 14:27:38');
INSERT INTO `sys_log` VALUES (42, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=6&advert.advert_sort=6&advert.advty_id=1&advert.advert_online=1&advert_id=6&advert.advert_url=http://&advert.advert_title=王之荣耀&advert.game_id=6', '192.168.200.96', '2018-09-18 14:27:46');
INSERT INTO `sys_log` VALUES (43, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=7&advert.advert_sort=2&advert.advty_id=1&advert.advert_online=1&advert_id=7&advert.advert_url=http://&advert.advert_title=仙道&advert.game_id=7', '192.168.200.96', '2018-09-18 14:27:52');
INSERT INTO `sys_log` VALUES (44, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=8&advert.advert_sort=5&advert.advty_id=1&advert.advert_online=1&advert_id=8&advert.advert_url=http://&advert.advert_title=小小蜘蛛人&advert.game_id=8', '192.168.200.96', '2018-09-18 14:28:02');
INSERT INTO `sys_log` VALUES (45, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=9&advert.advert_sort=1&advert.advty_id=2&advert.advert_online=1&advert_id=9&advert.advert_url=http://&advert.advert_title=jdqs&advert.game_id=1', '192.168.200.96', '2018-09-18 14:28:10');
INSERT INTO `sys_log` VALUES (46, '管家33', '[用户ID]:1,[控制器]:/sysSetting,[方法]:edit,[参数]:set_id=1&sysSetting.set_id=1&sysSetting.set_title=反斗城大厅后台管理系统&sysSetting.set_url=http://127.0.0.1:8123/fengcheleyuanRES/&sysSetting.set_upload=D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/&sysSetting.set_tm_upload=D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/&sysSetting.set_publickey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB&initRSA=0', '192.168.200.96', '2018-09-18 14:29:36');
INSERT INTO `sys_log` VALUES (47, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=9&advert.advert_sort=1&advert.advty_id=2&advert.advert_online=1&advert_id=9&advert.advert_url=http://&advert.advert_title=jdqs&advert.game_id=1', '192.168.200.96', '2018-09-18 14:35:41');
INSERT INTO `sys_log` VALUES (48, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=1&advert.advert_sort=8&advert.advty_id=1&advert.advert_online=1&advert_id=1&advert.advert_url=http://&advert.advert_title=绝地求生&advert.game_id=1', '192.168.200.96', '2018-09-18 14:39:39');
INSERT INTO `sys_log` VALUES (49, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=2&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=2&advert.advert_url=http://&advert.advert_title=开心消消乐&advert.game_id=2', '192.168.200.96', '2018-09-18 14:39:45');
INSERT INTO `sys_log` VALUES (50, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=3&advert.advert_sort=1&advert.advty_id=1&advert.advert_online=1&advert_id=3&advert.advert_url=http://&advert.advert_title=赛尔号&advert.game_id=3', '192.168.200.96', '2018-09-18 14:39:52');
INSERT INTO `sys_log` VALUES (51, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=4&advert.advert_sort=7&advert.advty_id=1&advert.advert_online=1&advert_id=4&advert.advert_url=http://&advert.advert_title=丧尸围城&advert.game_id=4', '192.168.200.96', '2018-09-18 14:39:58');
INSERT INTO `sys_log` VALUES (52, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=4&advert.advert_sort=7&advert.advty_id=1&advert.advert_online=1&advert_id=4&advert.advert_url=http://&advert.advert_title=丧尸围城&advert.game_id=4', '192.168.200.96', '2018-09-18 14:40:04');
INSERT INTO `sys_log` VALUES (53, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=5&advert.advert_sort=2&advert.advty_id=1&advert.advert_online=1&advert_id=5&advert.advert_url=http://&advert.advert_title=算数小萌熊&advert.game_id=5', '192.168.200.96', '2018-09-18 14:40:10');
INSERT INTO `sys_log` VALUES (54, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=6&advert.advert_sort=6&advert.advty_id=1&advert.advert_online=1&advert_id=6&advert.advert_url=http://&advert.advert_title=王之荣耀&advert.game_id=6', '192.168.200.96', '2018-09-18 14:40:16');
INSERT INTO `sys_log` VALUES (55, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=7&advert.advert_sort=2&advert.advty_id=1&advert.advert_online=1&advert_id=7&advert.advert_url=http://&advert.advert_title=仙道&advert.game_id=7', '192.168.200.96', '2018-09-18 14:40:22');
INSERT INTO `sys_log` VALUES (56, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=8&advert.advert_sort=5&advert.advty_id=1&advert.advert_online=1&advert_id=8&advert.advert_url=http://&advert.advert_title=小小蜘蛛人&advert.game_id=8', '192.168.200.96', '2018-09-18 14:40:30');
INSERT INTO `sys_log` VALUES (57, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=9&advert.advert_sort=1&advert.advty_id=2&advert.advert_online=1&advert_id=9&advert.advert_url=http://&advert.advert_title=jdqs&advert.game_id=1', '192.168.200.96', '2018-09-18 14:40:39');
INSERT INTO `sys_log` VALUES (58, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=1&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '192.168.200.96', '2018-09-18 14:44:26');
INSERT INTO `sys_log` VALUES (59, '管家33', '[用户ID]:1,[控制器]:/gameType,[方法]:edit,[参数]:gamet_id=4&gameType.gamet_id=4&gameType.gamet_name=策略', '192.168.200.96', '2018-09-18 16:24:30');
INSERT INTO `sys_log` VALUES (60, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=1&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '192.168.200.96', '2018-09-19 09:32:36');
INSERT INTO `sys_log` VALUES (61, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:11');
INSERT INTO `sys_log` VALUES (62, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=3&game.game_name_cn=赛尔号&game.game_sort=2&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=3&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=srh&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:16');
INSERT INTO `sys_log` VALUES (63, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=4&game.game_name_cn=丧尸围城&game.game_sort=3&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=4&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sswc&game.game_version=3', '192.168.200.96', '2018-09-19 09:33:26');
INSERT INTO `sys_log` VALUES (64, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:38');
INSERT INTO `sys_log` VALUES (65, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:43');
INSERT INTO `sys_log` VALUES (66, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=7&game.game_name_cn=仙道&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=7&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:50');
INSERT INTO `sys_log` VALUES (67, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=8&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=8&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-19 09:33:55');
INSERT INTO `sys_log` VALUES (68, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=9&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=&game.game_id=9&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-19 09:34:00');
INSERT INTO `sys_log` VALUES (69, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:26:08');
INSERT INTO `sys_log` VALUES (70, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=3&game.game_name_cn=赛尔号&game.game_sort=2&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏3&game.game_id=3&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=srh&game.game_version=1', '192.168.200.96', '2018-09-19 10:26:26');
INSERT INTO `sys_log` VALUES (71, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:26:43');
INSERT INTO `sys_log` VALUES (72, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=4&game.game_name_cn=丧尸围城&game.game_sort=3&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏4&game.game_id=4&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sswc&game.game_version=3', '192.168.200.96', '2018-09-19 10:26:55');
INSERT INTO `sys_log` VALUES (73, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏5&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-19 10:27:03');
INSERT INTO `sys_log` VALUES (74, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏6&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-19 10:27:10');
INSERT INTO `sys_log` VALUES (75, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=7&game.game_name_cn=仙道&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏7&game.game_id=7&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '192.168.200.96', '2018-09-19 10:27:21');
INSERT INTO `sys_log` VALUES (76, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=8&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏8&game.game_id=8&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-19 10:27:28');
INSERT INTO `sys_log` VALUES (77, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=9&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏9&game.game_id=9&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-19 10:27:34');
INSERT INTO `sys_log` VALUES (78, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=4&game.game_name_cn=丧尸围城&game.game_sort=3&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏4&game.game_id=4&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sswc&game.game_version=3', '192.168.200.96', '2018-09-19 10:27:40');
INSERT INTO `sys_log` VALUES (79, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:31:18');
INSERT INTO `sys_log` VALUES (80, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:35:23');
INSERT INTO `sys_log` VALUES (81, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:35:35');
INSERT INTO `sys_log` VALUES (82, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:35:45');
INSERT INTO `sys_log` VALUES (83, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:35:50');
INSERT INTO `sys_log` VALUES (84, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:36:07');
INSERT INTO `sys_log` VALUES (85, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:39:00');
INSERT INTO `sys_log` VALUES (86, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-19 10:39:13');
INSERT INTO `sys_log` VALUES (87, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=5&advert.advert_sort=2&advert.advty_id=2&advert.advert_online=1&advert_id=5&advert.advert_url=http://&advert.advert_title=算数小萌熊&advert.game_id=5', '192.168.200.96', '2018-09-19 10:51:23');
INSERT INTO `sys_log` VALUES (88, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=5&advert.advert_sort=2&advert.advty_id=1&advert.advert_online=1&advert_id=5&advert.advert_url=http://&advert.advert_title=算数小萌熊&advert.game_id=5', '192.168.200.96', '2018-09-19 10:51:38');
INSERT INTO `sys_log` VALUES (89, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=2&advert.advert_online=1&advert.game_id=1&advert.advert_param=0&advert.advert_title=绝地求生2&advert.advty_id=2&advert.advert_url=http://', '192.168.200.96', '2018-09-19 10:52:25');
INSERT INTO `sys_log` VALUES (90, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=热播-休闲益智', '192.168.200.96', '2018-09-19 11:49:26');
INSERT INTO `sys_log` VALUES (91, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=热播-动作竞技', '192.168.200.96', '2018-09-19 11:49:41');
INSERT INTO `sys_log` VALUES (92, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=热播排行-角色扮演', '192.168.200.96', '2018-09-19 11:49:53');
INSERT INTO `sys_log` VALUES (93, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=4&advertType.advty_id=4&advertType.advty_name=热播排行-动作竞技', '192.168.200.96', '2018-09-19 11:50:00');
INSERT INTO `sys_log` VALUES (94, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=3&advertType.advty_id=3&advertType.advty_name=热播排行-休闲益智', '192.168.200.96', '2018-09-19 11:50:07');
INSERT INTO `sys_log` VALUES (95, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=热播排行-策略游戏', '192.168.200.96', '2018-09-19 11:50:21');
INSERT INTO `sys_log` VALUES (96, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=6&advert.advert_sort=6&advert.advty_id=3&advert.advert_online=1&advert_id=6&advert.advert_url=http://&advert.advert_title=王之荣耀&advert.game_id=6', '192.168.200.96', '2018-09-19 16:38:39');
INSERT INTO `sys_log` VALUES (97, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=6&advert.advert_sort=6&advert.advty_id=1&advert.advert_online=1&advert_id=6&advert.advert_url=http://&advert.advert_title=王之荣耀&advert.game_id=6', '192.168.200.96', '2018-09-19 16:39:02');
INSERT INTO `sys_log` VALUES (98, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=2&advert.advert_param=0&advert.advert_title=休息游戏1&advert.advty_id=3&advert.advert_url=http://', '192.168.200.96', '2018-09-19 16:41:50');
INSERT INTO `sys_log` VALUES (99, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=2&advert.advert_online=1&advert.game_id=4&advert.advert_param=0&advert.advert_title=休闲2&advert.advty_id=3&advert.advert_url=http://', '192.168.200.96', '2018-09-19 16:43:20');
INSERT INTO `sys_log` VALUES (100, '管家33', '[用户ID]:1,[控制器]:/gameType,[方法]:edit,[参数]:gamet_id=1&gameType.gamet_id=1&gameType.gamet_name=休闲益智', '192.168.200.96', '2018-09-25 09:23:57');
INSERT INTO `sys_log` VALUES (101, '管家33', '[用户ID]:1,[控制器]:/gameType,[方法]:edit,[参数]:gamet_id=3&gameType.gamet_id=3&gameType.gamet_name=角色扮演', '192.168.200.96', '2018-09-25 09:24:11');
INSERT INTO `sys_log` VALUES (102, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=休闲益智-最新游戏', '192.168.200.96', '2018-09-25 09:32:09');
INSERT INTO `sys_log` VALUES (103, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=7&advertType.advty_id=7&advertType.advty_name=游戏分类-休闲益智-最新游戏', '192.168.200.96', '2018-09-25 09:32:23');
INSERT INTO `sys_log` VALUES (104, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=游戏分类-动作竞技-最新', '192.168.200.96', '2018-09-25 09:32:50');
INSERT INTO `sys_log` VALUES (105, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=游戏分类-角色扮演-最新游戏', '192.168.200.96', '2018-09-25 09:33:06');
INSERT INTO `sys_log` VALUES (106, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=8&advertType.advty_id=8&advertType.advty_name=游戏分类-动作竞技-最新游戏', '192.168.200.96', '2018-09-25 09:33:14');
INSERT INTO `sys_log` VALUES (107, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=游戏分类-策略游戏-最新游戏', '192.168.200.96', '2018-09-25 09:33:35');
INSERT INTO `sys_log` VALUES (108, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=1&advert.advert_param=0&advert.advert_title=游戏分类-休闲益智&advert.advty_id=7&advert.advert_url=http://', '192.168.200.96', '2018-09-25 09:54:13');
INSERT INTO `sys_log` VALUES (109, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=2&game.game_name_cn=开心消消乐&game.game_sort=1&game.game_online=1&game.gamet_id=2&game.game_detail=一游戏2&game.game_id=2&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=kxxxl&game.game_version=1', '192.168.200.96', '2018-09-25 10:24:12');
INSERT INTO `sys_log` VALUES (110, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=3&game.game_name_cn=赛尔号&game.game_sort=2&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏3&game.game_id=3&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=srh&game.game_version=1', '192.168.200.96', '2018-09-25 10:24:54');
INSERT INTO `sys_log` VALUES (111, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=4&game.game_name_cn=丧尸围城&game.game_sort=3&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏4&game.game_id=4&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sswc&game.game_version=3', '192.168.200.96', '2018-09-25 10:25:02');
INSERT INTO `sys_log` VALUES (112, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏&game.game_id=1&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '192.168.200.96', '2018-09-25 10:25:17');
INSERT INTO `sys_log` VALUES (113, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏6&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-25 10:25:31');
INSERT INTO `sys_log` VALUES (114, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=7&game.game_name_cn=仙道&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏7&game.game_id=7&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '192.168.200.96', '2018-09-25 10:25:42');
INSERT INTO `sys_log` VALUES (115, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=8&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏8&game.game_id=8&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 10:25:52');
INSERT INTO `sys_log` VALUES (116, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=9&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏9&game.game_id=9&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 10:25:59');
INSERT INTO `sys_log` VALUES (117, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏5&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-25 10:26:27');
INSERT INTO `sys_log` VALUES (118, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=14&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏9&game.game_id=14&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 11:06:48');
INSERT INTO `sys_log` VALUES (119, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=13&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏8&game.game_id=13&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 11:06:53');
INSERT INTO `sys_log` VALUES (120, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=12&game.game_name_cn=仙道&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏7&game.game_id=12&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '192.168.200.96', '2018-09-25 11:06:58');
INSERT INTO `sys_log` VALUES (121, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=11&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏6&game.game_id=11&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-25 11:07:04');
INSERT INTO `sys_log` VALUES (122, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=10&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏5&game.game_id=10&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-25 11:07:09');
INSERT INTO `sys_log` VALUES (123, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=9&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏9&game.game_id=9&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 11:07:13');
INSERT INTO `sys_log` VALUES (124, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=8&game.game_name_cn=小小蜘蛛人&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏8&game.game_id=8&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xxzzr&game.game_version=1', '192.168.200.96', '2018-09-25 11:07:31');
INSERT INTO `sys_log` VALUES (125, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=7&game.game_name_cn=仙道&game.game_sort=7&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏7&game.game_id=7&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=xd&game.game_version=1', '192.168.200.96', '2018-09-25 11:09:18');
INSERT INTO `sys_log` VALUES (126, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏6&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-25 11:09:23');
INSERT INTO `sys_log` VALUES (127, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=0&game.gamet_id=1&game.game_detail=一游戏5&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-25 11:10:03');
INSERT INTO `sys_log` VALUES (128, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=5&game.game_name_cn=算数小萌熊&game.game_sort=5&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏5&game.game_id=5&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=sxxmx&game.game_version=1', '192.168.200.96', '2018-09-25 11:10:13');
INSERT INTO `sys_log` VALUES (129, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=6&game.game_name_cn=王之荣耀&game.game_sort=6&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏6&game.game_id=6&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=wzry&game.game_version=1', '192.168.200.96', '2018-09-25 11:10:17');
INSERT INTO `sys_log` VALUES (130, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=2&advert.advert_online=1&advert.game_id=2&advert.advert_param=0&advert.advert_title=游戏分类-休闲益智-最新游戏&advert.advty_id=7&advert.advert_url=http://', '192.168.200.96', '2018-09-25 11:16:19');
INSERT INTO `sys_log` VALUES (131, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=17&advert.advert_sort=1&advert.advty_id=7&advert.advert_online=0&advert_id=17&advert.advert_url=http://&advert.advert_title=游戏分类-休闲益智&advert.game_id=1', '192.168.200.96', '2018-09-25 11:41:29');
INSERT INTO `sys_log` VALUES (132, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=18&advert.advert_sort=2&advert.advty_id=7&advert.advert_online=0&advert_id=18&advert.advert_url=http://&advert.advert_title=游戏分类-休闲益智-最新游戏&advert.game_id=2', '192.168.200.96', '2018-09-25 11:41:34');
INSERT INTO `sys_log` VALUES (133, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=17&advert.advert_sort=1&advert.advty_id=7&advert.advert_online=1&advert_id=17&advert.advert_url=http://&advert.advert_title=游戏分类-休闲益智&advert.game_id=1', '192.168.200.96', '2018-09-25 14:16:34');
INSERT INTO `sys_log` VALUES (134, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=最新活动-精彩专题', '192.168.200.96', '2018-09-25 14:46:39');
INSERT INTO `sys_log` VALUES (135, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:edit,[参数]:advty_id=11&advertType.advty_id=11&advertType.advty_name=活动专题-精彩专题', '192.168.200.96', '2018-09-25 14:46:57');
INSERT INTO `sys_log` VALUES (136, '管家33', '[用户ID]:1,[控制器]:/advertType,[方法]:add,[参数]:advertType.advty_name=活动专题-精彩活动', '192.168.200.96', '2018-09-25 14:47:07');
INSERT INTO `sys_log` VALUES (137, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=-1&advert.advert_param=0&advert.advert_title=最新活动&advert.advty_id=12&advert.advert_url=http://', '192.168.200.96', '2018-09-25 15:34:26');
INSERT INTO `sys_log` VALUES (138, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:add,[参数]:advert.advert_sort=1&advert.advert_online=1&advert.game_id=-1&advert.advert_param=0&advert.advert_title=最新专题&advert.advty_id=11&advert.advert_url=http://', '192.168.200.96', '2018-09-25 15:35:19');
INSERT INTO `sys_log` VALUES (139, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏&game.game_id=1&game_type=.game_zjJard&game.game_free=0&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '192.168.200.96', '2018-09-27 09:33:54');
INSERT INTO `sys_log` VALUES (140, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=18&advert.advert_sort=2&advert.advty_id=7&advert.advert_online=1&advert_id=18&advert.advert_url=http://&advert.advert_title=游戏分类-休闲益智-最新游戏&advert.game_id=2', '192.168.200.96', '2018-10-08 10:16:40');
INSERT INTO `sys_log` VALUES (141, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=23&advert.advert_sort=1&advert.advty_id=11&advert.advert_online=1&advert_id=23&advert.advert_url=http://192.168.0.72:8080/classicSummerActivity/auth.jsp?user={0}&userID={1}&zyUserToken={2}&stbType={3}&enterURL={4}&advert.advert_title=最新活动&advert.game_id=-1', '192.168.200.96', '2018-10-08 10:18:35');
INSERT INTO `sys_log` VALUES (142, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=23&advert.advert_sort=1&advert.advty_id=11&advert.advert_online=1&advert_id=23&advert.advert_url=http://192.168.0.72:8080/classicSummerActivity/auth.jsp?user={0}&userID={1}&zyUserToken={2}&stbType={3}&enterURL={4}&advert.advert_title=5月活动&advert.game_id=-1', '192.168.200.96', '2018-10-08 10:18:54');
INSERT INTO `sys_log` VALUES (143, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=1&advert.advert_id=23&advert.advert_sort=1&advert.advty_id=11&advert.advert_online=1&advert_id=23&advert.advert_url=http://192.168.0.72:8080/classicSummerActivity/auth.jsp?user={0}&userID={1}&zyUserToken={2}&stbType={3}&enterURL={4}&advert.advert_title=5月活动&advert.game_id=-1', '192.168.200.96', '2018-10-08 10:19:31');
INSERT INTO `sys_log` VALUES (144, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=28&advert.advert_sort=2&advert.advty_id=2&advert.advert_online=1&advert_id=28&advert.advert_url=http://&advert.advert_title=绝地求生2&advert.game_id=1', '192.168.200.96', '2018-10-09 09:39:00');
INSERT INTO `sys_log` VALUES (145, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=10&advert.advert_sort=2&advert.advty_id=2&advert.advert_online=1&advert_id=10&advert.advert_url=http://&advert.advert_title=绝地求生2&advert.game_id=1', '192.168.200.96', '2018-10-09 09:50:54');
INSERT INTO `sys_log` VALUES (146, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=19&advert.advert_sort=1&advert.advty_id=11&advert.advert_online=1&advert_id=19&advert.advert_url=http://&advert.advert_title=最新活动&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:07:22');
INSERT INTO `sys_log` VALUES (147, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=22&advert.advert_sort=1&advert.advty_id=11&advert.advert_online=1&advert_id=22&advert.advert_url=http://&advert.advert_title=最新专题&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:07:29');
INSERT INTO `sys_log` VALUES (148, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=24&advert.advert_sort=1&advert.advty_id=12&advert.advert_online=0&advert_id=24&advert.advert_url=http://&advert.advert_title=最新专题&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:07:55');
INSERT INTO `sys_log` VALUES (149, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=26&advert.advert_sort=1&advert.advty_id=12&advert.advert_online=0&advert_id=26&advert.advert_url=http://&advert.advert_title=最新专题&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:08:00');
INSERT INTO `sys_log` VALUES (150, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=24&advert.advert_sort=1&advert.advty_id=12&advert.advert_online=1&advert_id=24&advert.advert_url=http://&advert.advert_title=最新专题&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:08:40');
INSERT INTO `sys_log` VALUES (151, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=26&advert.advert_sort=1&advert.advty_id=12&advert.advert_online=1&advert_id=26&advert.advert_url=http://&advert.advert_title=最新专题&advert.game_id=-1', '192.168.200.96', '2018-10-09 10:08:46');
INSERT INTO `sys_log` VALUES (152, '管家33', '[用户ID]:1,[控制器]:/advert,[方法]:edit,[参数]:advert.advert_param=0&advert.advert_id=16&advert.advert_sort=6&advert.advty_id=4&advert.advert_online=1&advert_id=16&advert.advert_url=http://&advert.advert_title=休闲2&advert.game_id=4', '192.168.200.96', '2018-10-09 16:44:15');
INSERT INTO `sys_log` VALUES (153, '管家33', '[用户ID]:1,[控制器]:/game,[方法]:edit,[参数]:game.game_param=focusCancel=falseauthCode=0connectType=2sound=1playLimitTime=0&game.game_url=&game_id=1&game.game_name_cn=绝地求生&game.game_sort=8&game.game_online=1&game.gamet_id=1&game.game_detail=一游戏&game.game_id=1&game_type=.game_zjJard&game.game_free=1&game.comp_id=1&game.game_name_en=jdqs&game.game_version=1', '192.168.200.96', '2018-10-09 17:42:50');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `res_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `res_pid` int(11) NULL DEFAULT NULL COMMENT '父ID',
  `res_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名称',
  `res_icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源图标',
  `res_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源地址',
  `res_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源备注',
  `res_open_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式:ajax,iframe',
  `res_resource_type` tinyint(2) NOT NULL COMMENT '资源类型，0选项卡，1按钮，2栏目，3资源',
  `res_status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '资源状态，0下线，1上线',
  `res_sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `res_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`res_id`) USING BTREE,
  INDEX `res_id_index`(`res_id`) USING BTREE COMMENT '资源ID索引',
  INDEX `res_resource_type_index`(`res_resource_type`) USING BTREE COMMENT '资源类型索引'
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, NULL, '系统设置', 'pic_25', '/', NULL, 'iframe', 2, 1, 0, '2017-06-09 14:57:51');
INSERT INTO `sys_resource` VALUES (2, 1, '资源管理', NULL, '/resource/index', NULL, 'iframe', 0, 1, 1, '2017-06-09 15:01:54');
INSERT INTO `sys_resource` VALUES (3, 2, '新增', 'pic_439', '/resource/add', '资源新增', 'ajax', 1, 1, 2, '2017-06-09 15:03:50');
INSERT INTO `sys_resource` VALUES (4, 2, '修改', 'pic_439', '/resource/edit', '资源修改', 'ajax', 1, 1, 3, '2017-06-09 15:04:24');
INSERT INTO `sys_resource` VALUES (5, 2, '删除', 'pic_439', '/resource/del', '资源删除', 'ajax', 1, 1, 4, '2017-06-09 15:06:09');
INSERT INTO `sys_resource` VALUES (6, 1, '角色管理', NULL, '/sysRole/index', NULL, 'iframe', 0, 1, 1, '2017-06-09 15:07:23');
INSERT INTO `sys_resource` VALUES (7, 6, '新增', 'pic_439', '/sysRole/add', '角色新增', 'ajax', 1, 1, 2, '2017-06-09 15:08:42');
INSERT INTO `sys_resource` VALUES (8, 6, '修改', 'pic_439', '/sysRole/edit', '角色修改', 'ajax', 1, 1, 3, '2017-06-09 15:11:52');
INSERT INTO `sys_resource` VALUES (9, 6, '删除', 'pic_439', '/sysRole/del', '角色删除', 'ajax', 1, 1, 4, '2017-06-09 15:12:28');
INSERT INTO `sys_resource` VALUES (10, 6, '授权', 'pic_439', '/sysRole/auth', '角色权限管理', 'ajax', 1, 1, 5, '2017-06-09 15:13:21');
INSERT INTO `sys_resource` VALUES (11, 6, '获取角色资源列表', 'pic_381', '/sysRole/getRoleAuth', '资源接口', 'ajax', 3, 1, 6, '2017-06-09 15:13:21');
INSERT INTO `sys_resource` VALUES (12, 6, '获取角色列表', 'pic_381', '/sysRole/getRoleList', '角色接口', 'ajax', 3, 1, 7, '2017-06-09 15:13:21');
INSERT INTO `sys_resource` VALUES (13, 1, '用户管理', NULL, '/sysUser/index', NULL, 'iframe', 0, 1, 1, '2017-06-09 15:15:42');
INSERT INTO `sys_resource` VALUES (14, 13, '新增', 'pic_439', '/sysUser/add', '用户新增', 'ajax', 1, 1, 2, '2017-06-09 15:16:18');
INSERT INTO `sys_resource` VALUES (15, 13, '修改', 'pic_439', '/sysUser/edit', '用户修改', 'ajax', 1, 1, 3, '2017-06-09 15:16:38');
INSERT INTO `sys_resource` VALUES (16, 13, '删除', 'pic_439', '/sysUser/del', '用户删除', 'ajax', 1, 1, 4, '2017-06-09 15:16:56');
INSERT INTO `sys_resource` VALUES (17, 1, '系统日志', NULL, '/sysLog/index', NULL, NULL, 0, 1, 0, '2017-07-01 16:36:58');
INSERT INTO `sys_resource` VALUES (18, 17, '查看', 'pic_439', '/sysLog/info', '查看系统日志', NULL, 1, 1, 1, '2017-07-01 17:35:00');
INSERT INTO `sys_resource` VALUES (19, NULL, '平台内容管理', 'pic_25', '/', NULL, NULL, 2, 1, 1, '2017-07-06 10:53:44');
INSERT INTO `sys_resource` VALUES (20, 21, '游戏类型管理', NULL, '/gameType/index', NULL, NULL, 0, 1, 1, '2017-07-06 11:28:08');
INSERT INTO `sys_resource` VALUES (21, 19, '游戏管理', NULL, '/', NULL, NULL, 0, 1, 99, '2017-07-06 11:34:26');
INSERT INTO `sys_resource` VALUES (22, 20, '新增', 'pic_439', '/gameType/add', NULL, NULL, 1, 1, 1, '2017-07-06 11:36:21');
INSERT INTO `sys_resource` VALUES (23, 20, '修改', 'pic_439', '/gameType/edit', NULL, NULL, 1, 1, 2, '2017-07-06 11:37:24');
INSERT INTO `sys_resource` VALUES (24, 20, '删除', 'pic_439', '/gameType/del', NULL, NULL, 1, 1, 3, '2017-07-06 11:37:50');
INSERT INTO `sys_resource` VALUES (25, 28, '活动类型', NULL, '/activityType/index', NULL, NULL, 0, 1, 2, '2017-07-06 11:50:25');
INSERT INTO `sys_resource` VALUES (26, 28, '活动用户', NULL, '/activityUser/index', NULL, NULL, 0, 1, 1, '2017-07-06 11:58:06');
INSERT INTO `sys_resource` VALUES (27, 28, '活动奖品', NULL, '/activityPrize/index', NULL, NULL, 0, 1, 1, '2017-07-06 11:59:34');
INSERT INTO `sys_resource` VALUES (28, 19, '活动管理', NULL, '/', NULL, NULL, 0, 1, 1, '2017-07-06 13:45:50');
INSERT INTO `sys_resource` VALUES (29, 19, '公司管理', NULL, '/', NULL, '', 0, 1, 1, '2017-07-05 17:33:37');
INSERT INTO `sys_resource` VALUES (30, 29, '公司管理', NULL, '/company/index', NULL, '', 0, 1, 1, '2017-07-05 17:38:54');
INSERT INTO `sys_resource` VALUES (31, 30, '公司新增', 'pic_439', '/company/add', NULL, '', 1, 1, 2, '2017-07-05 18:17:19');
INSERT INTO `sys_resource` VALUES (32, 30, '公司修改', 'pic_439', '/company/edit', NULL, '', 1, 1, 3, '2017-07-06 10:21:26');
INSERT INTO `sys_resource` VALUES (33, 30, '删除', 'pic_439', '/company/del', NULL, '', 1, 1, 4, '2017-07-06 10:22:00');
INSERT INTO `sys_resource` VALUES (34, 19, '拦截管理', NULL, '/', NULL, '', 0, 1, 1, '2017-07-06 10:44:40');
INSERT INTO `sys_resource` VALUES (35, 34, '拦截管理', NULL, '/intercept/index', NULL, '', 0, 1, 1, '2017-07-06 10:45:15');
INSERT INTO `sys_resource` VALUES (36, 34, '拦截类型管理', NULL, '/interceptType/index', NULL, '', 0, 1, 1, '2017-07-06 10:46:34');
INSERT INTO `sys_resource` VALUES (37, 35, '新增', 'pic_439', '/intercept/add', NULL, NULL, 1, 1, 2, '2017-07-06 14:19:44');
INSERT INTO `sys_resource` VALUES (38, 35, '修改', 'pic_439', '/intercept/edit', NULL, NULL, 1, 1, 3, '2017-07-06 14:20:13');
INSERT INTO `sys_resource` VALUES (39, 35, '删除', 'pic_439', '/intercept/del', NULL, NULL, 1, 1, 4, '2017-07-06 14:20:36');
INSERT INTO `sys_resource` VALUES (40, 36, '新增', 'pic_439', '/interceptType/add', NULL, NULL, 1, 1, 2, '2017-07-06 14:21:10');
INSERT INTO `sys_resource` VALUES (41, 36, '修改', 'pic_439', '/interceptType/edit', NULL, NULL, 1, 1, 3, '2017-07-06 14:22:05');
INSERT INTO `sys_resource` VALUES (42, 36, '删除', 'pic_439', '/interceptType/del', NULL, NULL, 1, 1, 4, '2017-07-06 14:22:32');
INSERT INTO `sys_resource` VALUES (43, 21, '游戏内容管理', NULL, '/game/index', NULL, NULL, 0, 1, 3, '2017-07-06 14:36:32');
INSERT INTO `sys_resource` VALUES (44, 43, '新增', 'pic_439', '/game/add', NULL, NULL, 1, 1, 1, '2017-07-06 14:37:11');
INSERT INTO `sys_resource` VALUES (45, 43, '修改', 'pic_439', '/game/edit', NULL, NULL, 1, 1, 2, '2017-07-06 14:37:40');
INSERT INTO `sys_resource` VALUES (46, 43, '删除', 'pic_439', '/game/del', NULL, NULL, 1, 1, 3, '2017-07-06 14:38:01');
INSERT INTO `sys_resource` VALUES (47, 19, '用户信息管理', NULL, '/', NULL, NULL, 0, 1, 5, '2017-07-06 14:41:04');
INSERT INTO `sys_resource` VALUES (48, 47, '用户基础信息', NULL, '/user/index', NULL, NULL, 0, 1, 3, '2017-07-06 14:43:04');
INSERT INTO `sys_resource` VALUES (49, 47, '用户收藏信息', NULL, '/userCollection/index', NULL, NULL, 0, 1, 2, '2017-07-06 14:46:49');
INSERT INTO `sys_resource` VALUES (50, 47, '用户签到信息', NULL, '/userSign/index', NULL, NULL, 0, 1, 1, '2017-07-06 14:47:34');
INSERT INTO `sys_resource` VALUES (51, 25, '新增', 'pic_439', '/activityType/add', NULL, NULL, 1, 1, 1, '2017-07-06 14:48:13');
INSERT INTO `sys_resource` VALUES (52, 25, '修改', 'pic_439', '/activityType/edit', NULL, NULL, 1, 1, 2, '2017-07-06 14:48:41');
INSERT INTO `sys_resource` VALUES (53, 25, '删除', 'pic_439', '/activityType/del', NULL, NULL, 1, 1, 3, '2017-07-06 14:49:03');
INSERT INTO `sys_resource` VALUES (54, 27, '新增', 'pic_439', '/activityPrize/add', NULL, NULL, 1, 1, 2, '2017-07-06 14:50:12');
INSERT INTO `sys_resource` VALUES (55, 27, '修改', 'pic_439', '/activityPrize/edit', NULL, NULL, 1, 1, 3, '2017-07-06 14:50:29');
INSERT INTO `sys_resource` VALUES (56, 27, '删除', 'pic_439', '/activityPrize/del', NULL, NULL, 1, 1, 4, '2017-07-06 14:50:48');
INSERT INTO `sys_resource` VALUES (57, 36, '获取拦截类型列表', 'pic_381', '/interceptType/getInterceptTypeList', NULL, NULL, 3, 1, 5, '2017-07-06 16:30:22');
INSERT INTO `sys_resource` VALUES (58, 19, '广告管理', NULL, '/', NULL, NULL, 0, 1, 98, '2017-07-06 17:55:53');
INSERT INTO `sys_resource` VALUES (59, 58, '广告类型管理', NULL, '/advertType/index', NULL, NULL, 0, 1, 1, '2017-07-06 17:56:32');
INSERT INTO `sys_resource` VALUES (60, 59, '新增', 'pic_439', '/advertType/add', NULL, NULL, 1, 1, 2, '2017-07-06 17:57:18');
INSERT INTO `sys_resource` VALUES (61, 59, '修改', 'pic_439', '/advertType/edit', NULL, NULL, 1, 1, 3, '2017-07-06 17:58:16');
INSERT INTO `sys_resource` VALUES (62, 59, '删除', 'pic_439', '/advertType/del', NULL, NULL, 1, 1, 4, '2017-07-06 17:58:40');
INSERT INTO `sys_resource` VALUES (63, 58, '广告管理', NULL, '/advert/index', NULL, NULL, 0, 1, 1, '2017-07-06 17:59:12');
INSERT INTO `sys_resource` VALUES (64, 63, '新增', 'pic_439', '/advert/add', NULL, NULL, 1, 1, 2, '2017-07-06 17:59:36');
INSERT INTO `sys_resource` VALUES (65, 63, '修改', 'pic_439', '/advert/edit', NULL, NULL, 1, 1, 3, '2017-07-06 17:59:56');
INSERT INTO `sys_resource` VALUES (66, 63, '删除', 'pic_439', '/advert/del', NULL, NULL, 1, 1, 4, '2017-07-06 18:00:29');
INSERT INTO `sys_resource` VALUES (67, 27, '获取活动类型下拉列表', 'pic_381', '/activityPrize/getActvTypeList', NULL, NULL, 3, 1, 5, '2017-07-07 15:04:57');
INSERT INTO `sys_resource` VALUES (68, 59, '获取广告类型列表', 'pic_381', '/advertType/getAdvertTypeList', NULL, NULL, 3, 1, 5, '2017-07-07 15:14:03');
INSERT INTO `sys_resource` VALUES (69, 26, 'Exce导出', 'pic_439', '/activityUser/Export', NULL, NULL, 1, 1, 2, '2017-07-10 16:33:46');
INSERT INTO `sys_resource` VALUES (70, 20, '获取游戏类型列表', 'pic_381', '/gameType/getAllGameTypes', NULL, NULL, 3, 1, 4, '2017-07-17 11:17:26');
INSERT INTO `sys_resource` VALUES (71, 30, '获取公司列表', 'pic_381', '/company/queryAllCompany', NULL, NULL, 3, 1, 4, '2017-07-17 11:18:24');
INSERT INTO `sys_resource` VALUES (72, 26, '新增', 'pic_439', '/activityUser/add', NULL, NULL, 1, 1, 3, '2017-07-24 10:11:43');
INSERT INTO `sys_resource` VALUES (73, 26, '修改', 'pic_439', '/activityUser/edit', NULL, NULL, 1, 1, 4, '2017-07-24 10:12:17');
INSERT INTO `sys_resource` VALUES (74, 26, '删除', 'pic_439', '/activityUser/del', NULL, NULL, 1, 1, 5, '2017-07-24 10:12:42');
INSERT INTO `sys_resource` VALUES (75, 26, '获取奖品类型下拉列表', 'pic_381', '/activityUser/getPrizeType', NULL, NULL, 3, 1, 6, '2017-07-24 10:35:07');
INSERT INTO `sys_resource` VALUES (76, 43, '批量导入游戏', 'pic_439', '/game/excelAddGames', NULL, NULL, 1, 1, 4, '2017-07-25 10:49:29');
INSERT INTO `sys_resource` VALUES (77, 1, '数据库监控', NULL, '/druid/index', NULL, NULL, 0, 1, 0, '2017-08-15 15:50:31');
INSERT INTO `sys_resource` VALUES (78, 1, '系统配置', '', '/sysSetting/index', NULL, NULL, 0, 1, 1, '2017-08-22 18:05:34');
INSERT INTO `sys_resource` VALUES (79, 78, '编辑', 'pic_439', '/sysSetting/edit', NULL, NULL, 1, 1, 1, '2017-08-22 18:39:34');
INSERT INTO `sys_resource` VALUES (80, 43, '游戏资源同步', 'pic_381', '/game/gameTb', NULL, NULL, 3, 1, 5, '2017-10-19 10:07:12');
INSERT INTO `sys_resource` VALUES (81, 13, '用户同步', 'pic_439', '/sysUser/getUserList', NULL, NULL, 1, 1, 5, '2017-12-04 13:59:07');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `sysr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `sysr_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT ' 角色名',
  `sysr_note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sysr_add_time` datetime NULL DEFAULT '1970-01-01 00:00:00' COMMENT '角色添加时间',
  PRIMARY KEY (`sysr_id`) USING BTREE,
  INDEX `sysr_name_index`(`sysr_name`) USING BTREE COMMENT '角色名索引'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '所有权限', '2017-06-09 14:54:36');
INSERT INTO `sys_role` VALUES (2, '运营角色', '部分权限', '2018-08-03 17:25:05');

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource`  (
  `rores_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `rores_roleid` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `rores_resid` int(11) NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`rores_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1773 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色，资源中间表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES (1640, 1, 19);
INSERT INTO `sys_role_resource` VALUES (1641, 1, 21);
INSERT INTO `sys_role_resource` VALUES (1642, 1, 43);
INSERT INTO `sys_role_resource` VALUES (1643, 1, 80);
INSERT INTO `sys_role_resource` VALUES (1644, 1, 76);
INSERT INTO `sys_role_resource` VALUES (1645, 1, 46);
INSERT INTO `sys_role_resource` VALUES (1646, 1, 45);
INSERT INTO `sys_role_resource` VALUES (1647, 1, 44);
INSERT INTO `sys_role_resource` VALUES (1648, 1, 20);
INSERT INTO `sys_role_resource` VALUES (1649, 1, 70);
INSERT INTO `sys_role_resource` VALUES (1650, 1, 24);
INSERT INTO `sys_role_resource` VALUES (1651, 1, 23);
INSERT INTO `sys_role_resource` VALUES (1652, 1, 22);
INSERT INTO `sys_role_resource` VALUES (1653, 1, 58);
INSERT INTO `sys_role_resource` VALUES (1654, 1, 59);
INSERT INTO `sys_role_resource` VALUES (1655, 1, 68);
INSERT INTO `sys_role_resource` VALUES (1656, 1, 62);
INSERT INTO `sys_role_resource` VALUES (1657, 1, 61);
INSERT INTO `sys_role_resource` VALUES (1658, 1, 60);
INSERT INTO `sys_role_resource` VALUES (1659, 1, 63);
INSERT INTO `sys_role_resource` VALUES (1660, 1, 66);
INSERT INTO `sys_role_resource` VALUES (1661, 1, 65);
INSERT INTO `sys_role_resource` VALUES (1662, 1, 64);
INSERT INTO `sys_role_resource` VALUES (1663, 1, 47);
INSERT INTO `sys_role_resource` VALUES (1664, 1, 48);
INSERT INTO `sys_role_resource` VALUES (1665, 1, 49);
INSERT INTO `sys_role_resource` VALUES (1666, 1, 50);
INSERT INTO `sys_role_resource` VALUES (1667, 1, 28);
INSERT INTO `sys_role_resource` VALUES (1668, 1, 25);
INSERT INTO `sys_role_resource` VALUES (1669, 1, 53);
INSERT INTO `sys_role_resource` VALUES (1670, 1, 52);
INSERT INTO `sys_role_resource` VALUES (1671, 1, 51);
INSERT INTO `sys_role_resource` VALUES (1672, 1, 26);
INSERT INTO `sys_role_resource` VALUES (1673, 1, 75);
INSERT INTO `sys_role_resource` VALUES (1674, 1, 74);
INSERT INTO `sys_role_resource` VALUES (1675, 1, 73);
INSERT INTO `sys_role_resource` VALUES (1676, 1, 72);
INSERT INTO `sys_role_resource` VALUES (1677, 1, 69);
INSERT INTO `sys_role_resource` VALUES (1678, 1, 27);
INSERT INTO `sys_role_resource` VALUES (1679, 1, 67);
INSERT INTO `sys_role_resource` VALUES (1680, 1, 56);
INSERT INTO `sys_role_resource` VALUES (1681, 1, 55);
INSERT INTO `sys_role_resource` VALUES (1682, 1, 54);
INSERT INTO `sys_role_resource` VALUES (1683, 1, 29);
INSERT INTO `sys_role_resource` VALUES (1684, 1, 30);
INSERT INTO `sys_role_resource` VALUES (1685, 1, 33);
INSERT INTO `sys_role_resource` VALUES (1686, 1, 71);
INSERT INTO `sys_role_resource` VALUES (1687, 1, 32);
INSERT INTO `sys_role_resource` VALUES (1688, 1, 31);
INSERT INTO `sys_role_resource` VALUES (1689, 1, 34);
INSERT INTO `sys_role_resource` VALUES (1690, 1, 35);
INSERT INTO `sys_role_resource` VALUES (1691, 1, 39);
INSERT INTO `sys_role_resource` VALUES (1692, 1, 38);
INSERT INTO `sys_role_resource` VALUES (1693, 1, 37);
INSERT INTO `sys_role_resource` VALUES (1694, 1, 36);
INSERT INTO `sys_role_resource` VALUES (1695, 1, 57);
INSERT INTO `sys_role_resource` VALUES (1696, 1, 42);
INSERT INTO `sys_role_resource` VALUES (1697, 1, 41);
INSERT INTO `sys_role_resource` VALUES (1698, 1, 40);
INSERT INTO `sys_role_resource` VALUES (1699, 1, 1);
INSERT INTO `sys_role_resource` VALUES (1700, 1, 2);
INSERT INTO `sys_role_resource` VALUES (1701, 1, 5);
INSERT INTO `sys_role_resource` VALUES (1702, 1, 4);
INSERT INTO `sys_role_resource` VALUES (1703, 1, 3);
INSERT INTO `sys_role_resource` VALUES (1704, 1, 6);
INSERT INTO `sys_role_resource` VALUES (1705, 1, 12);
INSERT INTO `sys_role_resource` VALUES (1706, 1, 11);
INSERT INTO `sys_role_resource` VALUES (1707, 1, 10);
INSERT INTO `sys_role_resource` VALUES (1708, 1, 9);
INSERT INTO `sys_role_resource` VALUES (1709, 1, 8);
INSERT INTO `sys_role_resource` VALUES (1710, 1, 7);
INSERT INTO `sys_role_resource` VALUES (1711, 1, 13);
INSERT INTO `sys_role_resource` VALUES (1712, 1, 81);
INSERT INTO `sys_role_resource` VALUES (1713, 1, 16);
INSERT INTO `sys_role_resource` VALUES (1714, 1, 15);
INSERT INTO `sys_role_resource` VALUES (1715, 1, 14);
INSERT INTO `sys_role_resource` VALUES (1716, 1, 78);
INSERT INTO `sys_role_resource` VALUES (1717, 1, 79);
INSERT INTO `sys_role_resource` VALUES (1718, 1, 17);
INSERT INTO `sys_role_resource` VALUES (1719, 1, 18);
INSERT INTO `sys_role_resource` VALUES (1720, 1, 77);
INSERT INTO `sys_role_resource` VALUES (1721, 2, 19);
INSERT INTO `sys_role_resource` VALUES (1722, 2, 21);
INSERT INTO `sys_role_resource` VALUES (1723, 2, 43);
INSERT INTO `sys_role_resource` VALUES (1724, 2, 80);
INSERT INTO `sys_role_resource` VALUES (1725, 2, 76);
INSERT INTO `sys_role_resource` VALUES (1726, 2, 46);
INSERT INTO `sys_role_resource` VALUES (1727, 2, 45);
INSERT INTO `sys_role_resource` VALUES (1728, 2, 44);
INSERT INTO `sys_role_resource` VALUES (1729, 2, 20);
INSERT INTO `sys_role_resource` VALUES (1730, 2, 70);
INSERT INTO `sys_role_resource` VALUES (1731, 2, 23);
INSERT INTO `sys_role_resource` VALUES (1732, 2, 22);
INSERT INTO `sys_role_resource` VALUES (1733, 2, 58);
INSERT INTO `sys_role_resource` VALUES (1734, 2, 59);
INSERT INTO `sys_role_resource` VALUES (1735, 2, 68);
INSERT INTO `sys_role_resource` VALUES (1736, 2, 61);
INSERT INTO `sys_role_resource` VALUES (1737, 2, 60);
INSERT INTO `sys_role_resource` VALUES (1738, 2, 63);
INSERT INTO `sys_role_resource` VALUES (1739, 2, 66);
INSERT INTO `sys_role_resource` VALUES (1740, 2, 65);
INSERT INTO `sys_role_resource` VALUES (1741, 2, 64);
INSERT INTO `sys_role_resource` VALUES (1742, 2, 47);
INSERT INTO `sys_role_resource` VALUES (1743, 2, 48);
INSERT INTO `sys_role_resource` VALUES (1744, 2, 49);
INSERT INTO `sys_role_resource` VALUES (1745, 2, 50);
INSERT INTO `sys_role_resource` VALUES (1746, 2, 28);
INSERT INTO `sys_role_resource` VALUES (1747, 2, 25);
INSERT INTO `sys_role_resource` VALUES (1748, 2, 52);
INSERT INTO `sys_role_resource` VALUES (1749, 2, 51);
INSERT INTO `sys_role_resource` VALUES (1750, 2, 26);
INSERT INTO `sys_role_resource` VALUES (1751, 2, 75);
INSERT INTO `sys_role_resource` VALUES (1752, 2, 74);
INSERT INTO `sys_role_resource` VALUES (1753, 2, 72);
INSERT INTO `sys_role_resource` VALUES (1754, 2, 69);
INSERT INTO `sys_role_resource` VALUES (1755, 2, 27);
INSERT INTO `sys_role_resource` VALUES (1756, 2, 67);
INSERT INTO `sys_role_resource` VALUES (1757, 2, 55);
INSERT INTO `sys_role_resource` VALUES (1758, 2, 54);
INSERT INTO `sys_role_resource` VALUES (1759, 2, 29);
INSERT INTO `sys_role_resource` VALUES (1760, 2, 30);
INSERT INTO `sys_role_resource` VALUES (1761, 2, 71);
INSERT INTO `sys_role_resource` VALUES (1762, 2, 32);
INSERT INTO `sys_role_resource` VALUES (1763, 2, 31);
INSERT INTO `sys_role_resource` VALUES (1764, 2, 34);
INSERT INTO `sys_role_resource` VALUES (1765, 2, 35);
INSERT INTO `sys_role_resource` VALUES (1766, 2, 39);
INSERT INTO `sys_role_resource` VALUES (1767, 2, 38);
INSERT INTO `sys_role_resource` VALUES (1768, 2, 37);
INSERT INTO `sys_role_resource` VALUES (1769, 2, 36);
INSERT INTO `sys_role_resource` VALUES (1770, 2, 57);
INSERT INTO `sys_role_resource` VALUES (1771, 2, 41);
INSERT INTO `sys_role_resource` VALUES (1772, 2, 40);

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting`  (
  `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `set_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统标题',
  `set_url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源URL',
  `set_upload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上传路径',
  `set_tm_upload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'tomcat上传路径',
  `set_publickey` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'rsa公钥',
  `set_privatekey` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ras私钥',
  PRIMARY KEY (`set_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES (1, '反斗城大厅后台管理系统', 'http://127.0.0.1:8123/fengcheleyuanRES/', 'D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/', 'D:/Program Files/nginx-1.13.5/html/fengcheleyuanRES/', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGKCld0cnbLYyCT4/QBu/BYoA/JPcaqkIPJ22/V7mziDkkCzuztxsm814stNA2LwYJkG+ivTrKTIAVYhtFDDosC5BFYWegt1FwABLJDSL8Qt5GbC4byPNVrYdCMP6HE2aDbJsZjzagVA/iSVmT722rh9nPWJt0XhrL0AmRFR3qxwIDAQAB', 'MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIYoKV3RydstjIJPj9AG78FigD8k9xqqQg8nbb9XubOIOSQLO7O3GybzXiy00DYvBgmQb6K9OspMgBViG0UMOiwLkEVhZ6C3UXAAEskNIvxC3kZsLhvI81Wth0Iw/ocTZoNsmxmPNqBUD+JJWZPvbauH2c9Ym3ReGsvQCZEVHerHAgMBAAECgYAveylg3i4eF5niSPxyOPJENHOFZbTbSCUHLgJGtWqxIuZuXldr/MNsXrgXBIuoka4GVotcQrL7BGZUqxtRrcksZFFLfyXMn+pnALgx4SyhcSxbjWuBbrG1+VFqCgTSaePM41L/69p2FTDteD9HVXM5XFc8o7bWiNrHZiWbXgtsCQJBAO2Hl+6HOVIDWX9ialUPZG8O49Po3oh00Lchnkdta+DPbeZF4jhRCVAZ01QGo540yZqZXgzsRHJuw4yXJKBCqo0CQQCQlsSksZaJjL68eTN+n8EhJcjjC2hhvFRYRIPErBCEYcoemUF2PL+rBqlfgyyopmoX5D2nmuYQuCMM/bQDJV+jAkAaxBHJzjEWXcxC/3sN9LsTjLD9mxsgc1FloYMtd1YVsionLa7NO8x52z8mE81yMW6aXjfr6t/XqUWd3RZCfOCtAkBcNXp02bh6QiMFyXm4oCMng5RIj2bjJZrYq+Eo1N63vjGLMAuaXwWRCW+MtPgPGgoA8JMNR3C/at8XkthxRS1nAkBxSk+YVsnkz1K1jOovBwTVNM/RhSkP5VEMf9lacbR/EHd5snO6j5/42opPMLBGoi7Smx4TPf5Dltb5xc+mD/Ny');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `sysu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `sysu_account` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员账号',
  `sysu_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `sysu_name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员姓名',
  `sysu_status` int(1) NOT NULL DEFAULT 1 COMMENT '状态：0-禁用,1-启用',
  `sysu_last_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `sysu_last_ip` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `sysu_add_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `sysu_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sysu_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户token',
  PRIMARY KEY (`sysu_id`) USING BTREE,
  UNIQUE INDEX `sysu_account_uq`(`sysu_account`) USING BTREE COMMENT '管理员账号唯一约束',
  INDEX `sysu_account_index`(`sysu_account`) USING BTREE COMMENT '管理员账号索引',
  INDEX `sysu_name_index`(`sysu_name`) USING BTREE COMMENT '姓名索引'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '9aac5f4e9dbe7fffb2ee2f9ccd837a39', '管家33', 1, '2019-04-29 14:22:22', '192.168.0.72', '2017-06-09 14:55:14', 'admin@itv.com', '73282171281a83d4f908ae797bca51c7');
INSERT INTO `sys_user` VALUES (2, 'chenqq', '4186f249051e7374552a037ac82f2167', '陈巧琦', 1, '2018-08-15 14:48:11', '183.15.206.71', '2018-08-06 11:04:01', NULL, 'e248320cf2fd67b5ebd10c9ecefd948c');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sysu_id` int(11) NOT NULL COMMENT '用户ID',
  `sysr_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户、角色中间表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (31, 10, 2);
INSERT INTO `sys_user_role` VALUES (32, 10, 1);
INSERT INTO `sys_user_role` VALUES (49, 1, 2);
INSERT INTO `sys_user_role` VALUES (50, 1, 1);
INSERT INTO `sys_user_role` VALUES (52, 2, 1);
INSERT INTO `sys_user_role` VALUES (53, 2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '机顶盒账号',
  `user_xcid` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '炫彩ID',
  `user_type` tinyint(2) NOT NULL DEFAULT 1 COMMENT '账号类型，0禁用，1普通，2 VIP，3酒店用户，4政府客户',
  `user_vip_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户VIP状态',
  `user_gold` int(11) NOT NULL DEFAULT 0 COMMENT '金币数',
  `user_password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费密码',
  `user_stbtype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机顶盒类型',
  `user_hd` tinyint(2) NULL DEFAULT NULL COMMENT '是否高清用户，0非高清，1高清',
  `user_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `user_address` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `user_last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `user_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_add_time` datetime NOT NULL COMMENT '注册时间',
  `user_epginfo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户机顶盒参数信息',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uq_user_account`(`user_account`) USING BTREE,
  INDEX `user_account_index`(`user_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ynwl_test', 'ynwl_test', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-05-15 11:26:52', '2019-05-15 11:26:52', '2018-09-17 17:57:42', NULL);
INSERT INTO `user` VALUES (2, 'iptv_test', 'ynwl_test', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 11:13:59', '2018-10-09 17:42:14', '2018-09-25 16:26:19', NULL);
INSERT INTO `user` VALUES (3, 'dadfd', 'ynwl_test', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2018-09-25 16:31:30', NULL, '2018-09-25 16:31:30', NULL);
INSERT INTO `user` VALUES (4, 'xjdxa2a4686a5', '123456', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-30 17:41:10', '2019-01-30 17:41:10', '2019-01-30 17:41:10', NULL);
INSERT INTO `user` VALUES (5, 'iptv', 'ynwl_test', 1, NULL, 0, NULL, 'pc', NULL, NULL, NULL, '2019-05-29 10:53:28', '2019-05-29 10:53:28', '2019-05-29 10:53:28', NULL);

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS `user_collection`;
CREATE TABLE `user_collection`  (
  `ucoll_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `user_account` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `game_id` int(11) NOT NULL COMMENT '游戏ID',
  `ucoll_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`ucoll_id`) USING BTREE,
  INDEX `user_account_index`(`user_account`) USING BTREE,
  INDEX `ucoll_id_index`(`ucoll_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_sign`;
CREATE TABLE `user_sign`  (
  `usign_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户签到ID',
  `user_account` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `usign_gold` int(5) NULL DEFAULT NULL COMMENT '用户签到赠送金币数',
  `usign_date` datetime NOT NULL COMMENT '签到时间',
  PRIMARY KEY (`usign_id`) USING BTREE,
  INDEX `usign_id_index`(`usign_id`) USING BTREE,
  INDEX `user_account_index`(`user_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '签到表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
