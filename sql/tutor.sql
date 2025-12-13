/*
 Navicat Premium Dump SQL

 Source Server         : MySQL8.0
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42)
 Source Host           : localhost:3307
 Source Schema         : tutor

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42)
 File Encoding         : 65001

 Date: 13/12/2025 11:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-11-03 08:51:33', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-11-03 08:51:33', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-11-03 08:51:33', 'admin', '2025-11-03 08:56:36', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2025-11-03 08:51:33', 'admin', '2025-11-03 08:55:56', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-11-03 08:51:33', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-11-03 08:51:33', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
INSERT INTO `sys_config` VALUES (7, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2025-11-03 08:51:33', 'admin', '2025-11-03 08:56:05', '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-11-03 08:51:33', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依', 0, '超级管理员', '15888888888', '123@qq.com', '0', '0', 'admin', '2025-11-03 08:51:32', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '待接单', '0', 'demand_status', '', 'warning', 'N', '0', 'admin', '2025-11-10 15:00:00', '', NULL, '待接单');
INSERT INTO `sys_dict_data` VALUES (101, 2, '已接单', '1', 'demand_status', '', 'primary', 'N', '0', 'admin', '2025-11-10 15:00:00', '', NULL, '已接单');
INSERT INTO `sys_dict_data` VALUES (102, 3, '已完成', '2', 'demand_status', '', 'success', 'N', '0', 'admin', '2025-11-10 15:00:00', '', NULL, '已完成');
INSERT INTO `sys_dict_data` VALUES (103, 4, '已取消', '3', 'demand_status', '', 'info', 'N', '0', 'admin', '2025-11-10 15:00:00', '', NULL, '已取消');
INSERT INTO `sys_dict_data` VALUES (104, 1, '预约试课', 'trial', 'reservation_type', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '家长预约试课');
INSERT INTO `sys_dict_data` VALUES (105, 2, '接需求单', 'demand', 'reservation_type', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '家教接需求单');
INSERT INTO `sys_dict_data` VALUES (106, 1, '待支付', '0', 'reservation_status', '', 'warning', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '待支付');
INSERT INTO `sys_dict_data` VALUES (107, 2, '待上课', '1', 'reservation_status', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '待上课');
INSERT INTO `sys_dict_data` VALUES (108, 3, '已完成', '2', 'reservation_status', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已完成');
INSERT INTO `sys_dict_data` VALUES (109, 4, '已取消', '3', 'reservation_status', '', 'info', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已取消');
INSERT INTO `sys_dict_data` VALUES (110, 1, '未支付', '0', 'deposit_status', '', 'warning', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '未支付');
INSERT INTO `sys_dict_data` VALUES (111, 2, '已支付', '1', 'deposit_status', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已支付');
INSERT INTO `sys_dict_data` VALUES (112, 3, '已退还', '2', 'deposit_status', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已退还');
INSERT INTO `sys_dict_data` VALUES (113, 4, '已扣除', '3', 'deposit_status', '', 'danger', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已扣除');
INSERT INTO `sys_dict_data` VALUES (114, 1, '押金', 'deposit', 'payment_type', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '押金支付');
INSERT INTO `sys_dict_data` VALUES (115, 2, '课酬', 'scholarship', 'payment_type', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '课酬支付');
INSERT INTO `sys_dict_data` VALUES (116, 1, '待支付', '0', 'payment_status', '', 'warning', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '待支付');
INSERT INTO `sys_dict_data` VALUES (117, 2, '已支付', '1', 'payment_status', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已支付');
INSERT INTO `sys_dict_data` VALUES (118, 3, '已退款', '2', 'payment_status', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已退款');
INSERT INTO `sys_dict_data` VALUES (119, 4, '已关闭', '3', 'payment_status', '', 'info', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '已关闭');
INSERT INTO `sys_dict_data` VALUES (120, 1, '家长评价', 'parent', 'evaluator_type', '', 'primary', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '家长对家教的评价');
INSERT INTO `sys_dict_data` VALUES (121, 2, '家教评价', 'tutor', 'evaluator_type', '', 'success', 'N', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '家教对家长的评价');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-11-03 08:51:33', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '需求单状态', 'demand_status', '0', 'admin', '2025-11-10 15:00:00', '', NULL, '需求单状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '预约类型', 'reservation_type', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '预约类型列表');
INSERT INTO `sys_dict_type` VALUES (102, '预约状态', 'reservation_status', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '预约状态列表');
INSERT INTO `sys_dict_type` VALUES (103, '押金状态', 'deposit_status', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '押金状态列表');
INSERT INTO `sys_dict_type` VALUES (104, '支付类型', 'payment_type', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '支付类型列表');
INSERT INTO `sys_dict_type` VALUES (105, '支付状态', 'payment_status', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '支付状态列表');
INSERT INTO `sys_dict_type` VALUES (106, '评价人类型', 'evaluator_type', '0', 'admin', '2025-11-17 16:39:21', '', NULL, '评价人类型列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-11-03 08:51:33', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-11-03 08:51:33', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-11-03 08:51:33', '', NULL, '');
INSERT INTO `sys_job` VALUES (100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '0 * * * * ?', '1', '0', '0', 'admin', '2025-11-05 08:57:11', 'admin', '2025-11-21 10:21:30', '每小时执行一次，自动审核超过24小时的待审核家教信息');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4804 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-20 13:52:53');
INSERT INTO `sys_job_log` VALUES (2, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-11-20 15:00:00');
INSERT INTO `sys_job_log` VALUES (3, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-20 18:00:00');
INSERT INTO `sys_job_log` VALUES (4, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-11-21 09:00:00');
INSERT INTO `sys_job_log` VALUES (5, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 10:00:00');
INSERT INTO `sys_job_log` VALUES (6, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 10:22:00');
INSERT INTO `sys_job_log` VALUES (7, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 10:23:00');
INSERT INTO `sys_job_log` VALUES (8, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 10:24:00');
INSERT INTO `sys_job_log` VALUES (9, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-21 10:24:44');
INSERT INTO `sys_job_log` VALUES (10, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 10:25:00');
INSERT INTO `sys_job_log` VALUES (11, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 10:26:00');
INSERT INTO `sys_job_log` VALUES (12, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 10:27:00');
INSERT INTO `sys_job_log` VALUES (13, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 10:28:00');
INSERT INTO `sys_job_log` VALUES (14, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 10:29:00');
INSERT INTO `sys_job_log` VALUES (15, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 10:30:00');
INSERT INTO `sys_job_log` VALUES (16, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 10:31:00');
INSERT INTO `sys_job_log` VALUES (17, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 10:32:00');
INSERT INTO `sys_job_log` VALUES (18, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 10:32:21');
INSERT INTO `sys_job_log` VALUES (19, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 10:33:00');
INSERT INTO `sys_job_log` VALUES (20, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 10:34:00');
INSERT INTO `sys_job_log` VALUES (21, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (22, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (23, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (24, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (25, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：12毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (26, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (27, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (28, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (29, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (30, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (31, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (32, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：12毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (33, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (34, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (35, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (36, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (37, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (38, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (39, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (40, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (41, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (42, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (43, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (44, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (45, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (46, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (47, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (48, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (49, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (50, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (51, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (52, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (53, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (54, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (55, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (56, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (57, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (58, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (59, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (60, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (61, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (62, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (63, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (64, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (65, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (66, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (67, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (68, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (69, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (70, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (71, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (72, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (73, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (74, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (75, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (76, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (77, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (78, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (79, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (80, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (81, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (82, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (83, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (84, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (85, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (86, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (87, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (88, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (89, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (90, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (91, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (92, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (93, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (94, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (95, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (96, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (97, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (98, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：41毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (99, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (101, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (102, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (103, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (104, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (105, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (106, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (107, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (108, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (109, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (110, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (111, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (112, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (113, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (114, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (115, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (116, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (117, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:12');
INSERT INTO `sys_job_log` VALUES (118, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (119, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (120, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (121, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (122, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (123, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (124, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (125, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (126, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (127, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (128, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (129, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (130, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (131, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (132, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (133, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (134, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (135, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (136, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (137, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (138, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (139, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (140, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (141, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (142, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (143, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (144, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (145, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (146, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (147, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (148, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (149, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (150, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (151, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (152, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (153, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (154, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (155, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (156, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (157, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (158, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (159, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (160, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (161, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (162, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (163, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (164, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (165, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (166, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (167, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (168, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (169, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (170, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (171, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (172, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (173, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (174, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (175, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (176, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (177, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (178, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (179, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (180, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (181, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (182, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (183, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (184, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (185, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (186, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (187, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (188, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (189, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (190, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (191, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (192, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (193, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (194, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (195, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (196, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (197, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (198, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (199, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (200, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (201, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (202, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (203, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (204, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (205, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (206, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (207, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (208, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (209, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (210, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (211, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (212, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (213, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (214, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (215, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (216, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (217, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (218, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (219, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (220, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (221, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (222, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (223, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (224, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (225, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (226, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (227, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (228, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (229, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (230, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (231, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (232, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (233, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (234, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (235, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (236, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (237, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (238, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (239, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (240, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (241, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (242, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (243, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (244, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (245, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (246, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (247, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (248, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (249, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (250, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (251, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (252, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (253, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (254, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (255, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (256, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (257, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (258, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (259, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (260, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (261, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (262, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (263, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (264, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (265, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (266, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (267, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (268, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (269, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (270, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (271, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (272, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (273, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (274, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (275, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (276, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (277, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (278, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (279, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (280, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (281, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (282, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (283, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (284, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (285, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (286, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (287, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (288, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (289, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (290, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (291, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (292, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (293, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (294, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (295, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (296, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (297, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (298, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (299, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (300, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (301, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (302, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (303, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (304, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (305, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (306, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (307, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (308, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (309, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (310, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (311, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (312, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (313, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (314, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (315, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (316, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (317, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (318, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (319, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (320, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (321, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (322, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (323, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (324, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (325, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (326, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (327, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (328, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (329, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (330, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (331, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (332, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (333, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (334, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (335, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (336, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (337, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (338, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (339, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (340, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (341, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (342, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (343, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (344, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (345, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (346, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (347, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (348, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (349, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (350, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (351, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (352, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (353, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (354, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (355, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (356, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (357, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (358, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (359, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (360, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (361, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (362, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (363, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (364, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (365, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (366, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (367, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (368, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (369, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (370, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (371, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (372, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (373, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (374, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (375, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (376, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (377, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (378, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (379, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (380, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (381, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (382, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (383, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (384, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (385, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (386, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (387, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (388, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (389, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (390, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (391, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (392, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (393, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (394, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (395, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (396, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (397, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (398, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (399, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (400, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (401, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (402, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (403, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (404, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (405, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (406, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (407, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (408, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (409, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (410, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (411, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (412, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (413, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (414, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (415, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (416, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (417, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (418, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (419, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (420, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (421, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (422, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (423, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (424, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (425, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (426, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (427, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (428, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (429, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (430, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (431, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (432, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (433, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (434, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (435, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (436, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (437, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (438, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (439, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (440, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (441, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (442, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (443, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (444, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (445, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (446, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (447, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (448, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (449, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (450, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (451, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (452, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (453, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (454, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (455, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (456, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (457, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (458, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (459, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (460, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (461, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (462, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (463, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (464, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (465, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (466, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (467, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (468, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (469, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (470, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (471, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (472, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (473, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (474, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (475, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (476, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (477, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (478, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (479, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (480, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (481, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (482, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (483, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (484, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (485, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (486, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (487, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (488, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (489, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (490, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (491, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (492, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (493, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (494, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (495, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (496, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (497, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (498, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (499, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (500, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (501, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (502, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (503, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (504, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (505, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (506, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (507, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (508, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (509, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (510, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (511, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (512, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (513, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (514, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (515, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (516, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (517, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (518, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (519, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (520, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (521, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (522, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (523, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (524, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (525, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (526, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (527, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (528, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (529, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (530, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (531, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (532, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (533, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (534, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (535, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (536, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (537, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (538, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (539, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (540, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (541, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (542, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (543, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (544, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (545, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (546, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (547, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (548, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (549, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (550, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (551, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (552, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (553, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (554, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (555, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (556, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (557, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (558, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (559, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (560, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (561, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (562, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (563, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (564, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (565, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (566, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (567, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (568, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (569, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (570, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (571, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (572, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (573, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (574, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (575, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (576, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (577, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (578, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (579, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (580, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (581, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (582, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (583, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (584, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (585, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (586, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (587, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (588, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (589, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (590, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (591, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (592, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (593, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (594, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (595, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (596, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (597, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (598, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (599, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (600, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (601, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (602, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (603, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (604, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (605, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (606, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (607, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (608, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (609, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (610, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (611, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (612, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (613, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (614, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (615, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (616, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (617, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (618, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (619, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (620, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (621, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (622, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (623, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (624, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (625, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (626, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (627, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (628, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (629, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (630, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (631, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (632, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (633, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (634, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (635, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (636, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (637, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (638, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (639, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (640, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (641, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (642, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (643, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (644, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (645, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (646, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (647, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (648, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (649, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (650, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (651, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (652, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (653, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (654, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (655, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (656, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (657, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (658, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (659, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (660, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (661, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (662, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (663, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (664, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (665, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (666, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (667, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (668, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (669, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (670, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (671, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (672, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (673, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (674, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (675, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (676, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (677, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (678, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (679, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (680, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (681, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (682, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (683, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (684, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (685, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (686, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (687, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (688, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (689, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (690, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (691, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (692, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (693, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (694, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (695, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (696, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (697, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (698, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (699, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (700, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (701, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (702, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (703, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (704, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (705, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (706, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (707, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (708, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (709, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (710, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (711, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (712, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (713, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (714, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (715, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (716, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (717, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (718, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (719, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (720, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (721, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (722, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (723, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (724, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (725, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (726, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (727, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (728, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (729, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (730, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (731, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (732, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (733, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (734, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (735, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (736, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (737, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (738, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (739, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (740, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (741, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (742, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (743, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (744, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (745, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (746, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (747, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (748, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (749, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (750, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (751, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (752, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (753, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (754, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (755, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (756, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (757, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (758, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (759, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (760, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (761, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (762, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (763, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (764, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (765, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (766, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (767, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (768, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (769, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (770, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (771, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (772, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (773, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (774, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (775, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (776, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (777, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (778, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (779, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (780, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (781, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (782, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (783, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (784, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (785, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (786, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (787, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (788, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (789, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (790, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (791, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (792, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (793, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (794, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (795, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (796, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (797, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (798, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (799, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (800, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (801, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (802, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (803, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (804, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (805, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (806, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (807, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (808, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (809, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (810, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (811, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (812, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (813, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (814, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (815, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (816, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (817, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (818, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (819, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (820, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (821, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (822, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (823, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (824, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (825, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (826, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (827, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (828, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (829, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (830, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (831, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (832, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (833, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (834, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (835, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (836, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (837, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (838, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (839, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (840, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (841, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (842, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (843, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (844, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (845, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (846, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (847, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (848, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (849, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (850, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (851, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (852, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (853, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (854, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (855, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (856, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (857, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (858, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (859, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (860, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (861, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (862, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (863, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (864, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (865, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (866, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (867, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (868, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (869, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (870, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (871, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (872, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (873, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (874, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (875, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (876, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (877, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (878, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (879, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (880, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (881, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (882, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (883, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (884, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (885, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (886, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (887, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (888, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (889, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (890, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (891, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (892, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (893, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (894, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (895, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (896, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (897, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (898, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (899, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (900, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (901, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (902, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (903, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (904, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (905, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (906, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (907, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (908, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (909, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (910, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (911, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (912, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (913, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (914, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (915, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (916, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (917, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (918, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (919, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (920, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (921, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (922, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (923, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (924, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (925, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (926, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (927, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (928, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (929, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (930, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (931, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (932, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (933, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (934, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (935, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (936, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (937, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (938, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (939, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (940, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (941, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (942, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (943, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (944, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (945, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (946, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (947, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (948, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (949, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (950, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (951, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (952, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (953, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (954, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (955, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (956, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (957, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (958, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (959, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (960, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (961, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (962, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (963, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (964, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (965, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (966, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (967, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (968, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (969, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (970, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (971, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (972, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (973, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (974, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (975, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (976, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (977, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (978, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (979, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (980, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (981, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (982, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (983, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (984, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (985, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (986, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (987, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (988, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (989, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (990, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (991, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (992, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (993, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (994, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (995, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (996, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (997, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (998, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (999, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1000, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1001, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1002, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1003, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1004, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1005, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1006, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1007, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1008, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1009, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1010, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1011, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1012, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1013, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1014, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1015, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1016, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1017, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1018, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1019, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1020, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:13');
INSERT INTO `sys_job_log` VALUES (1021, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1022, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1023, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1024, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1025, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1026, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1027, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1028, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1029, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1030, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1031, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1032, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1033, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1034, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1035, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1036, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1037, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1038, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1039, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1040, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1041, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1042, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1043, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1044, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1045, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1046, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1047, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1048, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1049, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1050, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1051, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1052, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1053, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1054, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1055, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1056, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1057, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1058, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1059, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1060, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1061, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1062, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1063, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1064, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1065, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1066, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1067, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1068, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1069, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1070, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1071, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1072, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1073, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1074, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1075, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1076, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1077, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1078, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1079, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1080, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1081, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1082, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1083, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1084, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1085, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1086, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1087, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1088, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1089, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1090, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1091, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1092, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1093, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1094, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1095, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1096, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1097, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1098, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1099, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1101, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1102, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1103, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1104, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1105, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1106, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1107, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1108, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1109, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1110, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1111, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1112, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1113, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1114, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1115, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1116, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1117, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1118, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1119, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1120, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1121, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1122, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1123, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1124, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1125, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1126, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：20毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1127, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1128, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1129, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1130, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1131, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1132, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1133, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1134, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1135, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1136, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1137, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1138, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1139, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1140, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1141, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1142, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1143, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1144, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1145, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1146, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1147, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1148, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1149, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1150, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1151, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1152, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1153, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1154, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1155, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1156, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1157, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1158, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1159, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1160, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1161, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1162, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1163, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1164, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1165, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1166, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1167, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1168, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1169, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1170, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1171, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1172, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1173, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1174, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1175, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1176, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1177, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1178, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1179, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1180, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1181, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1182, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1183, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1184, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1185, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1186, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1187, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1188, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1189, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1190, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1191, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1192, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1193, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1194, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1195, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1196, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1197, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1198, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1199, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1200, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1201, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1202, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1203, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1204, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1205, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1206, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1207, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1208, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1209, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1210, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1211, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1212, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1213, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1214, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1215, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1216, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1217, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1218, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1219, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1220, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1221, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1222, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1223, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1224, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1225, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1226, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1227, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1228, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1229, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1230, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1231, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1232, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1233, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1234, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1235, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1236, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1237, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1238, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1239, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1240, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1241, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1242, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1243, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1244, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1245, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1246, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1247, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1248, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1249, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1250, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1251, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1252, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1253, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1254, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1255, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1256, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1257, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1258, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1259, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1260, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1261, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1262, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1263, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1264, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1265, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1266, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1267, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1268, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1269, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1270, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1271, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1272, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1273, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1274, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1275, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1276, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1277, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1278, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1279, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1280, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1281, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1282, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1283, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1284, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1285, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1286, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1287, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1288, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1289, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1290, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1291, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1292, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1293, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1294, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1295, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1296, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1297, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1298, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1299, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1300, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1301, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1302, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1303, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1304, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1305, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1306, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1307, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1308, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1309, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1310, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1311, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1312, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1313, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1314, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1315, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1316, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1317, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1318, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1319, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1320, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1321, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1322, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1323, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1324, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1325, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1326, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1327, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1328, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1329, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1330, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1331, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1332, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1333, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1334, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1335, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1336, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1337, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1338, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1339, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1340, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1341, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1342, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1343, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1344, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1345, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1346, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1347, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1348, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1349, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1350, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1351, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1352, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1353, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1354, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1355, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1356, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1357, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1358, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1359, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1360, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1361, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1362, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1363, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1364, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1365, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1366, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1367, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1368, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1369, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1370, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1371, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1372, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1373, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1374, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1375, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1376, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1377, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1378, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1379, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1380, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1381, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1382, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1383, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1384, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1385, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1386, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1387, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1388, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1389, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1390, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1391, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1392, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1393, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1394, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1395, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1396, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1397, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1398, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1399, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1400, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1401, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1402, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1403, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1404, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1405, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1406, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1407, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1408, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1409, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1410, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1411, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1412, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1413, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1414, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1415, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1416, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1417, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1418, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1419, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1420, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1421, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1422, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1423, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1424, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1425, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1426, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1427, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1428, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1429, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1430, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1431, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1432, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1433, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1434, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1435, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1436, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1437, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1438, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1439, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1440, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1441, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1442, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1443, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1444, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1445, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1446, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1447, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1448, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1449, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1450, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1451, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1452, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1453, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1454, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1455, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1456, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1457, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1458, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1459, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1460, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1461, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1462, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1463, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1464, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1465, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1466, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1467, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1468, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1469, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1470, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1471, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1472, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1473, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1474, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1475, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1476, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1477, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1478, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1479, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1480, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1481, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1482, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1483, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1484, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1485, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1486, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1487, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1488, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1489, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1490, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1491, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1492, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1493, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1494, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1495, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1496, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1497, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1498, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1499, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1500, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1501, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1502, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1503, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1504, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1505, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1506, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1507, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1508, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1509, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1510, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1511, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1512, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1513, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1514, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1515, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1516, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1517, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1518, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1519, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1520, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1521, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1522, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1523, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1524, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1525, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1526, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1527, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1528, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1529, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1530, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1531, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1532, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1533, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1534, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1535, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1536, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1537, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1538, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1539, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1540, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1541, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1542, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1543, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1544, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1545, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1546, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1547, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1548, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1549, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1550, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1551, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1552, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1553, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1554, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1555, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1556, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1557, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1558, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1559, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1560, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1561, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1562, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1563, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1564, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1565, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1566, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1567, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1568, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1569, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1570, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1571, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1572, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1573, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1574, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1575, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1576, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1577, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1578, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1579, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1580, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1581, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1582, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1583, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1584, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1585, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1586, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1587, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1588, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1589, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1590, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1591, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1592, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1593, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1594, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1595, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1596, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1597, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1598, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1599, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1600, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1601, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1602, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1603, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1604, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1605, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1606, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1607, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1608, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1609, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1610, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1611, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1612, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1613, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1614, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1615, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1616, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1617, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1618, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1619, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1620, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1621, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1622, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1623, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1624, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1625, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1626, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1627, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1628, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1629, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1630, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1631, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1632, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1633, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1634, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1635, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1636, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1637, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1638, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1639, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1640, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1641, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1642, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1643, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1644, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1645, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1646, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1647, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1648, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1649, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1650, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1651, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1652, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1653, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1654, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1655, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1656, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1657, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1658, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1659, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1660, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1661, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1662, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1663, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1664, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1665, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1666, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1667, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1668, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1669, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1670, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1671, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1672, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1673, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1674, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1675, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1676, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1677, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1678, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1679, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1680, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1681, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1682, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1683, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1684, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1685, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1686, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1687, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1688, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1689, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1690, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1691, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1692, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1693, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1694, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1695, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1696, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1697, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1698, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1699, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1700, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1701, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1702, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1703, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1704, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1705, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1706, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1707, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1708, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1709, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1710, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1711, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1712, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1713, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1714, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1715, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1716, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1717, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1718, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1719, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1720, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1721, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1722, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1723, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1724, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1725, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1726, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1727, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1728, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1729, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1730, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1731, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1732, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1733, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1734, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1735, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1736, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1737, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1738, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1739, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1740, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1741, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1742, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1743, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1744, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1745, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1746, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1747, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1748, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1749, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1750, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1751, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1752, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1753, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1754, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1755, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1756, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1757, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1758, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1759, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1760, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1761, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1762, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1763, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1764, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1765, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1766, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1767, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1768, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1769, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1770, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1771, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1772, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1773, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1774, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1775, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1776, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1777, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1778, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1779, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1780, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1781, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1782, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1783, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1784, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1785, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1786, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1787, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1788, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1789, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1790, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1791, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1792, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1793, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1794, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1795, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1796, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1797, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1798, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1799, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1800, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1801, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1802, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1803, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1804, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1805, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1806, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1807, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1808, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1809, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1810, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1811, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1812, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1813, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1814, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1815, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1816, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1817, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1818, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1819, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1820, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1821, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1822, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1823, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1824, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1825, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1826, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1827, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1828, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1829, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1830, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1831, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1832, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1833, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1834, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1835, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1836, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1837, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1838, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1839, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1840, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1841, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1842, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1843, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1844, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1845, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1846, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1847, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1848, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1849, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1850, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1851, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1852, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1853, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1854, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1855, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1856, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1857, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1858, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1859, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1860, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1861, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1862, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1863, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1864, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1865, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1866, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1867, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1868, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1869, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1870, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1871, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1872, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1873, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1874, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1875, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1876, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1877, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1878, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1879, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1880, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1881, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1882, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1883, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1884, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1885, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1886, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1887, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1888, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1889, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1890, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1891, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1892, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1893, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1894, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1895, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1896, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1897, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1898, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1899, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1900, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1901, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1902, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1903, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1904, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1905, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1906, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1907, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1908, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1909, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1910, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1911, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1912, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1913, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1914, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1915, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1916, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1917, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1918, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1919, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1920, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1921, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1922, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1923, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1924, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1925, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1926, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1927, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1928, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1929, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1930, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1931, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1932, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1933, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1934, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1935, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1936, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1937, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1938, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1939, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1940, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1941, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1942, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1943, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1944, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1945, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1946, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1947, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1948, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1949, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1950, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1951, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1952, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1953, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1954, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1955, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1956, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1957, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1958, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1959, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1960, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1961, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1962, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1963, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1964, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1965, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1966, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1967, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1968, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1969, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1970, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1971, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1972, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1973, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1974, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1975, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1976, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1977, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1978, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1979, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1980, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1981, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1982, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1983, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1984, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1985, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1986, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1987, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1988, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1989, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1990, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1991, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1992, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1993, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1994, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1995, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1996, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1997, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1998, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (1999, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2000, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2001, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2002, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2003, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2004, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2005, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2006, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2007, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2008, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2009, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2010, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2011, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2012, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2013, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2014, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2015, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2016, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2017, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2018, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2019, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2020, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2021, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2022, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2023, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2024, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2025, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2026, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2027, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2028, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2029, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2030, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2031, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2032, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2033, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2034, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2035, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2036, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2037, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2038, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2039, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:14');
INSERT INTO `sys_job_log` VALUES (2040, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2041, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2042, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2043, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2044, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2045, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2046, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2047, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2048, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2049, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2050, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2051, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2052, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2053, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2054, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2055, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2056, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2057, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2058, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2059, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2060, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2061, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2062, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2063, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2064, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2065, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2066, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2067, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2068, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2069, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2070, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2071, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2072, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2073, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2074, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2075, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2076, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2077, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2078, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2079, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2080, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2081, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2082, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2083, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2084, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2085, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2086, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2087, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2088, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2089, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2090, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2091, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2092, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2093, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2094, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2095, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2096, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2097, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2098, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2099, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2101, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2102, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2103, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2104, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2105, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2106, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2107, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2108, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2109, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2110, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2111, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2112, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2113, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2114, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2115, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2116, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2117, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2118, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2119, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2120, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2121, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2122, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2123, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2124, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2125, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2126, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2127, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2128, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2129, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2130, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2131, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2132, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2133, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2134, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2135, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2136, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2137, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2138, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2139, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2140, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2141, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2142, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2143, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2144, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2145, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2146, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2147, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2148, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2149, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2150, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2151, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2152, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2153, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2154, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2155, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2156, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2157, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2158, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2159, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2160, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2161, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2162, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2163, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2164, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2165, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2166, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2167, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2168, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2169, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2170, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2171, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2172, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2173, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2174, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2175, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2176, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2177, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2178, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2179, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2180, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2181, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2182, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2183, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2184, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2185, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2186, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2187, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2188, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2189, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2190, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2191, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2192, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2193, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2194, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2195, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2196, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2197, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2198, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2199, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2200, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2201, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2202, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2203, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2204, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2205, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2206, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2207, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2208, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2209, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2210, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2211, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2212, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2213, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2214, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2215, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2216, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2217, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2218, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2219, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2220, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2221, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2222, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2223, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2224, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2225, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2226, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2227, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2228, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2229, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2230, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2231, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2232, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2233, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2234, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2235, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2236, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2237, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2238, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2239, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2240, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2241, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2242, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2243, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2244, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2245, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2246, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2247, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2248, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2249, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2250, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2251, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2252, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2253, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2254, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2255, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2256, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2257, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2258, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2259, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2260, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2261, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2262, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2263, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2264, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2265, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2266, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2267, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2268, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2269, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2270, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2271, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2272, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2273, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2274, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2275, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2276, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2277, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2278, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2279, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2280, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2281, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2282, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2283, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2284, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2285, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2286, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2287, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2288, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2289, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2290, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2291, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2292, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2293, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2294, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2295, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2296, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2297, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2298, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2299, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2300, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2301, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2302, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2303, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2304, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2305, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2306, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2307, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2308, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2309, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2310, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2311, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2312, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2313, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2314, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2315, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2316, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2317, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2318, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2319, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2320, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2321, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2322, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2323, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2324, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2325, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2326, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2327, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2328, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2329, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2330, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2331, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2332, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2333, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2334, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2335, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2336, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2337, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2338, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2339, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2340, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2341, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2342, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2343, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2344, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2345, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2346, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2347, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2348, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2349, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2350, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2351, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2352, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2353, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2354, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2355, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2356, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2357, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2358, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2359, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2360, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2361, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2362, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2363, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2364, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2365, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2366, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2367, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2368, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2369, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2370, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2371, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2372, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2373, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2374, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2375, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2376, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2377, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2378, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2379, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2380, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2381, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2382, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2383, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2384, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2385, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2386, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2387, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2388, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2389, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2390, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2391, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2392, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2393, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2394, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2395, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2396, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2397, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2398, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2399, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2400, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2401, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2402, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2403, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2404, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2405, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2406, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2407, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2408, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2409, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2410, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2411, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2412, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2413, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2414, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2415, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2416, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2417, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2418, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2419, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2420, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2421, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2422, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2423, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2424, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2425, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2426, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2427, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2428, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2429, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2430, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2431, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2432, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2433, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2434, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2435, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2436, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2437, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2438, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2439, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2440, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2441, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2442, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2443, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2444, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2445, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2446, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2447, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2448, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2449, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2450, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2451, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2452, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2453, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2454, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2455, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2456, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2457, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2458, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2459, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2460, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2461, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2462, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2463, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2464, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2465, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2466, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2467, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2468, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2469, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2470, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2471, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2472, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2473, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2474, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2475, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2476, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2477, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2478, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2479, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2480, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2481, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2482, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2483, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2484, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2485, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2486, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2487, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2488, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2489, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2490, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2491, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2492, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2493, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2494, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2495, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2496, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2497, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2498, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2499, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2500, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2501, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2502, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2503, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2504, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2505, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2506, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2507, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2508, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2509, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2510, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2511, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2512, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2513, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2514, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2515, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2516, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2517, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2518, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2519, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2520, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2521, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2522, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2523, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2524, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2525, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2526, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2527, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2528, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2529, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2530, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2531, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2532, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2533, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2534, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2535, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2536, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2537, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2538, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2539, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2540, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2541, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2542, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2543, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2544, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2545, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2546, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2547, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2548, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2549, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2550, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2551, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2552, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2553, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2554, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2555, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2556, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2557, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2558, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2559, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2560, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2561, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2562, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2563, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2564, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2565, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2566, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2567, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2568, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2569, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2570, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2571, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2572, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2573, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2574, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2575, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2576, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2577, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2578, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2579, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2580, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2581, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2582, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2583, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2584, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2585, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2586, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2587, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2588, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2589, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2590, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2591, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2592, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2593, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2594, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2595, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2596, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2597, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2598, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2599, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2600, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2601, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2602, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2603, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2604, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2605, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2606, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2607, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2608, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2609, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2610, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2611, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2612, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2613, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2614, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2615, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2616, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2617, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2618, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2619, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2620, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2621, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2622, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2623, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2624, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2625, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2626, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2627, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2628, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2629, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2630, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2631, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2632, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2633, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2634, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2635, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2636, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2637, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2638, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2639, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2640, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2641, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2642, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2643, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2644, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2645, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2646, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2647, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2648, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2649, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2650, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2651, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2652, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2653, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2654, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2655, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2656, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2657, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2658, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2659, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2660, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2661, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2662, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2663, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2664, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2665, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2666, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2667, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2668, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2669, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2670, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2671, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2672, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2673, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2674, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2675, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2676, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2677, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2678, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2679, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2680, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2681, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2682, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2683, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2684, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2685, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2686, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2687, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2688, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2689, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2690, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2691, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2692, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2693, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2694, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2695, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2696, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2697, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2698, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2699, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2700, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2701, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2702, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2703, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2704, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2705, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2706, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2707, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2708, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2709, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2710, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2711, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2712, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2713, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2714, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2715, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2716, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2717, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2718, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2719, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2720, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2721, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2722, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2723, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2724, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2725, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2726, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2727, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2728, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2729, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2730, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2731, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2732, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2733, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2734, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2735, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2736, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2737, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2738, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2739, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2740, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2741, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2742, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2743, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2744, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2745, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2746, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2747, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2748, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2749, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2750, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2751, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2752, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2753, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2754, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2755, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2756, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2757, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2758, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2759, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2760, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2761, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2762, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2763, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2764, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2765, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2766, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2767, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2768, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2769, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2770, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2771, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2772, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2773, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2774, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2775, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2776, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2777, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2778, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2779, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2780, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2781, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2782, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2783, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2784, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2785, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2786, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2787, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2788, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2789, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2790, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2791, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2792, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2793, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2794, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2795, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2796, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2797, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2798, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2799, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2800, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2801, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2802, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2803, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2804, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2805, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2806, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2807, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2808, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2809, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2810, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2811, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2812, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2813, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2814, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2815, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2816, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2817, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2818, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2819, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2820, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2821, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2822, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2823, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2824, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2825, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2826, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2827, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2828, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2829, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2830, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2831, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2832, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2833, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2834, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2835, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2836, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2837, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2838, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2839, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2840, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2841, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2842, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2843, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2844, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2845, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2846, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2847, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2848, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2849, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2850, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2851, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2852, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2853, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2854, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2855, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2856, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2857, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2858, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2859, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2860, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2861, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2862, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2863, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2864, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2865, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2866, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2867, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2868, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2869, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2870, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2871, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2872, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2873, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2874, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2875, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2876, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2877, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2878, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2879, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2880, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2881, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2882, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2883, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2884, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2885, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2886, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2887, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2888, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2889, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2890, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2891, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2892, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2893, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2894, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2895, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2896, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2897, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2898, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2899, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2900, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-23 10:34:15');
INSERT INTO `sys_job_log` VALUES (2901, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-11-23 10:35:00');
INSERT INTO `sys_job_log` VALUES (2902, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：24毫秒', '0', '', '2025-11-21 11:08:00');
INSERT INTO `sys_job_log` VALUES (2903, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 11:09:00');
INSERT INTO `sys_job_log` VALUES (2904, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:10:00');
INSERT INTO `sys_job_log` VALUES (2905, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 11:11:00');
INSERT INTO `sys_job_log` VALUES (2906, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-21 11:12:00');
INSERT INTO `sys_job_log` VALUES (2907, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-21 11:13:00');
INSERT INTO `sys_job_log` VALUES (2908, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:14:00');
INSERT INTO `sys_job_log` VALUES (2909, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:15:00');
INSERT INTO `sys_job_log` VALUES (2910, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:16:00');
INSERT INTO `sys_job_log` VALUES (2911, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:17:00');
INSERT INTO `sys_job_log` VALUES (2912, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:18:00');
INSERT INTO `sys_job_log` VALUES (2913, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-21 11:19:00');
INSERT INTO `sys_job_log` VALUES (2914, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:20:00');
INSERT INTO `sys_job_log` VALUES (2915, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:21:00');
INSERT INTO `sys_job_log` VALUES (2916, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:22:00');
INSERT INTO `sys_job_log` VALUES (2917, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:23:00');
INSERT INTO `sys_job_log` VALUES (2918, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:24:00');
INSERT INTO `sys_job_log` VALUES (2919, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:25:00');
INSERT INTO `sys_job_log` VALUES (2920, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:26:00');
INSERT INTO `sys_job_log` VALUES (2921, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:27:00');
INSERT INTO `sys_job_log` VALUES (2922, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:28:00');
INSERT INTO `sys_job_log` VALUES (2923, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:29:00');
INSERT INTO `sys_job_log` VALUES (2924, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:30:00');
INSERT INTO `sys_job_log` VALUES (2925, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:31:00');
INSERT INTO `sys_job_log` VALUES (2926, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:32:00');
INSERT INTO `sys_job_log` VALUES (2927, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:33:00');
INSERT INTO `sys_job_log` VALUES (2928, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 11:34:00');
INSERT INTO `sys_job_log` VALUES (2929, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:35:00');
INSERT INTO `sys_job_log` VALUES (2930, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:36:00');
INSERT INTO `sys_job_log` VALUES (2931, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:37:00');
INSERT INTO `sys_job_log` VALUES (2932, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:38:00');
INSERT INTO `sys_job_log` VALUES (2933, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:39:00');
INSERT INTO `sys_job_log` VALUES (2934, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 11:40:00');
INSERT INTO `sys_job_log` VALUES (2935, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:41:00');
INSERT INTO `sys_job_log` VALUES (2936, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:42:00');
INSERT INTO `sys_job_log` VALUES (2937, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:43:00');
INSERT INTO `sys_job_log` VALUES (2938, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:44:00');
INSERT INTO `sys_job_log` VALUES (2939, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:45:00');
INSERT INTO `sys_job_log` VALUES (2940, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:46:00');
INSERT INTO `sys_job_log` VALUES (2941, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:47:00');
INSERT INTO `sys_job_log` VALUES (2942, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:48:00');
INSERT INTO `sys_job_log` VALUES (2943, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:49:00');
INSERT INTO `sys_job_log` VALUES (2944, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:50:00');
INSERT INTO `sys_job_log` VALUES (2945, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:51:00');
INSERT INTO `sys_job_log` VALUES (2946, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:52:00');
INSERT INTO `sys_job_log` VALUES (2947, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:53:00');
INSERT INTO `sys_job_log` VALUES (2948, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:54:00');
INSERT INTO `sys_job_log` VALUES (2949, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:55:00');
INSERT INTO `sys_job_log` VALUES (2950, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:56:00');
INSERT INTO `sys_job_log` VALUES (2951, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 11:57:00');
INSERT INTO `sys_job_log` VALUES (2952, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 11:58:00');
INSERT INTO `sys_job_log` VALUES (2953, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 11:59:00');
INSERT INTO `sys_job_log` VALUES (2954, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:00:00');
INSERT INTO `sys_job_log` VALUES (2955, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:01:00');
INSERT INTO `sys_job_log` VALUES (2956, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:02:00');
INSERT INTO `sys_job_log` VALUES (2957, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 12:03:00');
INSERT INTO `sys_job_log` VALUES (2958, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:04:00');
INSERT INTO `sys_job_log` VALUES (2959, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-21 12:05:00');
INSERT INTO `sys_job_log` VALUES (2960, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:06:00');
INSERT INTO `sys_job_log` VALUES (2961, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:07:00');
INSERT INTO `sys_job_log` VALUES (2962, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:08:00');
INSERT INTO `sys_job_log` VALUES (2963, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:09:00');
INSERT INTO `sys_job_log` VALUES (2964, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:10:00');
INSERT INTO `sys_job_log` VALUES (2965, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 12:11:00');
INSERT INTO `sys_job_log` VALUES (2966, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:12:00');
INSERT INTO `sys_job_log` VALUES (2967, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:13:00');
INSERT INTO `sys_job_log` VALUES (2968, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:14:00');
INSERT INTO `sys_job_log` VALUES (2969, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:15:00');
INSERT INTO `sys_job_log` VALUES (2970, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:16:00');
INSERT INTO `sys_job_log` VALUES (2971, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:17:00');
INSERT INTO `sys_job_log` VALUES (2972, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:18:00');
INSERT INTO `sys_job_log` VALUES (2973, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:19:00');
INSERT INTO `sys_job_log` VALUES (2974, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 12:20:00');
INSERT INTO `sys_job_log` VALUES (2975, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:21:00');
INSERT INTO `sys_job_log` VALUES (2976, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:22:00');
INSERT INTO `sys_job_log` VALUES (2977, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:23:00');
INSERT INTO `sys_job_log` VALUES (2978, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:24:00');
INSERT INTO `sys_job_log` VALUES (2979, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:25:00');
INSERT INTO `sys_job_log` VALUES (2980, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:26:00');
INSERT INTO `sys_job_log` VALUES (2981, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:27:00');
INSERT INTO `sys_job_log` VALUES (2982, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:28:00');
INSERT INTO `sys_job_log` VALUES (2983, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:29:00');
INSERT INTO `sys_job_log` VALUES (2984, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:30:00');
INSERT INTO `sys_job_log` VALUES (2985, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 12:31:00');
INSERT INTO `sys_job_log` VALUES (2986, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:32:00');
INSERT INTO `sys_job_log` VALUES (2987, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:33:00');
INSERT INTO `sys_job_log` VALUES (2988, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:34:00');
INSERT INTO `sys_job_log` VALUES (2989, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-21 12:35:00');
INSERT INTO `sys_job_log` VALUES (2990, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:36:00');
INSERT INTO `sys_job_log` VALUES (2991, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:37:00');
INSERT INTO `sys_job_log` VALUES (2992, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 12:38:00');
INSERT INTO `sys_job_log` VALUES (2993, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:39:00');
INSERT INTO `sys_job_log` VALUES (2994, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:40:00');
INSERT INTO `sys_job_log` VALUES (2995, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:41:00');
INSERT INTO `sys_job_log` VALUES (2996, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:42:00');
INSERT INTO `sys_job_log` VALUES (2997, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:43:00');
INSERT INTO `sys_job_log` VALUES (2998, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:44:00');
INSERT INTO `sys_job_log` VALUES (2999, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:45:00');
INSERT INTO `sys_job_log` VALUES (3000, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:46:00');
INSERT INTO `sys_job_log` VALUES (3001, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:47:00');
INSERT INTO `sys_job_log` VALUES (3002, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:48:00');
INSERT INTO `sys_job_log` VALUES (3003, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:49:00');
INSERT INTO `sys_job_log` VALUES (3004, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:50:00');
INSERT INTO `sys_job_log` VALUES (3005, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:51:00');
INSERT INTO `sys_job_log` VALUES (3006, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:52:00');
INSERT INTO `sys_job_log` VALUES (3007, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:53:00');
INSERT INTO `sys_job_log` VALUES (3008, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:54:00');
INSERT INTO `sys_job_log` VALUES (3009, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 12:55:00');
INSERT INTO `sys_job_log` VALUES (3010, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 12:56:00');
INSERT INTO `sys_job_log` VALUES (3011, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 12:57:00');
INSERT INTO `sys_job_log` VALUES (3012, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 12:58:00');
INSERT INTO `sys_job_log` VALUES (3013, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 12:59:00');
INSERT INTO `sys_job_log` VALUES (3014, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:00:00');
INSERT INTO `sys_job_log` VALUES (3015, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:01:00');
INSERT INTO `sys_job_log` VALUES (3016, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:02:00');
INSERT INTO `sys_job_log` VALUES (3017, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:03:00');
INSERT INTO `sys_job_log` VALUES (3018, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:04:00');
INSERT INTO `sys_job_log` VALUES (3019, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:05:00');
INSERT INTO `sys_job_log` VALUES (3020, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:06:00');
INSERT INTO `sys_job_log` VALUES (3021, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:07:00');
INSERT INTO `sys_job_log` VALUES (3022, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:08:00');
INSERT INTO `sys_job_log` VALUES (3023, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:09:00');
INSERT INTO `sys_job_log` VALUES (3024, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:10:00');
INSERT INTO `sys_job_log` VALUES (3025, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:11:00');
INSERT INTO `sys_job_log` VALUES (3026, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:12:00');
INSERT INTO `sys_job_log` VALUES (3027, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:13:00');
INSERT INTO `sys_job_log` VALUES (3028, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:14:00');
INSERT INTO `sys_job_log` VALUES (3029, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:15:00');
INSERT INTO `sys_job_log` VALUES (3030, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:16:00');
INSERT INTO `sys_job_log` VALUES (3031, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:17:00');
INSERT INTO `sys_job_log` VALUES (3032, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:18:00');
INSERT INTO `sys_job_log` VALUES (3033, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:19:00');
INSERT INTO `sys_job_log` VALUES (3034, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:20:00');
INSERT INTO `sys_job_log` VALUES (3035, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:21:00');
INSERT INTO `sys_job_log` VALUES (3036, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:22:00');
INSERT INTO `sys_job_log` VALUES (3037, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:23:00');
INSERT INTO `sys_job_log` VALUES (3038, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:24:00');
INSERT INTO `sys_job_log` VALUES (3039, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:25:00');
INSERT INTO `sys_job_log` VALUES (3040, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:26:00');
INSERT INTO `sys_job_log` VALUES (3041, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:27:00');
INSERT INTO `sys_job_log` VALUES (3042, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:28:00');
INSERT INTO `sys_job_log` VALUES (3043, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:29:00');
INSERT INTO `sys_job_log` VALUES (3044, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：16毫秒', '0', '', '2025-11-21 13:30:00');
INSERT INTO `sys_job_log` VALUES (3045, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 13:31:00');
INSERT INTO `sys_job_log` VALUES (3046, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:32:00');
INSERT INTO `sys_job_log` VALUES (3047, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：18毫秒', '0', '', '2025-11-21 13:38:00');
INSERT INTO `sys_job_log` VALUES (3048, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 13:39:00');
INSERT INTO `sys_job_log` VALUES (3049, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:40:00');
INSERT INTO `sys_job_log` VALUES (3050, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:41:00');
INSERT INTO `sys_job_log` VALUES (3051, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:42:00');
INSERT INTO `sys_job_log` VALUES (3052, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 13:43:00');
INSERT INTO `sys_job_log` VALUES (3053, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 13:44:00');
INSERT INTO `sys_job_log` VALUES (3054, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:45:00');
INSERT INTO `sys_job_log` VALUES (3055, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 13:46:00');
INSERT INTO `sys_job_log` VALUES (3056, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:47:00');
INSERT INTO `sys_job_log` VALUES (3057, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:49:00');
INSERT INTO `sys_job_log` VALUES (3058, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:50:00');
INSERT INTO `sys_job_log` VALUES (3059, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:51:00');
INSERT INTO `sys_job_log` VALUES (3060, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:52:00');
INSERT INTO `sys_job_log` VALUES (3061, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:53:00');
INSERT INTO `sys_job_log` VALUES (3062, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:54:00');
INSERT INTO `sys_job_log` VALUES (3063, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:55:00');
INSERT INTO `sys_job_log` VALUES (3064, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:56:00');
INSERT INTO `sys_job_log` VALUES (3065, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:57:00');
INSERT INTO `sys_job_log` VALUES (3066, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 13:58:00');
INSERT INTO `sys_job_log` VALUES (3067, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 13:59:00');
INSERT INTO `sys_job_log` VALUES (3068, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:00:00');
INSERT INTO `sys_job_log` VALUES (3069, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:01:00');
INSERT INTO `sys_job_log` VALUES (3070, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:02:00');
INSERT INTO `sys_job_log` VALUES (3071, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：18毫秒', '0', '', '2025-11-21 14:07:00');
INSERT INTO `sys_job_log` VALUES (3072, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:08:00');
INSERT INTO `sys_job_log` VALUES (3073, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:09:00');
INSERT INTO `sys_job_log` VALUES (3074, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:10:00');
INSERT INTO `sys_job_log` VALUES (3075, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:11:00');
INSERT INTO `sys_job_log` VALUES (3076, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:12:00');
INSERT INTO `sys_job_log` VALUES (3077, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:13:00');
INSERT INTO `sys_job_log` VALUES (3078, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-11-21 14:14:00');
INSERT INTO `sys_job_log` VALUES (3079, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:15:00');
INSERT INTO `sys_job_log` VALUES (3080, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:16:00');
INSERT INTO `sys_job_log` VALUES (3081, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:17:00');
INSERT INTO `sys_job_log` VALUES (3082, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-21 14:18:00');
INSERT INTO `sys_job_log` VALUES (3083, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:19:00');
INSERT INTO `sys_job_log` VALUES (3084, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:20:00');
INSERT INTO `sys_job_log` VALUES (3085, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:21:00');
INSERT INTO `sys_job_log` VALUES (3086, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:22:00');
INSERT INTO `sys_job_log` VALUES (3087, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:23:00');
INSERT INTO `sys_job_log` VALUES (3088, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-21 14:25:00');
INSERT INTO `sys_job_log` VALUES (3089, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:26:00');
INSERT INTO `sys_job_log` VALUES (3090, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:27:00');
INSERT INTO `sys_job_log` VALUES (3091, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-21 14:28:00');
INSERT INTO `sys_job_log` VALUES (3092, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:29:00');
INSERT INTO `sys_job_log` VALUES (3093, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:30:00');
INSERT INTO `sys_job_log` VALUES (3094, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:31:00');
INSERT INTO `sys_job_log` VALUES (3095, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:32:00');
INSERT INTO `sys_job_log` VALUES (3096, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:33:00');
INSERT INTO `sys_job_log` VALUES (3097, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 14:34:00');
INSERT INTO `sys_job_log` VALUES (3098, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:35:00');
INSERT INTO `sys_job_log` VALUES (3099, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:36:00');
INSERT INTO `sys_job_log` VALUES (3100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:37:00');
INSERT INTO `sys_job_log` VALUES (3101, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:38:00');
INSERT INTO `sys_job_log` VALUES (3102, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:39:00');
INSERT INTO `sys_job_log` VALUES (3103, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:40:00');
INSERT INTO `sys_job_log` VALUES (3104, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:41:00');
INSERT INTO `sys_job_log` VALUES (3105, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:42:00');
INSERT INTO `sys_job_log` VALUES (3106, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:43:00');
INSERT INTO `sys_job_log` VALUES (3107, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 14:44:00');
INSERT INTO `sys_job_log` VALUES (3108, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:45:00');
INSERT INTO `sys_job_log` VALUES (3109, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:46:00');
INSERT INTO `sys_job_log` VALUES (3110, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:47:00');
INSERT INTO `sys_job_log` VALUES (3111, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:48:00');
INSERT INTO `sys_job_log` VALUES (3112, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:49:00');
INSERT INTO `sys_job_log` VALUES (3113, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 14:50:00');
INSERT INTO `sys_job_log` VALUES (3114, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:51:00');
INSERT INTO `sys_job_log` VALUES (3115, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-21 14:52:00');
INSERT INTO `sys_job_log` VALUES (3116, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-21 14:53:00');
INSERT INTO `sys_job_log` VALUES (3117, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 14:54:00');
INSERT INTO `sys_job_log` VALUES (3118, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-11-21 15:15:00');
INSERT INTO `sys_job_log` VALUES (3119, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:16:00');
INSERT INTO `sys_job_log` VALUES (3120, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：24毫秒', '0', '', '2025-11-21 15:18:00');
INSERT INTO `sys_job_log` VALUES (3121, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 15:19:00');
INSERT INTO `sys_job_log` VALUES (3122, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:20:00');
INSERT INTO `sys_job_log` VALUES (3123, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-21 15:21:00');
INSERT INTO `sys_job_log` VALUES (3124, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:22:00');
INSERT INTO `sys_job_log` VALUES (3125, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:23:00');
INSERT INTO `sys_job_log` VALUES (3126, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-21 15:24:00');
INSERT INTO `sys_job_log` VALUES (3127, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:25:00');
INSERT INTO `sys_job_log` VALUES (3128, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:26:00');
INSERT INTO `sys_job_log` VALUES (3129, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:27:00');
INSERT INTO `sys_job_log` VALUES (3130, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:28:00');
INSERT INTO `sys_job_log` VALUES (3131, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:29:00');
INSERT INTO `sys_job_log` VALUES (3132, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:30:00');
INSERT INTO `sys_job_log` VALUES (3133, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:31:00');
INSERT INTO `sys_job_log` VALUES (3134, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:32:00');
INSERT INTO `sys_job_log` VALUES (3135, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:33:00');
INSERT INTO `sys_job_log` VALUES (3136, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:34:00');
INSERT INTO `sys_job_log` VALUES (3137, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:35:00');
INSERT INTO `sys_job_log` VALUES (3138, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:36:00');
INSERT INTO `sys_job_log` VALUES (3139, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:37:00');
INSERT INTO `sys_job_log` VALUES (3140, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:38:00');
INSERT INTO `sys_job_log` VALUES (3141, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:39:00');
INSERT INTO `sys_job_log` VALUES (3142, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:40:00');
INSERT INTO `sys_job_log` VALUES (3143, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:41:00');
INSERT INTO `sys_job_log` VALUES (3144, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:42:00');
INSERT INTO `sys_job_log` VALUES (3145, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:43:00');
INSERT INTO `sys_job_log` VALUES (3146, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:44:00');
INSERT INTO `sys_job_log` VALUES (3147, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:45:00');
INSERT INTO `sys_job_log` VALUES (3148, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 15:46:00');
INSERT INTO `sys_job_log` VALUES (3149, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:47:00');
INSERT INTO `sys_job_log` VALUES (3150, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:48:00');
INSERT INTO `sys_job_log` VALUES (3151, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:49:00');
INSERT INTO `sys_job_log` VALUES (3152, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:50:00');
INSERT INTO `sys_job_log` VALUES (3153, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-21 15:51:00');
INSERT INTO `sys_job_log` VALUES (3154, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:52:00');
INSERT INTO `sys_job_log` VALUES (3155, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:53:00');
INSERT INTO `sys_job_log` VALUES (3156, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 15:54:00');
INSERT INTO `sys_job_log` VALUES (3157, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:55:00');
INSERT INTO `sys_job_log` VALUES (3158, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:56:00');
INSERT INTO `sys_job_log` VALUES (3159, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:57:00');
INSERT INTO `sys_job_log` VALUES (3160, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:58:00');
INSERT INTO `sys_job_log` VALUES (3161, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 15:59:00');
INSERT INTO `sys_job_log` VALUES (3162, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:00:00');
INSERT INTO `sys_job_log` VALUES (3163, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 16:01:00');
INSERT INTO `sys_job_log` VALUES (3164, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:02:00');
INSERT INTO `sys_job_log` VALUES (3165, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:03:00');
INSERT INTO `sys_job_log` VALUES (3166, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 16:04:00');
INSERT INTO `sys_job_log` VALUES (3167, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:05:00');
INSERT INTO `sys_job_log` VALUES (3168, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:06:00');
INSERT INTO `sys_job_log` VALUES (3169, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:07:00');
INSERT INTO `sys_job_log` VALUES (3170, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:08:00');
INSERT INTO `sys_job_log` VALUES (3171, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:09:00');
INSERT INTO `sys_job_log` VALUES (3172, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:10:00');
INSERT INTO `sys_job_log` VALUES (3173, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:11:00');
INSERT INTO `sys_job_log` VALUES (3174, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 16:12:00');
INSERT INTO `sys_job_log` VALUES (3175, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 16:13:00');
INSERT INTO `sys_job_log` VALUES (3176, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 16:14:00');
INSERT INTO `sys_job_log` VALUES (3177, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 16:15:00');
INSERT INTO `sys_job_log` VALUES (3178, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 16:16:00');
INSERT INTO `sys_job_log` VALUES (3179, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-21 16:17:00');
INSERT INTO `sys_job_log` VALUES (3180, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-21 16:18:00');
INSERT INTO `sys_job_log` VALUES (3181, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-21 16:19:00');
INSERT INTO `sys_job_log` VALUES (3182, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：31毫秒', '0', '', '2025-11-24 10:21:00');
INSERT INTO `sys_job_log` VALUES (3183, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:22:00');
INSERT INTO `sys_job_log` VALUES (3184, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 10:23:00');
INSERT INTO `sys_job_log` VALUES (3185, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-24 10:24:00');
INSERT INTO `sys_job_log` VALUES (3186, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:25:00');
INSERT INTO `sys_job_log` VALUES (3187, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:26:00');
INSERT INTO `sys_job_log` VALUES (3188, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:27:00');
INSERT INTO `sys_job_log` VALUES (3189, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 10:28:00');
INSERT INTO `sys_job_log` VALUES (3190, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:29:00');
INSERT INTO `sys_job_log` VALUES (3191, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-24 10:30:00');
INSERT INTO `sys_job_log` VALUES (3192, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:31:00');
INSERT INTO `sys_job_log` VALUES (3193, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:32:00');
INSERT INTO `sys_job_log` VALUES (3194, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:33:00');
INSERT INTO `sys_job_log` VALUES (3195, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:34:00');
INSERT INTO `sys_job_log` VALUES (3196, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:35:00');
INSERT INTO `sys_job_log` VALUES (3197, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:36:00');
INSERT INTO `sys_job_log` VALUES (3198, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:37:00');
INSERT INTO `sys_job_log` VALUES (3199, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:38:00');
INSERT INTO `sys_job_log` VALUES (3200, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 10:39:00');
INSERT INTO `sys_job_log` VALUES (3201, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:40:00');
INSERT INTO `sys_job_log` VALUES (3202, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:41:00');
INSERT INTO `sys_job_log` VALUES (3203, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 10:42:00');
INSERT INTO `sys_job_log` VALUES (3204, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:43:00');
INSERT INTO `sys_job_log` VALUES (3205, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-24 10:44:00');
INSERT INTO `sys_job_log` VALUES (3206, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:45:00');
INSERT INTO `sys_job_log` VALUES (3207, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-24 10:46:00');
INSERT INTO `sys_job_log` VALUES (3208, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:47:00');
INSERT INTO `sys_job_log` VALUES (3209, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:48:00');
INSERT INTO `sys_job_log` VALUES (3210, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:49:00');
INSERT INTO `sys_job_log` VALUES (3211, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:50:00');
INSERT INTO `sys_job_log` VALUES (3212, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 10:51:00');
INSERT INTO `sys_job_log` VALUES (3213, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:52:00');
INSERT INTO `sys_job_log` VALUES (3214, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:53:00');
INSERT INTO `sys_job_log` VALUES (3215, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 10:54:00');
INSERT INTO `sys_job_log` VALUES (3216, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:55:00');
INSERT INTO `sys_job_log` VALUES (3217, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 10:56:00');
INSERT INTO `sys_job_log` VALUES (3218, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 10:57:00');
INSERT INTO `sys_job_log` VALUES (3219, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 10:58:00');
INSERT INTO `sys_job_log` VALUES (3220, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 10:59:00');
INSERT INTO `sys_job_log` VALUES (3221, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:00:00');
INSERT INTO `sys_job_log` VALUES (3222, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:01:00');
INSERT INTO `sys_job_log` VALUES (3223, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:02:00');
INSERT INTO `sys_job_log` VALUES (3224, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:03:00');
INSERT INTO `sys_job_log` VALUES (3225, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 11:04:00');
INSERT INTO `sys_job_log` VALUES (3226, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 11:05:00');
INSERT INTO `sys_job_log` VALUES (3227, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:06:00');
INSERT INTO `sys_job_log` VALUES (3228, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 11:07:00');
INSERT INTO `sys_job_log` VALUES (3229, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-24 11:08:00');
INSERT INTO `sys_job_log` VALUES (3230, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:09:00');
INSERT INTO `sys_job_log` VALUES (3231, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 11:10:00');
INSERT INTO `sys_job_log` VALUES (3232, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:11:00');
INSERT INTO `sys_job_log` VALUES (3233, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:12:00');
INSERT INTO `sys_job_log` VALUES (3234, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 11:13:00');
INSERT INTO `sys_job_log` VALUES (3235, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:14:00');
INSERT INTO `sys_job_log` VALUES (3236, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:15:00');
INSERT INTO `sys_job_log` VALUES (3237, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:16:00');
INSERT INTO `sys_job_log` VALUES (3238, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:17:00');
INSERT INTO `sys_job_log` VALUES (3239, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:18:00');
INSERT INTO `sys_job_log` VALUES (3240, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:19:00');
INSERT INTO `sys_job_log` VALUES (3241, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:20:00');
INSERT INTO `sys_job_log` VALUES (3242, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:21:00');
INSERT INTO `sys_job_log` VALUES (3243, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:22:00');
INSERT INTO `sys_job_log` VALUES (3244, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:23:00');
INSERT INTO `sys_job_log` VALUES (3245, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:24:00');
INSERT INTO `sys_job_log` VALUES (3246, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:25:00');
INSERT INTO `sys_job_log` VALUES (3247, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:26:00');
INSERT INTO `sys_job_log` VALUES (3248, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:27:00');
INSERT INTO `sys_job_log` VALUES (3249, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:28:00');
INSERT INTO `sys_job_log` VALUES (3250, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:29:00');
INSERT INTO `sys_job_log` VALUES (3251, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:30:00');
INSERT INTO `sys_job_log` VALUES (3252, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:31:00');
INSERT INTO `sys_job_log` VALUES (3253, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:32:00');
INSERT INTO `sys_job_log` VALUES (3254, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:33:00');
INSERT INTO `sys_job_log` VALUES (3255, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:34:00');
INSERT INTO `sys_job_log` VALUES (3256, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:35:00');
INSERT INTO `sys_job_log` VALUES (3257, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:36:00');
INSERT INTO `sys_job_log` VALUES (3258, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:37:00');
INSERT INTO `sys_job_log` VALUES (3259, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:38:00');
INSERT INTO `sys_job_log` VALUES (3260, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:39:00');
INSERT INTO `sys_job_log` VALUES (3261, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:40:00');
INSERT INTO `sys_job_log` VALUES (3262, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:41:00');
INSERT INTO `sys_job_log` VALUES (3263, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:42:00');
INSERT INTO `sys_job_log` VALUES (3264, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:43:00');
INSERT INTO `sys_job_log` VALUES (3265, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:44:00');
INSERT INTO `sys_job_log` VALUES (3266, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:45:00');
INSERT INTO `sys_job_log` VALUES (3267, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:46:00');
INSERT INTO `sys_job_log` VALUES (3268, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:47:00');
INSERT INTO `sys_job_log` VALUES (3269, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:48:00');
INSERT INTO `sys_job_log` VALUES (3270, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:49:00');
INSERT INTO `sys_job_log` VALUES (3271, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:50:00');
INSERT INTO `sys_job_log` VALUES (3272, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:51:00');
INSERT INTO `sys_job_log` VALUES (3273, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:52:00');
INSERT INTO `sys_job_log` VALUES (3274, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 11:53:00');
INSERT INTO `sys_job_log` VALUES (3275, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:54:00');
INSERT INTO `sys_job_log` VALUES (3276, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 11:55:00');
INSERT INTO `sys_job_log` VALUES (3277, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:56:00');
INSERT INTO `sys_job_log` VALUES (3278, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:57:00');
INSERT INTO `sys_job_log` VALUES (3279, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:58:00');
INSERT INTO `sys_job_log` VALUES (3280, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 11:59:00');
INSERT INTO `sys_job_log` VALUES (3281, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:00:00');
INSERT INTO `sys_job_log` VALUES (3282, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:01:00');
INSERT INTO `sys_job_log` VALUES (3283, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:02:00');
INSERT INTO `sys_job_log` VALUES (3284, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:03:00');
INSERT INTO `sys_job_log` VALUES (3285, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:04:00');
INSERT INTO `sys_job_log` VALUES (3286, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:05:00');
INSERT INTO `sys_job_log` VALUES (3287, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:06:00');
INSERT INTO `sys_job_log` VALUES (3288, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:07:00');
INSERT INTO `sys_job_log` VALUES (3289, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:08:00');
INSERT INTO `sys_job_log` VALUES (3290, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:09:00');
INSERT INTO `sys_job_log` VALUES (3291, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-24 12:10:00');
INSERT INTO `sys_job_log` VALUES (3292, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:11:00');
INSERT INTO `sys_job_log` VALUES (3293, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:12:00');
INSERT INTO `sys_job_log` VALUES (3294, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-24 12:13:00');
INSERT INTO `sys_job_log` VALUES (3295, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:14:00');
INSERT INTO `sys_job_log` VALUES (3296, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:15:00');
INSERT INTO `sys_job_log` VALUES (3297, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:16:00');
INSERT INTO `sys_job_log` VALUES (3298, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:17:00');
INSERT INTO `sys_job_log` VALUES (3299, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:18:00');
INSERT INTO `sys_job_log` VALUES (3300, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:19:00');
INSERT INTO `sys_job_log` VALUES (3301, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:20:00');
INSERT INTO `sys_job_log` VALUES (3302, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:21:00');
INSERT INTO `sys_job_log` VALUES (3303, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:22:00');
INSERT INTO `sys_job_log` VALUES (3304, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:23:00');
INSERT INTO `sys_job_log` VALUES (3305, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:24:00');
INSERT INTO `sys_job_log` VALUES (3306, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:25:00');
INSERT INTO `sys_job_log` VALUES (3307, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:26:00');
INSERT INTO `sys_job_log` VALUES (3308, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:27:00');
INSERT INTO `sys_job_log` VALUES (3309, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:28:00');
INSERT INTO `sys_job_log` VALUES (3310, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:29:00');
INSERT INTO `sys_job_log` VALUES (3311, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:30:00');
INSERT INTO `sys_job_log` VALUES (3312, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:31:00');
INSERT INTO `sys_job_log` VALUES (3313, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:32:00');
INSERT INTO `sys_job_log` VALUES (3314, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:33:00');
INSERT INTO `sys_job_log` VALUES (3315, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:34:00');
INSERT INTO `sys_job_log` VALUES (3316, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:35:00');
INSERT INTO `sys_job_log` VALUES (3317, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:36:00');
INSERT INTO `sys_job_log` VALUES (3318, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:37:00');
INSERT INTO `sys_job_log` VALUES (3319, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:38:00');
INSERT INTO `sys_job_log` VALUES (3320, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:39:00');
INSERT INTO `sys_job_log` VALUES (3321, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:40:00');
INSERT INTO `sys_job_log` VALUES (3322, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:41:00');
INSERT INTO `sys_job_log` VALUES (3323, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:42:00');
INSERT INTO `sys_job_log` VALUES (3324, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:43:00');
INSERT INTO `sys_job_log` VALUES (3325, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:44:00');
INSERT INTO `sys_job_log` VALUES (3326, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:45:00');
INSERT INTO `sys_job_log` VALUES (3327, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:46:00');
INSERT INTO `sys_job_log` VALUES (3328, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:47:00');
INSERT INTO `sys_job_log` VALUES (3329, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:48:00');
INSERT INTO `sys_job_log` VALUES (3330, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:49:00');
INSERT INTO `sys_job_log` VALUES (3331, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 12:50:00');
INSERT INTO `sys_job_log` VALUES (3332, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:51:00');
INSERT INTO `sys_job_log` VALUES (3333, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:52:00');
INSERT INTO `sys_job_log` VALUES (3334, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:53:00');
INSERT INTO `sys_job_log` VALUES (3335, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:54:00');
INSERT INTO `sys_job_log` VALUES (3336, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:55:00');
INSERT INTO `sys_job_log` VALUES (3337, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:56:00');
INSERT INTO `sys_job_log` VALUES (3338, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:57:00');
INSERT INTO `sys_job_log` VALUES (3339, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 12:58:00');
INSERT INTO `sys_job_log` VALUES (3340, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 12:59:00');
INSERT INTO `sys_job_log` VALUES (3341, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:00:00');
INSERT INTO `sys_job_log` VALUES (3342, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:01:00');
INSERT INTO `sys_job_log` VALUES (3343, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:02:00');
INSERT INTO `sys_job_log` VALUES (3344, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:03:00');
INSERT INTO `sys_job_log` VALUES (3345, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 13:04:00');
INSERT INTO `sys_job_log` VALUES (3346, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:05:00');
INSERT INTO `sys_job_log` VALUES (3347, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:06:00');
INSERT INTO `sys_job_log` VALUES (3348, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:07:00');
INSERT INTO `sys_job_log` VALUES (3349, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:08:00');
INSERT INTO `sys_job_log` VALUES (3350, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:09:00');
INSERT INTO `sys_job_log` VALUES (3351, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:10:00');
INSERT INTO `sys_job_log` VALUES (3352, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:11:00');
INSERT INTO `sys_job_log` VALUES (3353, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:12:00');
INSERT INTO `sys_job_log` VALUES (3354, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:13:00');
INSERT INTO `sys_job_log` VALUES (3355, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:14:00');
INSERT INTO `sys_job_log` VALUES (3356, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:15:00');
INSERT INTO `sys_job_log` VALUES (3357, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:16:00');
INSERT INTO `sys_job_log` VALUES (3358, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:17:00');
INSERT INTO `sys_job_log` VALUES (3359, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:18:00');
INSERT INTO `sys_job_log` VALUES (3360, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:19:00');
INSERT INTO `sys_job_log` VALUES (3361, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:20:00');
INSERT INTO `sys_job_log` VALUES (3362, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:21:00');
INSERT INTO `sys_job_log` VALUES (3363, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:22:00');
INSERT INTO `sys_job_log` VALUES (3364, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:23:00');
INSERT INTO `sys_job_log` VALUES (3365, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:24:00');
INSERT INTO `sys_job_log` VALUES (3366, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:25:00');
INSERT INTO `sys_job_log` VALUES (3367, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:26:00');
INSERT INTO `sys_job_log` VALUES (3368, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:27:00');
INSERT INTO `sys_job_log` VALUES (3369, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:28:00');
INSERT INTO `sys_job_log` VALUES (3370, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:29:00');
INSERT INTO `sys_job_log` VALUES (3371, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:30:00');
INSERT INTO `sys_job_log` VALUES (3372, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:31:00');
INSERT INTO `sys_job_log` VALUES (3373, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:32:00');
INSERT INTO `sys_job_log` VALUES (3374, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:33:00');
INSERT INTO `sys_job_log` VALUES (3375, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:34:00');
INSERT INTO `sys_job_log` VALUES (3376, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:35:00');
INSERT INTO `sys_job_log` VALUES (3377, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:36:00');
INSERT INTO `sys_job_log` VALUES (3378, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:37:00');
INSERT INTO `sys_job_log` VALUES (3379, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:38:00');
INSERT INTO `sys_job_log` VALUES (3380, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:39:00');
INSERT INTO `sys_job_log` VALUES (3381, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:40:00');
INSERT INTO `sys_job_log` VALUES (3382, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:41:00');
INSERT INTO `sys_job_log` VALUES (3383, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 13:42:00');
INSERT INTO `sys_job_log` VALUES (3384, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:43:00');
INSERT INTO `sys_job_log` VALUES (3385, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:44:00');
INSERT INTO `sys_job_log` VALUES (3386, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:45:00');
INSERT INTO `sys_job_log` VALUES (3387, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:46:00');
INSERT INTO `sys_job_log` VALUES (3388, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:47:00');
INSERT INTO `sys_job_log` VALUES (3389, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:48:00');
INSERT INTO `sys_job_log` VALUES (3390, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:49:00');
INSERT INTO `sys_job_log` VALUES (3391, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 13:50:00');
INSERT INTO `sys_job_log` VALUES (3392, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 13:51:00');
INSERT INTO `sys_job_log` VALUES (3393, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:52:00');
INSERT INTO `sys_job_log` VALUES (3394, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-24 13:53:00');
INSERT INTO `sys_job_log` VALUES (3395, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:54:00');
INSERT INTO `sys_job_log` VALUES (3396, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:55:00');
INSERT INTO `sys_job_log` VALUES (3397, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:56:00');
INSERT INTO `sys_job_log` VALUES (3398, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 13:57:00');
INSERT INTO `sys_job_log` VALUES (3399, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 13:58:00');
INSERT INTO `sys_job_log` VALUES (3400, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 13:59:00');
INSERT INTO `sys_job_log` VALUES (3401, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:00:00');
INSERT INTO `sys_job_log` VALUES (3402, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:01:00');
INSERT INTO `sys_job_log` VALUES (3403, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:02:00');
INSERT INTO `sys_job_log` VALUES (3404, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:03:00');
INSERT INTO `sys_job_log` VALUES (3405, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 14:04:00');
INSERT INTO `sys_job_log` VALUES (3406, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:05:00');
INSERT INTO `sys_job_log` VALUES (3407, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:06:00');
INSERT INTO `sys_job_log` VALUES (3408, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:07:00');
INSERT INTO `sys_job_log` VALUES (3409, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:08:00');
INSERT INTO `sys_job_log` VALUES (3410, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:09:00');
INSERT INTO `sys_job_log` VALUES (3411, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:10:00');
INSERT INTO `sys_job_log` VALUES (3412, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:11:00');
INSERT INTO `sys_job_log` VALUES (3413, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-24 14:12:00');
INSERT INTO `sys_job_log` VALUES (3414, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 14:13:00');
INSERT INTO `sys_job_log` VALUES (3415, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:14:00');
INSERT INTO `sys_job_log` VALUES (3416, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:15:00');
INSERT INTO `sys_job_log` VALUES (3417, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 14:16:00');
INSERT INTO `sys_job_log` VALUES (3418, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:17:00');
INSERT INTO `sys_job_log` VALUES (3419, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:18:00');
INSERT INTO `sys_job_log` VALUES (3420, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:19:00');
INSERT INTO `sys_job_log` VALUES (3421, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 14:20:00');
INSERT INTO `sys_job_log` VALUES (3422, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:21:00');
INSERT INTO `sys_job_log` VALUES (3423, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-24 14:22:00');
INSERT INTO `sys_job_log` VALUES (3424, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:23:00');
INSERT INTO `sys_job_log` VALUES (3425, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 14:24:00');
INSERT INTO `sys_job_log` VALUES (3426, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:25:00');
INSERT INTO `sys_job_log` VALUES (3427, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:26:00');
INSERT INTO `sys_job_log` VALUES (3428, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 14:27:00');
INSERT INTO `sys_job_log` VALUES (3429, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 14:28:00');
INSERT INTO `sys_job_log` VALUES (3430, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:29:00');
INSERT INTO `sys_job_log` VALUES (3431, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:30:00');
INSERT INTO `sys_job_log` VALUES (3432, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:31:00');
INSERT INTO `sys_job_log` VALUES (3433, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:32:00');
INSERT INTO `sys_job_log` VALUES (3434, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-24 14:33:00');
INSERT INTO `sys_job_log` VALUES (3435, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:34:00');
INSERT INTO `sys_job_log` VALUES (3436, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-24 14:35:00');
INSERT INTO `sys_job_log` VALUES (3437, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-24 14:36:00');
INSERT INTO `sys_job_log` VALUES (3438, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：47毫秒', '0', '', '2025-11-25 08:58:00');
INSERT INTO `sys_job_log` VALUES (3439, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 08:59:00');
INSERT INTO `sys_job_log` VALUES (3440, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:00:00');
INSERT INTO `sys_job_log` VALUES (3441, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:01:00');
INSERT INTO `sys_job_log` VALUES (3442, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:02:00');
INSERT INTO `sys_job_log` VALUES (3443, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:03:00');
INSERT INTO `sys_job_log` VALUES (3444, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 09:04:00');
INSERT INTO `sys_job_log` VALUES (3445, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:05:00');
INSERT INTO `sys_job_log` VALUES (3446, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:06:00');
INSERT INTO `sys_job_log` VALUES (3447, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 09:07:00');
INSERT INTO `sys_job_log` VALUES (3448, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:08:00');
INSERT INTO `sys_job_log` VALUES (3449, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:09:00');
INSERT INTO `sys_job_log` VALUES (3450, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:10:00');
INSERT INTO `sys_job_log` VALUES (3451, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:11:00');
INSERT INTO `sys_job_log` VALUES (3452, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-11-25 09:12:00');
INSERT INTO `sys_job_log` VALUES (3453, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：16毫秒', '0', '', '2025-11-25 09:13:00');
INSERT INTO `sys_job_log` VALUES (3454, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 09:14:00');
INSERT INTO `sys_job_log` VALUES (3455, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:15:00');
INSERT INTO `sys_job_log` VALUES (3456, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:16:00');
INSERT INTO `sys_job_log` VALUES (3457, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:17:00');
INSERT INTO `sys_job_log` VALUES (3458, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:18:00');
INSERT INTO `sys_job_log` VALUES (3459, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:19:00');
INSERT INTO `sys_job_log` VALUES (3460, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:20:00');
INSERT INTO `sys_job_log` VALUES (3461, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:21:00');
INSERT INTO `sys_job_log` VALUES (3462, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:22:00');
INSERT INTO `sys_job_log` VALUES (3463, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-11-25 09:23:00');
INSERT INTO `sys_job_log` VALUES (3464, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:24:00');
INSERT INTO `sys_job_log` VALUES (3465, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:25:00');
INSERT INTO `sys_job_log` VALUES (3466, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:26:00');
INSERT INTO `sys_job_log` VALUES (3467, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 09:27:00');
INSERT INTO `sys_job_log` VALUES (3468, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:28:00');
INSERT INTO `sys_job_log` VALUES (3469, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:29:00');
INSERT INTO `sys_job_log` VALUES (3470, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:30:00');
INSERT INTO `sys_job_log` VALUES (3471, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:31:00');
INSERT INTO `sys_job_log` VALUES (3472, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:32:00');
INSERT INTO `sys_job_log` VALUES (3473, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:33:00');
INSERT INTO `sys_job_log` VALUES (3474, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:34:00');
INSERT INTO `sys_job_log` VALUES (3475, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:35:00');
INSERT INTO `sys_job_log` VALUES (3476, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:36:00');
INSERT INTO `sys_job_log` VALUES (3477, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:37:00');
INSERT INTO `sys_job_log` VALUES (3478, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:38:00');
INSERT INTO `sys_job_log` VALUES (3479, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:39:00');
INSERT INTO `sys_job_log` VALUES (3480, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:40:00');
INSERT INTO `sys_job_log` VALUES (3481, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:41:00');
INSERT INTO `sys_job_log` VALUES (3482, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:42:00');
INSERT INTO `sys_job_log` VALUES (3483, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:43:00');
INSERT INTO `sys_job_log` VALUES (3484, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:44:00');
INSERT INTO `sys_job_log` VALUES (3485, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:45:00');
INSERT INTO `sys_job_log` VALUES (3486, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:46:00');
INSERT INTO `sys_job_log` VALUES (3487, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:47:00');
INSERT INTO `sys_job_log` VALUES (3488, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:48:00');
INSERT INTO `sys_job_log` VALUES (3489, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:49:00');
INSERT INTO `sys_job_log` VALUES (3490, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:50:00');
INSERT INTO `sys_job_log` VALUES (3491, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:51:00');
INSERT INTO `sys_job_log` VALUES (3492, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:52:00');
INSERT INTO `sys_job_log` VALUES (3493, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:53:00');
INSERT INTO `sys_job_log` VALUES (3494, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:54:00');
INSERT INTO `sys_job_log` VALUES (3495, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 09:55:00');
INSERT INTO `sys_job_log` VALUES (3496, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 09:56:00');
INSERT INTO `sys_job_log` VALUES (3497, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 09:57:00');
INSERT INTO `sys_job_log` VALUES (3498, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 09:58:00');
INSERT INTO `sys_job_log` VALUES (3499, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 09:59:00');
INSERT INTO `sys_job_log` VALUES (3500, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:00:00');
INSERT INTO `sys_job_log` VALUES (3501, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:01:00');
INSERT INTO `sys_job_log` VALUES (3502, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:02:00');
INSERT INTO `sys_job_log` VALUES (3503, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:03:00');
INSERT INTO `sys_job_log` VALUES (3504, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:04:00');
INSERT INTO `sys_job_log` VALUES (3505, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:05:00');
INSERT INTO `sys_job_log` VALUES (3506, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:06:00');
INSERT INTO `sys_job_log` VALUES (3507, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:07:00');
INSERT INTO `sys_job_log` VALUES (3508, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:08:00');
INSERT INTO `sys_job_log` VALUES (3509, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 10:09:00');
INSERT INTO `sys_job_log` VALUES (3510, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:10:00');
INSERT INTO `sys_job_log` VALUES (3511, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:11:00');
INSERT INTO `sys_job_log` VALUES (3512, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:12:00');
INSERT INTO `sys_job_log` VALUES (3513, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:13:00');
INSERT INTO `sys_job_log` VALUES (3514, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:14:00');
INSERT INTO `sys_job_log` VALUES (3515, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:15:00');
INSERT INTO `sys_job_log` VALUES (3516, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:16:00');
INSERT INTO `sys_job_log` VALUES (3517, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:17:00');
INSERT INTO `sys_job_log` VALUES (3518, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:18:00');
INSERT INTO `sys_job_log` VALUES (3519, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 10:19:00');
INSERT INTO `sys_job_log` VALUES (3520, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:20:00');
INSERT INTO `sys_job_log` VALUES (3521, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:21:00');
INSERT INTO `sys_job_log` VALUES (3522, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:22:00');
INSERT INTO `sys_job_log` VALUES (3523, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:23:00');
INSERT INTO `sys_job_log` VALUES (3524, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:24:00');
INSERT INTO `sys_job_log` VALUES (3525, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:25:00');
INSERT INTO `sys_job_log` VALUES (3526, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:26:00');
INSERT INTO `sys_job_log` VALUES (3527, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:27:00');
INSERT INTO `sys_job_log` VALUES (3528, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:28:00');
INSERT INTO `sys_job_log` VALUES (3529, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:29:00');
INSERT INTO `sys_job_log` VALUES (3530, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:30:00');
INSERT INTO `sys_job_log` VALUES (3531, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:31:00');
INSERT INTO `sys_job_log` VALUES (3532, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:32:00');
INSERT INTO `sys_job_log` VALUES (3533, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 10:33:00');
INSERT INTO `sys_job_log` VALUES (3534, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:34:00');
INSERT INTO `sys_job_log` VALUES (3535, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 10:35:00');
INSERT INTO `sys_job_log` VALUES (3536, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:36:00');
INSERT INTO `sys_job_log` VALUES (3537, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:37:00');
INSERT INTO `sys_job_log` VALUES (3538, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:38:00');
INSERT INTO `sys_job_log` VALUES (3539, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:39:00');
INSERT INTO `sys_job_log` VALUES (3540, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:40:00');
INSERT INTO `sys_job_log` VALUES (3541, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:41:00');
INSERT INTO `sys_job_log` VALUES (3542, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:42:00');
INSERT INTO `sys_job_log` VALUES (3543, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:43:00');
INSERT INTO `sys_job_log` VALUES (3544, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:44:00');
INSERT INTO `sys_job_log` VALUES (3545, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:45:00');
INSERT INTO `sys_job_log` VALUES (3546, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:46:00');
INSERT INTO `sys_job_log` VALUES (3547, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:47:00');
INSERT INTO `sys_job_log` VALUES (3548, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:48:00');
INSERT INTO `sys_job_log` VALUES (3549, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:49:00');
INSERT INTO `sys_job_log` VALUES (3550, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:50:00');
INSERT INTO `sys_job_log` VALUES (3551, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:51:00');
INSERT INTO `sys_job_log` VALUES (3552, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:52:00');
INSERT INTO `sys_job_log` VALUES (3553, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:53:00');
INSERT INTO `sys_job_log` VALUES (3554, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:54:00');
INSERT INTO `sys_job_log` VALUES (3555, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:55:00');
INSERT INTO `sys_job_log` VALUES (3556, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 10:56:00');
INSERT INTO `sys_job_log` VALUES (3557, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 10:57:00');
INSERT INTO `sys_job_log` VALUES (3558, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 10:58:00');
INSERT INTO `sys_job_log` VALUES (3559, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 10:59:00');
INSERT INTO `sys_job_log` VALUES (3560, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：16毫秒', '0', '', '2025-11-25 11:29:00');
INSERT INTO `sys_job_log` VALUES (3561, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 11:30:00');
INSERT INTO `sys_job_log` VALUES (3562, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 11:31:00');
INSERT INTO `sys_job_log` VALUES (3563, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:32:00');
INSERT INTO `sys_job_log` VALUES (3564, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:33:00');
INSERT INTO `sys_job_log` VALUES (3565, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:34:00');
INSERT INTO `sys_job_log` VALUES (3566, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:35:00');
INSERT INTO `sys_job_log` VALUES (3567, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:36:00');
INSERT INTO `sys_job_log` VALUES (3568, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:37:00');
INSERT INTO `sys_job_log` VALUES (3569, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:38:00');
INSERT INTO `sys_job_log` VALUES (3570, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 11:39:00');
INSERT INTO `sys_job_log` VALUES (3571, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 11:40:00');
INSERT INTO `sys_job_log` VALUES (3572, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:41:00');
INSERT INTO `sys_job_log` VALUES (3573, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:42:00');
INSERT INTO `sys_job_log` VALUES (3574, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:43:00');
INSERT INTO `sys_job_log` VALUES (3575, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:44:00');
INSERT INTO `sys_job_log` VALUES (3576, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:45:00');
INSERT INTO `sys_job_log` VALUES (3577, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:46:00');
INSERT INTO `sys_job_log` VALUES (3578, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:47:00');
INSERT INTO `sys_job_log` VALUES (3579, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 11:48:00');
INSERT INTO `sys_job_log` VALUES (3580, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:49:00');
INSERT INTO `sys_job_log` VALUES (3581, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 11:50:00');
INSERT INTO `sys_job_log` VALUES (3582, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 11:51:00');
INSERT INTO `sys_job_log` VALUES (3583, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:52:00');
INSERT INTO `sys_job_log` VALUES (3584, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:53:00');
INSERT INTO `sys_job_log` VALUES (3585, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 11:54:00');
INSERT INTO `sys_job_log` VALUES (3586, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:55:00');
INSERT INTO `sys_job_log` VALUES (3587, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 11:56:00');
INSERT INTO `sys_job_log` VALUES (3588, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 11:57:00');
INSERT INTO `sys_job_log` VALUES (3589, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:58:00');
INSERT INTO `sys_job_log` VALUES (3590, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 11:59:00');
INSERT INTO `sys_job_log` VALUES (3591, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:00:00');
INSERT INTO `sys_job_log` VALUES (3592, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:01:00');
INSERT INTO `sys_job_log` VALUES (3593, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:02:00');
INSERT INTO `sys_job_log` VALUES (3594, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:03:00');
INSERT INTO `sys_job_log` VALUES (3595, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:04:00');
INSERT INTO `sys_job_log` VALUES (3596, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:05:00');
INSERT INTO `sys_job_log` VALUES (3597, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:06:00');
INSERT INTO `sys_job_log` VALUES (3598, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:07:00');
INSERT INTO `sys_job_log` VALUES (3599, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:08:00');
INSERT INTO `sys_job_log` VALUES (3600, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:09:00');
INSERT INTO `sys_job_log` VALUES (3601, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:10:00');
INSERT INTO `sys_job_log` VALUES (3602, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:11:00');
INSERT INTO `sys_job_log` VALUES (3603, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:12:00');
INSERT INTO `sys_job_log` VALUES (3604, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:13:00');
INSERT INTO `sys_job_log` VALUES (3605, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:14:00');
INSERT INTO `sys_job_log` VALUES (3606, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:15:00');
INSERT INTO `sys_job_log` VALUES (3607, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:16:00');
INSERT INTO `sys_job_log` VALUES (3608, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:17:00');
INSERT INTO `sys_job_log` VALUES (3609, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:18:00');
INSERT INTO `sys_job_log` VALUES (3610, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:19:00');
INSERT INTO `sys_job_log` VALUES (3611, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:20:00');
INSERT INTO `sys_job_log` VALUES (3612, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:21:00');
INSERT INTO `sys_job_log` VALUES (3613, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:22:00');
INSERT INTO `sys_job_log` VALUES (3614, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:23:00');
INSERT INTO `sys_job_log` VALUES (3615, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:24:00');
INSERT INTO `sys_job_log` VALUES (3616, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:25:00');
INSERT INTO `sys_job_log` VALUES (3617, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:26:00');
INSERT INTO `sys_job_log` VALUES (3618, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:27:00');
INSERT INTO `sys_job_log` VALUES (3619, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:28:00');
INSERT INTO `sys_job_log` VALUES (3620, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:29:00');
INSERT INTO `sys_job_log` VALUES (3621, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:30:00');
INSERT INTO `sys_job_log` VALUES (3622, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:31:00');
INSERT INTO `sys_job_log` VALUES (3623, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 12:32:00');
INSERT INTO `sys_job_log` VALUES (3624, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 12:33:00');
INSERT INTO `sys_job_log` VALUES (3625, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:34:00');
INSERT INTO `sys_job_log` VALUES (3626, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:35:00');
INSERT INTO `sys_job_log` VALUES (3627, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:36:00');
INSERT INTO `sys_job_log` VALUES (3628, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:37:00');
INSERT INTO `sys_job_log` VALUES (3629, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:38:00');
INSERT INTO `sys_job_log` VALUES (3630, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:39:00');
INSERT INTO `sys_job_log` VALUES (3631, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:40:00');
INSERT INTO `sys_job_log` VALUES (3632, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 12:41:00');
INSERT INTO `sys_job_log` VALUES (3633, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:42:00');
INSERT INTO `sys_job_log` VALUES (3634, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:43:00');
INSERT INTO `sys_job_log` VALUES (3635, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:44:00');
INSERT INTO `sys_job_log` VALUES (3636, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 12:45:00');
INSERT INTO `sys_job_log` VALUES (3637, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:46:00');
INSERT INTO `sys_job_log` VALUES (3638, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:47:00');
INSERT INTO `sys_job_log` VALUES (3639, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:48:00');
INSERT INTO `sys_job_log` VALUES (3640, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:49:00');
INSERT INTO `sys_job_log` VALUES (3641, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:50:00');
INSERT INTO `sys_job_log` VALUES (3642, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:51:00');
INSERT INTO `sys_job_log` VALUES (3643, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 12:52:00');
INSERT INTO `sys_job_log` VALUES (3644, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:53:00');
INSERT INTO `sys_job_log` VALUES (3645, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:54:00');
INSERT INTO `sys_job_log` VALUES (3646, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 12:55:00');
INSERT INTO `sys_job_log` VALUES (3647, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:56:00');
INSERT INTO `sys_job_log` VALUES (3648, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:57:00');
INSERT INTO `sys_job_log` VALUES (3649, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 12:58:00');
INSERT INTO `sys_job_log` VALUES (3650, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 12:59:00');
INSERT INTO `sys_job_log` VALUES (3651, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:00:00');
INSERT INTO `sys_job_log` VALUES (3652, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:01:00');
INSERT INTO `sys_job_log` VALUES (3653, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:02:00');
INSERT INTO `sys_job_log` VALUES (3654, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:03:00');
INSERT INTO `sys_job_log` VALUES (3655, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:04:00');
INSERT INTO `sys_job_log` VALUES (3656, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:05:00');
INSERT INTO `sys_job_log` VALUES (3657, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:06:00');
INSERT INTO `sys_job_log` VALUES (3658, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:07:00');
INSERT INTO `sys_job_log` VALUES (3659, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:08:00');
INSERT INTO `sys_job_log` VALUES (3660, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:09:00');
INSERT INTO `sys_job_log` VALUES (3661, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:10:00');
INSERT INTO `sys_job_log` VALUES (3662, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:11:00');
INSERT INTO `sys_job_log` VALUES (3663, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:12:00');
INSERT INTO `sys_job_log` VALUES (3664, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:13:00');
INSERT INTO `sys_job_log` VALUES (3665, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:14:00');
INSERT INTO `sys_job_log` VALUES (3666, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:15:00');
INSERT INTO `sys_job_log` VALUES (3667, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:16:00');
INSERT INTO `sys_job_log` VALUES (3668, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 13:17:00');
INSERT INTO `sys_job_log` VALUES (3669, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:18:00');
INSERT INTO `sys_job_log` VALUES (3670, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:19:00');
INSERT INTO `sys_job_log` VALUES (3671, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:20:00');
INSERT INTO `sys_job_log` VALUES (3672, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:21:00');
INSERT INTO `sys_job_log` VALUES (3673, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 13:22:00');
INSERT INTO `sys_job_log` VALUES (3674, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:23:00');
INSERT INTO `sys_job_log` VALUES (3675, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:24:00');
INSERT INTO `sys_job_log` VALUES (3676, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:25:00');
INSERT INTO `sys_job_log` VALUES (3677, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:26:00');
INSERT INTO `sys_job_log` VALUES (3678, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:27:00');
INSERT INTO `sys_job_log` VALUES (3679, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:28:00');
INSERT INTO `sys_job_log` VALUES (3680, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:29:00');
INSERT INTO `sys_job_log` VALUES (3681, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:30:00');
INSERT INTO `sys_job_log` VALUES (3682, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:31:00');
INSERT INTO `sys_job_log` VALUES (3683, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:32:00');
INSERT INTO `sys_job_log` VALUES (3684, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:33:00');
INSERT INTO `sys_job_log` VALUES (3685, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:34:00');
INSERT INTO `sys_job_log` VALUES (3686, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 13:35:00');
INSERT INTO `sys_job_log` VALUES (3687, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:36:00');
INSERT INTO `sys_job_log` VALUES (3688, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:37:00');
INSERT INTO `sys_job_log` VALUES (3689, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:38:00');
INSERT INTO `sys_job_log` VALUES (3690, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:39:00');
INSERT INTO `sys_job_log` VALUES (3691, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:40:00');
INSERT INTO `sys_job_log` VALUES (3692, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:41:00');
INSERT INTO `sys_job_log` VALUES (3693, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:42:00');
INSERT INTO `sys_job_log` VALUES (3694, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:43:00');
INSERT INTO `sys_job_log` VALUES (3695, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:44:00');
INSERT INTO `sys_job_log` VALUES (3696, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 13:45:00');
INSERT INTO `sys_job_log` VALUES (3697, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:46:00');
INSERT INTO `sys_job_log` VALUES (3698, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:47:00');
INSERT INTO `sys_job_log` VALUES (3699, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:48:00');
INSERT INTO `sys_job_log` VALUES (3700, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:49:00');
INSERT INTO `sys_job_log` VALUES (3701, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:50:00');
INSERT INTO `sys_job_log` VALUES (3702, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:51:00');
INSERT INTO `sys_job_log` VALUES (3703, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:52:00');
INSERT INTO `sys_job_log` VALUES (3704, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:53:00');
INSERT INTO `sys_job_log` VALUES (3705, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 13:54:00');
INSERT INTO `sys_job_log` VALUES (3706, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:55:00');
INSERT INTO `sys_job_log` VALUES (3707, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 13:56:00');
INSERT INTO `sys_job_log` VALUES (3708, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:57:00');
INSERT INTO `sys_job_log` VALUES (3709, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 13:58:00');
INSERT INTO `sys_job_log` VALUES (3710, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：18毫秒', '0', '', '2025-11-25 13:59:00');
INSERT INTO `sys_job_log` VALUES (3711, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:01:00');
INSERT INTO `sys_job_log` VALUES (3712, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:02:00');
INSERT INTO `sys_job_log` VALUES (3713, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:03:00');
INSERT INTO `sys_job_log` VALUES (3714, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:04:00');
INSERT INTO `sys_job_log` VALUES (3715, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 14:05:00');
INSERT INTO `sys_job_log` VALUES (3716, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:06:00');
INSERT INTO `sys_job_log` VALUES (3717, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:07:00');
INSERT INTO `sys_job_log` VALUES (3718, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-11-25 14:08:00');
INSERT INTO `sys_job_log` VALUES (3719, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:09:00');
INSERT INTO `sys_job_log` VALUES (3720, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-25 14:10:00');
INSERT INTO `sys_job_log` VALUES (3721, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:11:00');
INSERT INTO `sys_job_log` VALUES (3722, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:12:00');
INSERT INTO `sys_job_log` VALUES (3723, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:13:00');
INSERT INTO `sys_job_log` VALUES (3724, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:14:00');
INSERT INTO `sys_job_log` VALUES (3725, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:15:00');
INSERT INTO `sys_job_log` VALUES (3726, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：12毫秒', '0', '', '2025-11-25 14:16:00');
INSERT INTO `sys_job_log` VALUES (3727, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:17:00');
INSERT INTO `sys_job_log` VALUES (3728, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:18:00');
INSERT INTO `sys_job_log` VALUES (3729, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:19:00');
INSERT INTO `sys_job_log` VALUES (3730, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:20:00');
INSERT INTO `sys_job_log` VALUES (3731, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:21:00');
INSERT INTO `sys_job_log` VALUES (3732, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 14:22:00');
INSERT INTO `sys_job_log` VALUES (3733, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:23:00');
INSERT INTO `sys_job_log` VALUES (3734, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:24:00');
INSERT INTO `sys_job_log` VALUES (3735, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:25:00');
INSERT INTO `sys_job_log` VALUES (3736, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 14:26:00');
INSERT INTO `sys_job_log` VALUES (3737, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:27:00');
INSERT INTO `sys_job_log` VALUES (3738, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:28:00');
INSERT INTO `sys_job_log` VALUES (3739, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:29:00');
INSERT INTO `sys_job_log` VALUES (3740, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:30:00');
INSERT INTO `sys_job_log` VALUES (3741, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:31:00');
INSERT INTO `sys_job_log` VALUES (3742, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:32:00');
INSERT INTO `sys_job_log` VALUES (3743, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:33:00');
INSERT INTO `sys_job_log` VALUES (3744, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:34:00');
INSERT INTO `sys_job_log` VALUES (3745, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 14:35:00');
INSERT INTO `sys_job_log` VALUES (3746, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 14:36:00');
INSERT INTO `sys_job_log` VALUES (3747, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:37:00');
INSERT INTO `sys_job_log` VALUES (3748, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 14:38:00');
INSERT INTO `sys_job_log` VALUES (3749, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:39:00');
INSERT INTO `sys_job_log` VALUES (3750, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:40:00');
INSERT INTO `sys_job_log` VALUES (3751, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:41:00');
INSERT INTO `sys_job_log` VALUES (3752, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:42:00');
INSERT INTO `sys_job_log` VALUES (3753, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:43:00');
INSERT INTO `sys_job_log` VALUES (3754, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 14:44:00');
INSERT INTO `sys_job_log` VALUES (3755, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:45:00');
INSERT INTO `sys_job_log` VALUES (3756, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:46:00');
INSERT INTO `sys_job_log` VALUES (3757, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:47:00');
INSERT INTO `sys_job_log` VALUES (3758, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:48:00');
INSERT INTO `sys_job_log` VALUES (3759, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:49:00');
INSERT INTO `sys_job_log` VALUES (3760, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:50:00');
INSERT INTO `sys_job_log` VALUES (3761, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:51:00');
INSERT INTO `sys_job_log` VALUES (3762, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:52:00');
INSERT INTO `sys_job_log` VALUES (3763, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 14:53:00');
INSERT INTO `sys_job_log` VALUES (3764, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:54:00');
INSERT INTO `sys_job_log` VALUES (3765, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:55:00');
INSERT INTO `sys_job_log` VALUES (3766, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:56:00');
INSERT INTO `sys_job_log` VALUES (3767, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 14:57:00');
INSERT INTO `sys_job_log` VALUES (3768, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 14:58:00');
INSERT INTO `sys_job_log` VALUES (3769, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 14:59:00');
INSERT INTO `sys_job_log` VALUES (3770, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:00:00');
INSERT INTO `sys_job_log` VALUES (3771, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:01:00');
INSERT INTO `sys_job_log` VALUES (3772, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:02:00');
INSERT INTO `sys_job_log` VALUES (3773, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:03:00');
INSERT INTO `sys_job_log` VALUES (3774, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:04:00');
INSERT INTO `sys_job_log` VALUES (3775, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:05:00');
INSERT INTO `sys_job_log` VALUES (3776, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 15:06:00');
INSERT INTO `sys_job_log` VALUES (3777, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:07:00');
INSERT INTO `sys_job_log` VALUES (3778, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:08:00');
INSERT INTO `sys_job_log` VALUES (3779, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:09:00');
INSERT INTO `sys_job_log` VALUES (3780, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:10:00');
INSERT INTO `sys_job_log` VALUES (3781, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:11:00');
INSERT INTO `sys_job_log` VALUES (3782, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:12:00');
INSERT INTO `sys_job_log` VALUES (3783, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:13:00');
INSERT INTO `sys_job_log` VALUES (3784, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:14:00');
INSERT INTO `sys_job_log` VALUES (3785, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:15:00');
INSERT INTO `sys_job_log` VALUES (3786, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:16:00');
INSERT INTO `sys_job_log` VALUES (3787, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:17:00');
INSERT INTO `sys_job_log` VALUES (3788, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:18:00');
INSERT INTO `sys_job_log` VALUES (3789, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:19:00');
INSERT INTO `sys_job_log` VALUES (3790, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:20:00');
INSERT INTO `sys_job_log` VALUES (3791, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:21:00');
INSERT INTO `sys_job_log` VALUES (3792, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:22:00');
INSERT INTO `sys_job_log` VALUES (3793, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:23:00');
INSERT INTO `sys_job_log` VALUES (3794, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:24:00');
INSERT INTO `sys_job_log` VALUES (3795, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:25:00');
INSERT INTO `sys_job_log` VALUES (3796, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:26:00');
INSERT INTO `sys_job_log` VALUES (3797, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:27:00');
INSERT INTO `sys_job_log` VALUES (3798, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:28:00');
INSERT INTO `sys_job_log` VALUES (3799, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:29:00');
INSERT INTO `sys_job_log` VALUES (3800, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:30:00');
INSERT INTO `sys_job_log` VALUES (3801, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:31:00');
INSERT INTO `sys_job_log` VALUES (3802, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:32:00');
INSERT INTO `sys_job_log` VALUES (3803, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:33:00');
INSERT INTO `sys_job_log` VALUES (3804, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:34:00');
INSERT INTO `sys_job_log` VALUES (3805, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:35:00');
INSERT INTO `sys_job_log` VALUES (3806, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:36:00');
INSERT INTO `sys_job_log` VALUES (3807, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:37:00');
INSERT INTO `sys_job_log` VALUES (3808, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:38:00');
INSERT INTO `sys_job_log` VALUES (3809, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:39:00');
INSERT INTO `sys_job_log` VALUES (3810, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:40:00');
INSERT INTO `sys_job_log` VALUES (3811, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:41:00');
INSERT INTO `sys_job_log` VALUES (3812, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:42:00');
INSERT INTO `sys_job_log` VALUES (3813, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:43:00');
INSERT INTO `sys_job_log` VALUES (3814, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:44:00');
INSERT INTO `sys_job_log` VALUES (3815, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:45:00');
INSERT INTO `sys_job_log` VALUES (3816, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 15:46:00');
INSERT INTO `sys_job_log` VALUES (3817, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:47:00');
INSERT INTO `sys_job_log` VALUES (3818, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:48:00');
INSERT INTO `sys_job_log` VALUES (3819, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:49:00');
INSERT INTO `sys_job_log` VALUES (3820, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 15:50:00');
INSERT INTO `sys_job_log` VALUES (3821, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 15:51:00');
INSERT INTO `sys_job_log` VALUES (3822, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:52:00');
INSERT INTO `sys_job_log` VALUES (3823, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 15:53:00');
INSERT INTO `sys_job_log` VALUES (3824, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：18毫秒', '0', '', '2025-11-25 15:54:00');
INSERT INTO `sys_job_log` VALUES (3825, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 15:55:00');
INSERT INTO `sys_job_log` VALUES (3826, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 15:56:00');
INSERT INTO `sys_job_log` VALUES (3827, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：42毫秒', '0', '', '2025-11-25 15:57:00');
INSERT INTO `sys_job_log` VALUES (3828, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:58:00');
INSERT INTO `sys_job_log` VALUES (3829, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 15:59:00');
INSERT INTO `sys_job_log` VALUES (3830, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:00:00');
INSERT INTO `sys_job_log` VALUES (3831, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-25 16:01:00');
INSERT INTO `sys_job_log` VALUES (3832, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-25 16:02:00');
INSERT INTO `sys_job_log` VALUES (3833, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：18毫秒', '0', '', '2025-11-25 16:03:00');
INSERT INTO `sys_job_log` VALUES (3834, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:04:00');
INSERT INTO `sys_job_log` VALUES (3835, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 16:05:00');
INSERT INTO `sys_job_log` VALUES (3836, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-11-25 16:06:00');
INSERT INTO `sys_job_log` VALUES (3837, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:07:00');
INSERT INTO `sys_job_log` VALUES (3838, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-11-25 16:08:00');
INSERT INTO `sys_job_log` VALUES (3839, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 16:09:00');
INSERT INTO `sys_job_log` VALUES (3840, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:10:00');
INSERT INTO `sys_job_log` VALUES (3841, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:11:00');
INSERT INTO `sys_job_log` VALUES (3842, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:12:00');
INSERT INTO `sys_job_log` VALUES (3843, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:13:00');
INSERT INTO `sys_job_log` VALUES (3844, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:14:00');
INSERT INTO `sys_job_log` VALUES (3845, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:15:00');
INSERT INTO `sys_job_log` VALUES (3846, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:16:00');
INSERT INTO `sys_job_log` VALUES (3847, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:17:00');
INSERT INTO `sys_job_log` VALUES (3848, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:18:00');
INSERT INTO `sys_job_log` VALUES (3849, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:19:00');
INSERT INTO `sys_job_log` VALUES (3850, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:20:00');
INSERT INTO `sys_job_log` VALUES (3851, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:21:00');
INSERT INTO `sys_job_log` VALUES (3852, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:22:00');
INSERT INTO `sys_job_log` VALUES (3853, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:23:00');
INSERT INTO `sys_job_log` VALUES (3854, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:24:00');
INSERT INTO `sys_job_log` VALUES (3855, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:25:00');
INSERT INTO `sys_job_log` VALUES (3856, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:26:00');
INSERT INTO `sys_job_log` VALUES (3857, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:27:00');
INSERT INTO `sys_job_log` VALUES (3858, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:28:00');
INSERT INTO `sys_job_log` VALUES (3859, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:29:00');
INSERT INTO `sys_job_log` VALUES (3860, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:30:00');
INSERT INTO `sys_job_log` VALUES (3861, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 16:31:00');
INSERT INTO `sys_job_log` VALUES (3862, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:32:00');
INSERT INTO `sys_job_log` VALUES (3863, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:33:00');
INSERT INTO `sys_job_log` VALUES (3864, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 16:34:00');
INSERT INTO `sys_job_log` VALUES (3865, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:35:00');
INSERT INTO `sys_job_log` VALUES (3866, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-25 16:36:00');
INSERT INTO `sys_job_log` VALUES (3867, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:37:00');
INSERT INTO `sys_job_log` VALUES (3868, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:38:00');
INSERT INTO `sys_job_log` VALUES (3869, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:39:00');
INSERT INTO `sys_job_log` VALUES (3870, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:40:00');
INSERT INTO `sys_job_log` VALUES (3871, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:41:00');
INSERT INTO `sys_job_log` VALUES (3872, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:42:00');
INSERT INTO `sys_job_log` VALUES (3873, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:43:00');
INSERT INTO `sys_job_log` VALUES (3874, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:44:00');
INSERT INTO `sys_job_log` VALUES (3875, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:45:00');
INSERT INTO `sys_job_log` VALUES (3876, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:46:00');
INSERT INTO `sys_job_log` VALUES (3877, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:47:00');
INSERT INTO `sys_job_log` VALUES (3878, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:48:00');
INSERT INTO `sys_job_log` VALUES (3879, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:49:00');
INSERT INTO `sys_job_log` VALUES (3880, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:50:00');
INSERT INTO `sys_job_log` VALUES (3881, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:51:00');
INSERT INTO `sys_job_log` VALUES (3882, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:52:00');
INSERT INTO `sys_job_log` VALUES (3883, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:53:00');
INSERT INTO `sys_job_log` VALUES (3884, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 16:54:00');
INSERT INTO `sys_job_log` VALUES (3885, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:55:00');
INSERT INTO `sys_job_log` VALUES (3886, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:56:00');
INSERT INTO `sys_job_log` VALUES (3887, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 16:57:00');
INSERT INTO `sys_job_log` VALUES (3888, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:58:00');
INSERT INTO `sys_job_log` VALUES (3889, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 16:59:00');
INSERT INTO `sys_job_log` VALUES (3890, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-11-25 17:00:00');
INSERT INTO `sys_job_log` VALUES (3891, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:01:00');
INSERT INTO `sys_job_log` VALUES (3892, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:02:00');
INSERT INTO `sys_job_log` VALUES (3893, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:03:00');
INSERT INTO `sys_job_log` VALUES (3894, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 17:04:00');
INSERT INTO `sys_job_log` VALUES (3895, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:05:00');
INSERT INTO `sys_job_log` VALUES (3896, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:06:00');
INSERT INTO `sys_job_log` VALUES (3897, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:07:00');
INSERT INTO `sys_job_log` VALUES (3898, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:08:00');
INSERT INTO `sys_job_log` VALUES (3899, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:09:00');
INSERT INTO `sys_job_log` VALUES (3900, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:10:00');
INSERT INTO `sys_job_log` VALUES (3901, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:11:00');
INSERT INTO `sys_job_log` VALUES (3902, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:12:00');
INSERT INTO `sys_job_log` VALUES (3903, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:13:00');
INSERT INTO `sys_job_log` VALUES (3904, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:14:00');
INSERT INTO `sys_job_log` VALUES (3905, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:15:00');
INSERT INTO `sys_job_log` VALUES (3906, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:16:00');
INSERT INTO `sys_job_log` VALUES (3907, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:17:00');
INSERT INTO `sys_job_log` VALUES (3908, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 17:18:00');
INSERT INTO `sys_job_log` VALUES (3909, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:19:00');
INSERT INTO `sys_job_log` VALUES (3910, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:20:00');
INSERT INTO `sys_job_log` VALUES (3911, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:21:00');
INSERT INTO `sys_job_log` VALUES (3912, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:22:00');
INSERT INTO `sys_job_log` VALUES (3913, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:23:00');
INSERT INTO `sys_job_log` VALUES (3914, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:24:00');
INSERT INTO `sys_job_log` VALUES (3915, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:25:00');
INSERT INTO `sys_job_log` VALUES (3916, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:26:00');
INSERT INTO `sys_job_log` VALUES (3917, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:27:00');
INSERT INTO `sys_job_log` VALUES (3918, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:28:00');
INSERT INTO `sys_job_log` VALUES (3919, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:29:00');
INSERT INTO `sys_job_log` VALUES (3920, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:30:00');
INSERT INTO `sys_job_log` VALUES (3921, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-25 17:31:00');
INSERT INTO `sys_job_log` VALUES (3922, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:32:00');
INSERT INTO `sys_job_log` VALUES (3923, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-25 17:33:00');
INSERT INTO `sys_job_log` VALUES (3924, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:34:00');
INSERT INTO `sys_job_log` VALUES (3925, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:35:00');
INSERT INTO `sys_job_log` VALUES (3926, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：21毫秒', '0', '', '2025-11-25 17:44:00');
INSERT INTO `sys_job_log` VALUES (3927, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:45:00');
INSERT INTO `sys_job_log` VALUES (3928, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:46:00');
INSERT INTO `sys_job_log` VALUES (3929, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:47:00');
INSERT INTO `sys_job_log` VALUES (3930, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:48:00');
INSERT INTO `sys_job_log` VALUES (3931, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-25 17:49:00');
INSERT INTO `sys_job_log` VALUES (3932, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:50:00');
INSERT INTO `sys_job_log` VALUES (3933, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-25 17:51:00');
INSERT INTO `sys_job_log` VALUES (3934, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：40毫秒', '0', '', '2025-11-27 13:35:00');
INSERT INTO `sys_job_log` VALUES (3935, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 13:36:00');
INSERT INTO `sys_job_log` VALUES (3936, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-27 13:37:00');
INSERT INTO `sys_job_log` VALUES (3937, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:38:00');
INSERT INTO `sys_job_log` VALUES (3938, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-11-27 13:39:00');
INSERT INTO `sys_job_log` VALUES (3939, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:40:00');
INSERT INTO `sys_job_log` VALUES (3940, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 13:41:00');
INSERT INTO `sys_job_log` VALUES (3941, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 13:42:00');
INSERT INTO `sys_job_log` VALUES (3942, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:43:00');
INSERT INTO `sys_job_log` VALUES (3943, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:44:00');
INSERT INTO `sys_job_log` VALUES (3944, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:45:00');
INSERT INTO `sys_job_log` VALUES (3945, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 13:46:00');
INSERT INTO `sys_job_log` VALUES (3946, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:47:00');
INSERT INTO `sys_job_log` VALUES (3947, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 13:48:00');
INSERT INTO `sys_job_log` VALUES (3948, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 13:49:00');
INSERT INTO `sys_job_log` VALUES (3949, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:50:00');
INSERT INTO `sys_job_log` VALUES (3950, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 13:51:00');
INSERT INTO `sys_job_log` VALUES (3951, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 13:52:00');
INSERT INTO `sys_job_log` VALUES (3952, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:53:00');
INSERT INTO `sys_job_log` VALUES (3953, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 13:54:00');
INSERT INTO `sys_job_log` VALUES (3954, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 13:55:00');
INSERT INTO `sys_job_log` VALUES (3955, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 13:56:00');
INSERT INTO `sys_job_log` VALUES (3956, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 13:57:00');
INSERT INTO `sys_job_log` VALUES (3957, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 13:58:00');
INSERT INTO `sys_job_log` VALUES (3958, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 13:59:00');
INSERT INTO `sys_job_log` VALUES (3959, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:00:00');
INSERT INTO `sys_job_log` VALUES (3960, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:01:00');
INSERT INTO `sys_job_log` VALUES (3961, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:02:00');
INSERT INTO `sys_job_log` VALUES (3962, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:03:00');
INSERT INTO `sys_job_log` VALUES (3963, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:04:00');
INSERT INTO `sys_job_log` VALUES (3964, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:05:00');
INSERT INTO `sys_job_log` VALUES (3965, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:06:00');
INSERT INTO `sys_job_log` VALUES (3966, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:07:00');
INSERT INTO `sys_job_log` VALUES (3967, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:08:00');
INSERT INTO `sys_job_log` VALUES (3968, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:09:00');
INSERT INTO `sys_job_log` VALUES (3969, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:10:00');
INSERT INTO `sys_job_log` VALUES (3970, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:11:00');
INSERT INTO `sys_job_log` VALUES (3971, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:12:00');
INSERT INTO `sys_job_log` VALUES (3972, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:13:00');
INSERT INTO `sys_job_log` VALUES (3973, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:14:00');
INSERT INTO `sys_job_log` VALUES (3974, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:15:00');
INSERT INTO `sys_job_log` VALUES (3975, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:16:00');
INSERT INTO `sys_job_log` VALUES (3976, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:17:00');
INSERT INTO `sys_job_log` VALUES (3977, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:18:00');
INSERT INTO `sys_job_log` VALUES (3978, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:19:00');
INSERT INTO `sys_job_log` VALUES (3979, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:20:00');
INSERT INTO `sys_job_log` VALUES (3980, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:21:00');
INSERT INTO `sys_job_log` VALUES (3981, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:22:00');
INSERT INTO `sys_job_log` VALUES (3982, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:23:00');
INSERT INTO `sys_job_log` VALUES (3983, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:24:00');
INSERT INTO `sys_job_log` VALUES (3984, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:25:00');
INSERT INTO `sys_job_log` VALUES (3985, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:26:00');
INSERT INTO `sys_job_log` VALUES (3986, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:27:00');
INSERT INTO `sys_job_log` VALUES (3987, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:28:00');
INSERT INTO `sys_job_log` VALUES (3988, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:29:00');
INSERT INTO `sys_job_log` VALUES (3989, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:30:00');
INSERT INTO `sys_job_log` VALUES (3990, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:31:00');
INSERT INTO `sys_job_log` VALUES (3991, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:32:00');
INSERT INTO `sys_job_log` VALUES (3992, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:33:00');
INSERT INTO `sys_job_log` VALUES (3993, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:34:00');
INSERT INTO `sys_job_log` VALUES (3994, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:35:00');
INSERT INTO `sys_job_log` VALUES (3995, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 14:36:00');
INSERT INTO `sys_job_log` VALUES (3996, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:37:00');
INSERT INTO `sys_job_log` VALUES (3997, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:38:00');
INSERT INTO `sys_job_log` VALUES (3998, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:39:00');
INSERT INTO `sys_job_log` VALUES (3999, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:40:00');
INSERT INTO `sys_job_log` VALUES (4000, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:41:00');
INSERT INTO `sys_job_log` VALUES (4001, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:42:00');
INSERT INTO `sys_job_log` VALUES (4002, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:43:00');
INSERT INTO `sys_job_log` VALUES (4003, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:44:00');
INSERT INTO `sys_job_log` VALUES (4004, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:45:00');
INSERT INTO `sys_job_log` VALUES (4005, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:46:00');
INSERT INTO `sys_job_log` VALUES (4006, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:47:00');
INSERT INTO `sys_job_log` VALUES (4007, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:48:00');
INSERT INTO `sys_job_log` VALUES (4008, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:49:00');
INSERT INTO `sys_job_log` VALUES (4009, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:50:00');
INSERT INTO `sys_job_log` VALUES (4010, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:51:00');
INSERT INTO `sys_job_log` VALUES (4011, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:52:00');
INSERT INTO `sys_job_log` VALUES (4012, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:53:00');
INSERT INTO `sys_job_log` VALUES (4013, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:54:00');
INSERT INTO `sys_job_log` VALUES (4014, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 14:55:00');
INSERT INTO `sys_job_log` VALUES (4015, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:56:00');
INSERT INTO `sys_job_log` VALUES (4016, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:57:00');
INSERT INTO `sys_job_log` VALUES (4017, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 14:58:00');
INSERT INTO `sys_job_log` VALUES (4018, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 14:59:00');
INSERT INTO `sys_job_log` VALUES (4019, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 15:00:00');
INSERT INTO `sys_job_log` VALUES (4020, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:01:00');
INSERT INTO `sys_job_log` VALUES (4021, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:02:00');
INSERT INTO `sys_job_log` VALUES (4022, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:03:00');
INSERT INTO `sys_job_log` VALUES (4023, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:04:00');
INSERT INTO `sys_job_log` VALUES (4024, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:05:00');
INSERT INTO `sys_job_log` VALUES (4025, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:06:00');
INSERT INTO `sys_job_log` VALUES (4026, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:07:00');
INSERT INTO `sys_job_log` VALUES (4027, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:08:00');
INSERT INTO `sys_job_log` VALUES (4028, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:09:00');
INSERT INTO `sys_job_log` VALUES (4029, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:10:00');
INSERT INTO `sys_job_log` VALUES (4030, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:11:00');
INSERT INTO `sys_job_log` VALUES (4031, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:12:00');
INSERT INTO `sys_job_log` VALUES (4032, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:13:00');
INSERT INTO `sys_job_log` VALUES (4033, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:14:00');
INSERT INTO `sys_job_log` VALUES (4034, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:15:00');
INSERT INTO `sys_job_log` VALUES (4035, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:16:00');
INSERT INTO `sys_job_log` VALUES (4036, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:17:00');
INSERT INTO `sys_job_log` VALUES (4037, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:18:00');
INSERT INTO `sys_job_log` VALUES (4038, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:19:00');
INSERT INTO `sys_job_log` VALUES (4039, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:20:00');
INSERT INTO `sys_job_log` VALUES (4040, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:21:00');
INSERT INTO `sys_job_log` VALUES (4041, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:22:00');
INSERT INTO `sys_job_log` VALUES (4042, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:23:00');
INSERT INTO `sys_job_log` VALUES (4043, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:24:00');
INSERT INTO `sys_job_log` VALUES (4044, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:25:00');
INSERT INTO `sys_job_log` VALUES (4045, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:26:00');
INSERT INTO `sys_job_log` VALUES (4046, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:27:00');
INSERT INTO `sys_job_log` VALUES (4047, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:28:00');
INSERT INTO `sys_job_log` VALUES (4048, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:29:00');
INSERT INTO `sys_job_log` VALUES (4049, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 15:30:00');
INSERT INTO `sys_job_log` VALUES (4050, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:31:00');
INSERT INTO `sys_job_log` VALUES (4051, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:32:00');
INSERT INTO `sys_job_log` VALUES (4052, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:33:00');
INSERT INTO `sys_job_log` VALUES (4053, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:34:00');
INSERT INTO `sys_job_log` VALUES (4054, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:35:00');
INSERT INTO `sys_job_log` VALUES (4055, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:36:00');
INSERT INTO `sys_job_log` VALUES (4056, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:37:00');
INSERT INTO `sys_job_log` VALUES (4057, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:38:00');
INSERT INTO `sys_job_log` VALUES (4058, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-27 15:39:00');
INSERT INTO `sys_job_log` VALUES (4059, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:40:00');
INSERT INTO `sys_job_log` VALUES (4060, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:41:00');
INSERT INTO `sys_job_log` VALUES (4061, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:42:00');
INSERT INTO `sys_job_log` VALUES (4062, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:43:00');
INSERT INTO `sys_job_log` VALUES (4063, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:44:00');
INSERT INTO `sys_job_log` VALUES (4064, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:45:00');
INSERT INTO `sys_job_log` VALUES (4065, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:46:00');
INSERT INTO `sys_job_log` VALUES (4066, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:47:00');
INSERT INTO `sys_job_log` VALUES (4067, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:48:00');
INSERT INTO `sys_job_log` VALUES (4068, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:49:00');
INSERT INTO `sys_job_log` VALUES (4069, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:50:00');
INSERT INTO `sys_job_log` VALUES (4070, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:51:00');
INSERT INTO `sys_job_log` VALUES (4071, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:52:00');
INSERT INTO `sys_job_log` VALUES (4072, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:53:00');
INSERT INTO `sys_job_log` VALUES (4073, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 15:54:00');
INSERT INTO `sys_job_log` VALUES (4074, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 15:55:00');
INSERT INTO `sys_job_log` VALUES (4075, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：37毫秒', '0', '', '2025-11-27 16:05:00');
INSERT INTO `sys_job_log` VALUES (4076, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 16:06:00');
INSERT INTO `sys_job_log` VALUES (4077, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 16:07:00');
INSERT INTO `sys_job_log` VALUES (4078, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 16:08:00');
INSERT INTO `sys_job_log` VALUES (4079, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 16:09:00');
INSERT INTO `sys_job_log` VALUES (4080, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 16:10:00');
INSERT INTO `sys_job_log` VALUES (4081, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 16:11:00');
INSERT INTO `sys_job_log` VALUES (4082, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 16:12:00');
INSERT INTO `sys_job_log` VALUES (4083, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 16:13:00');
INSERT INTO `sys_job_log` VALUES (4084, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-27 16:14:00');
INSERT INTO `sys_job_log` VALUES (4085, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 16:15:00');
INSERT INTO `sys_job_log` VALUES (4086, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-11-27 16:16:00');
INSERT INTO `sys_job_log` VALUES (4087, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 16:17:00');
INSERT INTO `sys_job_log` VALUES (4088, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 16:18:00');
INSERT INTO `sys_job_log` VALUES (4089, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-27 16:19:00');
INSERT INTO `sys_job_log` VALUES (4090, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-11-27 17:54:00');
INSERT INTO `sys_job_log` VALUES (4091, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 17:55:00');
INSERT INTO `sys_job_log` VALUES (4092, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 17:56:00');
INSERT INTO `sys_job_log` VALUES (4093, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：14毫秒', '0', '', '2025-11-27 17:57:00');
INSERT INTO `sys_job_log` VALUES (4094, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-27 17:58:00');
INSERT INTO `sys_job_log` VALUES (4095, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-27 17:59:00');
INSERT INTO `sys_job_log` VALUES (4096, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：41毫秒', '0', '', '2025-11-28 09:26:00');
INSERT INTO `sys_job_log` VALUES (4097, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:27:00');
INSERT INTO `sys_job_log` VALUES (4098, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:28:00');
INSERT INTO `sys_job_log` VALUES (4099, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-11-28 09:29:00');
INSERT INTO `sys_job_log` VALUES (4100, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:30:00');
INSERT INTO `sys_job_log` VALUES (4101, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:31:00');
INSERT INTO `sys_job_log` VALUES (4102, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-28 09:32:00');
INSERT INTO `sys_job_log` VALUES (4103, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:33:00');
INSERT INTO `sys_job_log` VALUES (4104, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:34:00');
INSERT INTO `sys_job_log` VALUES (4105, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-28 09:35:00');
INSERT INTO `sys_job_log` VALUES (4106, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-28 09:36:00');
INSERT INTO `sys_job_log` VALUES (4107, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-28 09:37:00');
INSERT INTO `sys_job_log` VALUES (4108, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-28 09:38:00');
INSERT INTO `sys_job_log` VALUES (4109, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:39:00');
INSERT INTO `sys_job_log` VALUES (4110, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:40:00');
INSERT INTO `sys_job_log` VALUES (4111, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-28 09:41:00');
INSERT INTO `sys_job_log` VALUES (4112, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-11-28 09:42:00');
INSERT INTO `sys_job_log` VALUES (4113, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:43:00');
INSERT INTO `sys_job_log` VALUES (4114, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:44:00');
INSERT INTO `sys_job_log` VALUES (4115, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-11-28 09:45:00');
INSERT INTO `sys_job_log` VALUES (4116, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-11-28 09:46:00');
INSERT INTO `sys_job_log` VALUES (4117, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:47:00');
INSERT INTO `sys_job_log` VALUES (4118, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-11-28 09:48:00');
INSERT INTO `sys_job_log` VALUES (4119, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-28 09:49:00');
INSERT INTO `sys_job_log` VALUES (4120, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-28 09:50:00');
INSERT INTO `sys_job_log` VALUES (4121, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-11-28 09:51:00');
INSERT INTO `sys_job_log` VALUES (4122, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：28毫秒', '0', '', '2025-12-05 16:20:00');
INSERT INTO `sys_job_log` VALUES (4123, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 16:21:00');
INSERT INTO `sys_job_log` VALUES (4124, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:22:00');
INSERT INTO `sys_job_log` VALUES (4125, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:23:00');
INSERT INTO `sys_job_log` VALUES (4126, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:24:00');
INSERT INTO `sys_job_log` VALUES (4127, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:25:00');
INSERT INTO `sys_job_log` VALUES (4128, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-05 16:26:00');
INSERT INTO `sys_job_log` VALUES (4129, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:27:00');
INSERT INTO `sys_job_log` VALUES (4130, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:28:00');
INSERT INTO `sys_job_log` VALUES (4131, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:29:00');
INSERT INTO `sys_job_log` VALUES (4132, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:30:00');
INSERT INTO `sys_job_log` VALUES (4133, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 16:31:00');
INSERT INTO `sys_job_log` VALUES (4134, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:32:00');
INSERT INTO `sys_job_log` VALUES (4135, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:33:00');
INSERT INTO `sys_job_log` VALUES (4136, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:34:00');
INSERT INTO `sys_job_log` VALUES (4137, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：12毫秒', '0', '', '2025-12-05 16:35:00');
INSERT INTO `sys_job_log` VALUES (4138, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:36:00');
INSERT INTO `sys_job_log` VALUES (4139, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:37:00');
INSERT INTO `sys_job_log` VALUES (4140, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:38:00');
INSERT INTO `sys_job_log` VALUES (4141, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:39:00');
INSERT INTO `sys_job_log` VALUES (4142, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:40:00');
INSERT INTO `sys_job_log` VALUES (4143, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:41:00');
INSERT INTO `sys_job_log` VALUES (4144, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:42:00');
INSERT INTO `sys_job_log` VALUES (4145, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:43:00');
INSERT INTO `sys_job_log` VALUES (4146, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:44:00');
INSERT INTO `sys_job_log` VALUES (4147, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：19毫秒', '0', '', '2025-12-05 16:45:00');
INSERT INTO `sys_job_log` VALUES (4148, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 16:46:00');
INSERT INTO `sys_job_log` VALUES (4149, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 16:47:00');
INSERT INTO `sys_job_log` VALUES (4150, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:48:00');
INSERT INTO `sys_job_log` VALUES (4151, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:49:00');
INSERT INTO `sys_job_log` VALUES (4152, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 16:50:00');
INSERT INTO `sys_job_log` VALUES (4153, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:51:00');
INSERT INTO `sys_job_log` VALUES (4154, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：19毫秒', '0', '', '2025-12-05 16:52:00');
INSERT INTO `sys_job_log` VALUES (4155, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:53:00');
INSERT INTO `sys_job_log` VALUES (4156, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 16:54:00');
INSERT INTO `sys_job_log` VALUES (4157, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:55:00');
INSERT INTO `sys_job_log` VALUES (4158, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 16:56:00');
INSERT INTO `sys_job_log` VALUES (4159, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-12-05 17:15:00');
INSERT INTO `sys_job_log` VALUES (4160, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-05 17:16:00');
INSERT INTO `sys_job_log` VALUES (4161, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:17:00');
INSERT INTO `sys_job_log` VALUES (4162, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:18:00');
INSERT INTO `sys_job_log` VALUES (4163, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-05 17:19:00');
INSERT INTO `sys_job_log` VALUES (4164, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:20:00');
INSERT INTO `sys_job_log` VALUES (4165, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:21:00');
INSERT INTO `sys_job_log` VALUES (4166, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:22:00');
INSERT INTO `sys_job_log` VALUES (4167, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:23:00');
INSERT INTO `sys_job_log` VALUES (4168, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:24:00');
INSERT INTO `sys_job_log` VALUES (4169, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:25:00');
INSERT INTO `sys_job_log` VALUES (4170, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:26:00');
INSERT INTO `sys_job_log` VALUES (4171, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:27:00');
INSERT INTO `sys_job_log` VALUES (4172, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:28:00');
INSERT INTO `sys_job_log` VALUES (4173, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:29:00');
INSERT INTO `sys_job_log` VALUES (4174, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-12-05 17:30:00');
INSERT INTO `sys_job_log` VALUES (4175, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:31:00');
INSERT INTO `sys_job_log` VALUES (4176, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:32:00');
INSERT INTO `sys_job_log` VALUES (4177, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:33:00');
INSERT INTO `sys_job_log` VALUES (4178, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:34:00');
INSERT INTO `sys_job_log` VALUES (4179, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:35:00');
INSERT INTO `sys_job_log` VALUES (4180, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-05 17:36:00');
INSERT INTO `sys_job_log` VALUES (4181, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:37:00');
INSERT INTO `sys_job_log` VALUES (4182, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:38:00');
INSERT INTO `sys_job_log` VALUES (4183, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:39:00');
INSERT INTO `sys_job_log` VALUES (4184, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:40:00');
INSERT INTO `sys_job_log` VALUES (4185, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:41:00');
INSERT INTO `sys_job_log` VALUES (4186, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:42:00');
INSERT INTO `sys_job_log` VALUES (4187, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:43:00');
INSERT INTO `sys_job_log` VALUES (4188, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-12-05 17:44:00');
INSERT INTO `sys_job_log` VALUES (4189, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:45:00');
INSERT INTO `sys_job_log` VALUES (4190, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-12-05 17:46:00');
INSERT INTO `sys_job_log` VALUES (4191, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:47:00');
INSERT INTO `sys_job_log` VALUES (4192, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:48:00');
INSERT INTO `sys_job_log` VALUES (4193, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:49:00');
INSERT INTO `sys_job_log` VALUES (4194, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:50:00');
INSERT INTO `sys_job_log` VALUES (4195, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:51:00');
INSERT INTO `sys_job_log` VALUES (4196, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-05 17:52:00');
INSERT INTO `sys_job_log` VALUES (4197, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:53:00');
INSERT INTO `sys_job_log` VALUES (4198, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:54:00');
INSERT INTO `sys_job_log` VALUES (4199, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-05 17:55:00');
INSERT INTO `sys_job_log` VALUES (4200, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-05 17:56:00');
INSERT INTO `sys_job_log` VALUES (4201, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：36毫秒', '0', '', '2025-12-07 17:08:00');
INSERT INTO `sys_job_log` VALUES (4202, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:09:00');
INSERT INTO `sys_job_log` VALUES (4203, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:10:00');
INSERT INTO `sys_job_log` VALUES (4204, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-12-07 17:11:00');
INSERT INTO `sys_job_log` VALUES (4205, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:12:00');
INSERT INTO `sys_job_log` VALUES (4206, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:13:00');
INSERT INTO `sys_job_log` VALUES (4207, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:14:00');
INSERT INTO `sys_job_log` VALUES (4208, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:15:00');
INSERT INTO `sys_job_log` VALUES (4209, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:16:00');
INSERT INTO `sys_job_log` VALUES (4210, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:17:00');
INSERT INTO `sys_job_log` VALUES (4211, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:18:00');
INSERT INTO `sys_job_log` VALUES (4212, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:19:00');
INSERT INTO `sys_job_log` VALUES (4213, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:20:00');
INSERT INTO `sys_job_log` VALUES (4214, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:21:00');
INSERT INTO `sys_job_log` VALUES (4215, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:22:00');
INSERT INTO `sys_job_log` VALUES (4216, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:23:00');
INSERT INTO `sys_job_log` VALUES (4217, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:24:00');
INSERT INTO `sys_job_log` VALUES (4218, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:25:00');
INSERT INTO `sys_job_log` VALUES (4219, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:26:00');
INSERT INTO `sys_job_log` VALUES (4220, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:27:00');
INSERT INTO `sys_job_log` VALUES (4221, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:28:00');
INSERT INTO `sys_job_log` VALUES (4222, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:29:00');
INSERT INTO `sys_job_log` VALUES (4223, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:30:00');
INSERT INTO `sys_job_log` VALUES (4224, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:31:00');
INSERT INTO `sys_job_log` VALUES (4225, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:32:00');
INSERT INTO `sys_job_log` VALUES (4226, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:33:00');
INSERT INTO `sys_job_log` VALUES (4227, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:34:00');
INSERT INTO `sys_job_log` VALUES (4228, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:35:00');
INSERT INTO `sys_job_log` VALUES (4229, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:36:00');
INSERT INTO `sys_job_log` VALUES (4230, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:37:00');
INSERT INTO `sys_job_log` VALUES (4231, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:38:00');
INSERT INTO `sys_job_log` VALUES (4232, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-12-07 17:39:00');
INSERT INTO `sys_job_log` VALUES (4233, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:40:00');
INSERT INTO `sys_job_log` VALUES (4234, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:41:00');
INSERT INTO `sys_job_log` VALUES (4235, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:42:00');
INSERT INTO `sys_job_log` VALUES (4236, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:43:00');
INSERT INTO `sys_job_log` VALUES (4237, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:44:00');
INSERT INTO `sys_job_log` VALUES (4238, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:45:00');
INSERT INTO `sys_job_log` VALUES (4239, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:46:00');
INSERT INTO `sys_job_log` VALUES (4240, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 17:47:00');
INSERT INTO `sys_job_log` VALUES (4241, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:48:00');
INSERT INTO `sys_job_log` VALUES (4242, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 17:49:00');
INSERT INTO `sys_job_log` VALUES (4243, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:50:00');
INSERT INTO `sys_job_log` VALUES (4244, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:51:00');
INSERT INTO `sys_job_log` VALUES (4245, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:52:00');
INSERT INTO `sys_job_log` VALUES (4246, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:53:00');
INSERT INTO `sys_job_log` VALUES (4247, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:54:00');
INSERT INTO `sys_job_log` VALUES (4248, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:55:00');
INSERT INTO `sys_job_log` VALUES (4249, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:56:00');
INSERT INTO `sys_job_log` VALUES (4250, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:57:00');
INSERT INTO `sys_job_log` VALUES (4251, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 17:58:00');
INSERT INTO `sys_job_log` VALUES (4252, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 17:59:00');
INSERT INTO `sys_job_log` VALUES (4253, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:00:00');
INSERT INTO `sys_job_log` VALUES (4254, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:01:00');
INSERT INTO `sys_job_log` VALUES (4255, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 18:02:00');
INSERT INTO `sys_job_log` VALUES (4256, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:03:00');
INSERT INTO `sys_job_log` VALUES (4257, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 18:04:00');
INSERT INTO `sys_job_log` VALUES (4258, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:05:00');
INSERT INTO `sys_job_log` VALUES (4259, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 18:06:00');
INSERT INTO `sys_job_log` VALUES (4260, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:07:00');
INSERT INTO `sys_job_log` VALUES (4261, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:08:00');
INSERT INTO `sys_job_log` VALUES (4262, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:09:00');
INSERT INTO `sys_job_log` VALUES (4263, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:10:00');
INSERT INTO `sys_job_log` VALUES (4264, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:11:00');
INSERT INTO `sys_job_log` VALUES (4265, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:12:00');
INSERT INTO `sys_job_log` VALUES (4266, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:13:00');
INSERT INTO `sys_job_log` VALUES (4267, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:14:00');
INSERT INTO `sys_job_log` VALUES (4268, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:15:00');
INSERT INTO `sys_job_log` VALUES (4269, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:16:00');
INSERT INTO `sys_job_log` VALUES (4270, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:17:00');
INSERT INTO `sys_job_log` VALUES (4271, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:18:00');
INSERT INTO `sys_job_log` VALUES (4272, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:19:00');
INSERT INTO `sys_job_log` VALUES (4273, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:20:00');
INSERT INTO `sys_job_log` VALUES (4274, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:21:00');
INSERT INTO `sys_job_log` VALUES (4275, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:22:00');
INSERT INTO `sys_job_log` VALUES (4276, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:23:00');
INSERT INTO `sys_job_log` VALUES (4277, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:24:00');
INSERT INTO `sys_job_log` VALUES (4278, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:25:00');
INSERT INTO `sys_job_log` VALUES (4279, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 18:26:00');
INSERT INTO `sys_job_log` VALUES (4280, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:27:00');
INSERT INTO `sys_job_log` VALUES (4281, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:28:00');
INSERT INTO `sys_job_log` VALUES (4282, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:29:00');
INSERT INTO `sys_job_log` VALUES (4283, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:30:00');
INSERT INTO `sys_job_log` VALUES (4284, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:31:00');
INSERT INTO `sys_job_log` VALUES (4285, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:32:00');
INSERT INTO `sys_job_log` VALUES (4286, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:33:00');
INSERT INTO `sys_job_log` VALUES (4287, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:34:00');
INSERT INTO `sys_job_log` VALUES (4288, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 18:35:00');
INSERT INTO `sys_job_log` VALUES (4289, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:36:00');
INSERT INTO `sys_job_log` VALUES (4290, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:37:00');
INSERT INTO `sys_job_log` VALUES (4291, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:38:00');
INSERT INTO `sys_job_log` VALUES (4292, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 18:39:00');
INSERT INTO `sys_job_log` VALUES (4293, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:40:00');
INSERT INTO `sys_job_log` VALUES (4294, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 18:41:00');
INSERT INTO `sys_job_log` VALUES (4295, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:42:00');
INSERT INTO `sys_job_log` VALUES (4296, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:43:00');
INSERT INTO `sys_job_log` VALUES (4297, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:44:00');
INSERT INTO `sys_job_log` VALUES (4298, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:45:00');
INSERT INTO `sys_job_log` VALUES (4299, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:46:00');
INSERT INTO `sys_job_log` VALUES (4300, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 18:47:00');
INSERT INTO `sys_job_log` VALUES (4301, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:48:00');
INSERT INTO `sys_job_log` VALUES (4302, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:49:00');
INSERT INTO `sys_job_log` VALUES (4303, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:50:00');
INSERT INTO `sys_job_log` VALUES (4304, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:51:00');
INSERT INTO `sys_job_log` VALUES (4305, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:52:00');
INSERT INTO `sys_job_log` VALUES (4306, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:53:00');
INSERT INTO `sys_job_log` VALUES (4307, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:54:00');
INSERT INTO `sys_job_log` VALUES (4308, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:55:00');
INSERT INTO `sys_job_log` VALUES (4309, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 18:56:00');
INSERT INTO `sys_job_log` VALUES (4310, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 18:57:00');
INSERT INTO `sys_job_log` VALUES (4311, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-12-07 18:58:00');
INSERT INTO `sys_job_log` VALUES (4312, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 18:59:00');
INSERT INTO `sys_job_log` VALUES (4313, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:00:00');
INSERT INTO `sys_job_log` VALUES (4314, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 19:01:00');
INSERT INTO `sys_job_log` VALUES (4315, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:02:00');
INSERT INTO `sys_job_log` VALUES (4316, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:03:00');
INSERT INTO `sys_job_log` VALUES (4317, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:04:00');
INSERT INTO `sys_job_log` VALUES (4318, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:05:00');
INSERT INTO `sys_job_log` VALUES (4319, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:06:00');
INSERT INTO `sys_job_log` VALUES (4320, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:07:00');
INSERT INTO `sys_job_log` VALUES (4321, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:08:00');
INSERT INTO `sys_job_log` VALUES (4322, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:09:00');
INSERT INTO `sys_job_log` VALUES (4323, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:10:00');
INSERT INTO `sys_job_log` VALUES (4324, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:11:00');
INSERT INTO `sys_job_log` VALUES (4325, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:12:00');
INSERT INTO `sys_job_log` VALUES (4326, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:13:00');
INSERT INTO `sys_job_log` VALUES (4327, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:14:00');
INSERT INTO `sys_job_log` VALUES (4328, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:15:00');
INSERT INTO `sys_job_log` VALUES (4329, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 19:16:00');
INSERT INTO `sys_job_log` VALUES (4330, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:17:00');
INSERT INTO `sys_job_log` VALUES (4331, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:18:00');
INSERT INTO `sys_job_log` VALUES (4332, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:19:00');
INSERT INTO `sys_job_log` VALUES (4333, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:20:00');
INSERT INTO `sys_job_log` VALUES (4334, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:21:00');
INSERT INTO `sys_job_log` VALUES (4335, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:22:00');
INSERT INTO `sys_job_log` VALUES (4336, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:23:00');
INSERT INTO `sys_job_log` VALUES (4337, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:24:00');
INSERT INTO `sys_job_log` VALUES (4338, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:25:00');
INSERT INTO `sys_job_log` VALUES (4339, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:26:00');
INSERT INTO `sys_job_log` VALUES (4340, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:27:00');
INSERT INTO `sys_job_log` VALUES (4341, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:28:00');
INSERT INTO `sys_job_log` VALUES (4342, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:29:00');
INSERT INTO `sys_job_log` VALUES (4343, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:30:00');
INSERT INTO `sys_job_log` VALUES (4344, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:31:00');
INSERT INTO `sys_job_log` VALUES (4345, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:32:00');
INSERT INTO `sys_job_log` VALUES (4346, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:33:00');
INSERT INTO `sys_job_log` VALUES (4347, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:34:00');
INSERT INTO `sys_job_log` VALUES (4348, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:35:00');
INSERT INTO `sys_job_log` VALUES (4349, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:36:00');
INSERT INTO `sys_job_log` VALUES (4350, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:37:00');
INSERT INTO `sys_job_log` VALUES (4351, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:38:00');
INSERT INTO `sys_job_log` VALUES (4352, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:39:00');
INSERT INTO `sys_job_log` VALUES (4353, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:40:00');
INSERT INTO `sys_job_log` VALUES (4354, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 19:41:00');
INSERT INTO `sys_job_log` VALUES (4355, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:42:00');
INSERT INTO `sys_job_log` VALUES (4356, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 19:43:00');
INSERT INTO `sys_job_log` VALUES (4357, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:44:00');
INSERT INTO `sys_job_log` VALUES (4358, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:45:00');
INSERT INTO `sys_job_log` VALUES (4359, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 19:46:00');
INSERT INTO `sys_job_log` VALUES (4360, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:47:00');
INSERT INTO `sys_job_log` VALUES (4361, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:48:00');
INSERT INTO `sys_job_log` VALUES (4362, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 19:49:00');
INSERT INTO `sys_job_log` VALUES (4363, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:50:00');
INSERT INTO `sys_job_log` VALUES (4364, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 19:51:00');
INSERT INTO `sys_job_log` VALUES (4365, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:52:00');
INSERT INTO `sys_job_log` VALUES (4366, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:53:00');
INSERT INTO `sys_job_log` VALUES (4367, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:54:00');
INSERT INTO `sys_job_log` VALUES (4368, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:55:00');
INSERT INTO `sys_job_log` VALUES (4369, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:56:00');
INSERT INTO `sys_job_log` VALUES (4370, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:57:00');
INSERT INTO `sys_job_log` VALUES (4371, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 19:58:00');
INSERT INTO `sys_job_log` VALUES (4372, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 19:59:00');
INSERT INTO `sys_job_log` VALUES (4373, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:00:00');
INSERT INTO `sys_job_log` VALUES (4374, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:01:00');
INSERT INTO `sys_job_log` VALUES (4375, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:02:00');
INSERT INTO `sys_job_log` VALUES (4376, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:03:00');
INSERT INTO `sys_job_log` VALUES (4377, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:04:00');
INSERT INTO `sys_job_log` VALUES (4378, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:05:00');
INSERT INTO `sys_job_log` VALUES (4379, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:06:00');
INSERT INTO `sys_job_log` VALUES (4380, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:07:00');
INSERT INTO `sys_job_log` VALUES (4381, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:08:00');
INSERT INTO `sys_job_log` VALUES (4382, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:09:00');
INSERT INTO `sys_job_log` VALUES (4383, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:10:00');
INSERT INTO `sys_job_log` VALUES (4384, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-07 20:11:00');
INSERT INTO `sys_job_log` VALUES (4385, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:12:00');
INSERT INTO `sys_job_log` VALUES (4386, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:13:00');
INSERT INTO `sys_job_log` VALUES (4387, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:14:00');
INSERT INTO `sys_job_log` VALUES (4388, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:15:00');
INSERT INTO `sys_job_log` VALUES (4389, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:16:00');
INSERT INTO `sys_job_log` VALUES (4390, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：15毫秒', '0', '', '2025-12-07 20:21:00');
INSERT INTO `sys_job_log` VALUES (4391, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:22:00');
INSERT INTO `sys_job_log` VALUES (4392, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 20:23:00');
INSERT INTO `sys_job_log` VALUES (4393, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:24:00');
INSERT INTO `sys_job_log` VALUES (4394, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 20:25:00');
INSERT INTO `sys_job_log` VALUES (4395, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：15毫秒', '0', '', '2025-12-07 20:26:00');
INSERT INTO `sys_job_log` VALUES (4396, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:27:00');
INSERT INTO `sys_job_log` VALUES (4397, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 20:28:00');
INSERT INTO `sys_job_log` VALUES (4398, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:29:00');
INSERT INTO `sys_job_log` VALUES (4399, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 20:30:00');
INSERT INTO `sys_job_log` VALUES (4400, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-12-07 20:31:00');
INSERT INTO `sys_job_log` VALUES (4401, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:32:00');
INSERT INTO `sys_job_log` VALUES (4402, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:33:00');
INSERT INTO `sys_job_log` VALUES (4403, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:34:00');
INSERT INTO `sys_job_log` VALUES (4404, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:35:00');
INSERT INTO `sys_job_log` VALUES (4405, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 20:36:00');
INSERT INTO `sys_job_log` VALUES (4406, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 20:37:00');
INSERT INTO `sys_job_log` VALUES (4407, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:38:00');
INSERT INTO `sys_job_log` VALUES (4408, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:39:00');
INSERT INTO `sys_job_log` VALUES (4409, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:40:00');
INSERT INTO `sys_job_log` VALUES (4410, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:41:00');
INSERT INTO `sys_job_log` VALUES (4411, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：20毫秒', '0', '', '2025-12-07 20:42:00');
INSERT INTO `sys_job_log` VALUES (4412, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:43:00');
INSERT INTO `sys_job_log` VALUES (4413, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:44:00');
INSERT INTO `sys_job_log` VALUES (4414, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:45:00');
INSERT INTO `sys_job_log` VALUES (4415, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 20:46:00');
INSERT INTO `sys_job_log` VALUES (4416, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 20:47:00');
INSERT INTO `sys_job_log` VALUES (4417, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:48:00');
INSERT INTO `sys_job_log` VALUES (4418, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:49:00');
INSERT INTO `sys_job_log` VALUES (4419, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:50:00');
INSERT INTO `sys_job_log` VALUES (4420, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:51:00');
INSERT INTO `sys_job_log` VALUES (4421, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:52:00');
INSERT INTO `sys_job_log` VALUES (4422, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 20:53:00');
INSERT INTO `sys_job_log` VALUES (4423, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 20:54:00');
INSERT INTO `sys_job_log` VALUES (4424, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-12-07 20:56:00');
INSERT INTO `sys_job_log` VALUES (4425, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 20:57:00');
INSERT INTO `sys_job_log` VALUES (4426, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：12毫秒', '0', '', '2025-12-07 20:58:00');
INSERT INTO `sys_job_log` VALUES (4427, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 20:59:00');
INSERT INTO `sys_job_log` VALUES (4428, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 21:00:00');
INSERT INTO `sys_job_log` VALUES (4429, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 21:01:00');
INSERT INTO `sys_job_log` VALUES (4430, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:02:00');
INSERT INTO `sys_job_log` VALUES (4431, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:03:00');
INSERT INTO `sys_job_log` VALUES (4432, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:04:00');
INSERT INTO `sys_job_log` VALUES (4433, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:05:00');
INSERT INTO `sys_job_log` VALUES (4434, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:06:00');
INSERT INTO `sys_job_log` VALUES (4435, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:07:00');
INSERT INTO `sys_job_log` VALUES (4436, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:08:00');
INSERT INTO `sys_job_log` VALUES (4437, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:09:00');
INSERT INTO `sys_job_log` VALUES (4438, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:10:00');
INSERT INTO `sys_job_log` VALUES (4439, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:11:00');
INSERT INTO `sys_job_log` VALUES (4440, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:12:00');
INSERT INTO `sys_job_log` VALUES (4441, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:13:00');
INSERT INTO `sys_job_log` VALUES (4442, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:14:00');
INSERT INTO `sys_job_log` VALUES (4443, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:15:00');
INSERT INTO `sys_job_log` VALUES (4444, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:16:00');
INSERT INTO `sys_job_log` VALUES (4445, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：23毫秒', '0', '', '2025-12-07 21:17:00');
INSERT INTO `sys_job_log` VALUES (4446, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 21:18:00');
INSERT INTO `sys_job_log` VALUES (4447, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-07 21:19:00');
INSERT INTO `sys_job_log` VALUES (4448, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:20:00');
INSERT INTO `sys_job_log` VALUES (4449, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:21:00');
INSERT INTO `sys_job_log` VALUES (4450, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:22:00');
INSERT INTO `sys_job_log` VALUES (4451, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:23:00');
INSERT INTO `sys_job_log` VALUES (4452, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:24:00');
INSERT INTO `sys_job_log` VALUES (4453, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:25:00');
INSERT INTO `sys_job_log` VALUES (4454, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:26:00');
INSERT INTO `sys_job_log` VALUES (4455, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:27:00');
INSERT INTO `sys_job_log` VALUES (4456, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:28:00');
INSERT INTO `sys_job_log` VALUES (4457, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:29:00');
INSERT INTO `sys_job_log` VALUES (4458, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:30:00');
INSERT INTO `sys_job_log` VALUES (4459, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-07 21:31:00');
INSERT INTO `sys_job_log` VALUES (4460, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:32:00');
INSERT INTO `sys_job_log` VALUES (4461, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-07 21:33:00');
INSERT INTO `sys_job_log` VALUES (4462, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:34:00');
INSERT INTO `sys_job_log` VALUES (4463, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-07 21:35:00');
INSERT INTO `sys_job_log` VALUES (4464, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-07 21:36:00');
INSERT INTO `sys_job_log` VALUES (4465, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：31毫秒', '0', '', '2025-12-08 14:22:00');
INSERT INTO `sys_job_log` VALUES (4466, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:23:00');
INSERT INTO `sys_job_log` VALUES (4467, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:24:00');
INSERT INTO `sys_job_log` VALUES (4468, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:25:00');
INSERT INTO `sys_job_log` VALUES (4469, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-12-08 14:26:00');
INSERT INTO `sys_job_log` VALUES (4470, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：9毫秒', '0', '', '2025-12-08 14:27:00');
INSERT INTO `sys_job_log` VALUES (4471, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 14:28:00');
INSERT INTO `sys_job_log` VALUES (4472, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:29:00');
INSERT INTO `sys_job_log` VALUES (4473, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:30:00');
INSERT INTO `sys_job_log` VALUES (4474, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:31:00');
INSERT INTO `sys_job_log` VALUES (4475, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:32:00');
INSERT INTO `sys_job_log` VALUES (4476, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:33:00');
INSERT INTO `sys_job_log` VALUES (4477, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:34:00');
INSERT INTO `sys_job_log` VALUES (4478, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:35:00');
INSERT INTO `sys_job_log` VALUES (4479, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 14:36:00');
INSERT INTO `sys_job_log` VALUES (4480, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-08 14:37:00');
INSERT INTO `sys_job_log` VALUES (4481, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:38:00');
INSERT INTO `sys_job_log` VALUES (4482, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:39:00');
INSERT INTO `sys_job_log` VALUES (4483, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:40:00');
INSERT INTO `sys_job_log` VALUES (4484, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:41:00');
INSERT INTO `sys_job_log` VALUES (4485, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:42:00');
INSERT INTO `sys_job_log` VALUES (4486, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 14:43:00');
INSERT INTO `sys_job_log` VALUES (4487, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 14:44:00');
INSERT INTO `sys_job_log` VALUES (4488, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:45:00');
INSERT INTO `sys_job_log` VALUES (4489, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:46:00');
INSERT INTO `sys_job_log` VALUES (4490, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:47:00');
INSERT INTO `sys_job_log` VALUES (4491, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:48:00');
INSERT INTO `sys_job_log` VALUES (4492, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:49:00');
INSERT INTO `sys_job_log` VALUES (4493, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:50:00');
INSERT INTO `sys_job_log` VALUES (4494, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:51:00');
INSERT INTO `sys_job_log` VALUES (4495, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:52:00');
INSERT INTO `sys_job_log` VALUES (4496, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:53:00');
INSERT INTO `sys_job_log` VALUES (4497, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:54:00');
INSERT INTO `sys_job_log` VALUES (4498, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 14:55:00');
INSERT INTO `sys_job_log` VALUES (4499, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 14:56:00');
INSERT INTO `sys_job_log` VALUES (4500, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 14:57:00');
INSERT INTO `sys_job_log` VALUES (4501, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 14:58:00');
INSERT INTO `sys_job_log` VALUES (4502, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-08 14:59:00');
INSERT INTO `sys_job_log` VALUES (4503, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:00:00');
INSERT INTO `sys_job_log` VALUES (4504, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:01:00');
INSERT INTO `sys_job_log` VALUES (4505, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:02:00');
INSERT INTO `sys_job_log` VALUES (4506, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:03:00');
INSERT INTO `sys_job_log` VALUES (4507, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:04:00');
INSERT INTO `sys_job_log` VALUES (4508, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:05:00');
INSERT INTO `sys_job_log` VALUES (4509, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-08 15:06:00');
INSERT INTO `sys_job_log` VALUES (4510, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:07:00');
INSERT INTO `sys_job_log` VALUES (4511, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:08:00');
INSERT INTO `sys_job_log` VALUES (4512, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:09:00');
INSERT INTO `sys_job_log` VALUES (4513, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:10:00');
INSERT INTO `sys_job_log` VALUES (4514, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:11:00');
INSERT INTO `sys_job_log` VALUES (4515, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:12:00');
INSERT INTO `sys_job_log` VALUES (4516, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:13:00');
INSERT INTO `sys_job_log` VALUES (4517, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:14:00');
INSERT INTO `sys_job_log` VALUES (4518, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:15:00');
INSERT INTO `sys_job_log` VALUES (4519, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:16:00');
INSERT INTO `sys_job_log` VALUES (4520, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:17:00');
INSERT INTO `sys_job_log` VALUES (4521, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:18:00');
INSERT INTO `sys_job_log` VALUES (4522, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:19:00');
INSERT INTO `sys_job_log` VALUES (4523, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:20:00');
INSERT INTO `sys_job_log` VALUES (4524, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:21:00');
INSERT INTO `sys_job_log` VALUES (4525, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:22:00');
INSERT INTO `sys_job_log` VALUES (4526, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:23:00');
INSERT INTO `sys_job_log` VALUES (4527, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:24:00');
INSERT INTO `sys_job_log` VALUES (4528, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:25:00');
INSERT INTO `sys_job_log` VALUES (4529, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:26:00');
INSERT INTO `sys_job_log` VALUES (4530, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:27:00');
INSERT INTO `sys_job_log` VALUES (4531, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:28:00');
INSERT INTO `sys_job_log` VALUES (4532, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:29:00');
INSERT INTO `sys_job_log` VALUES (4533, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:30:00');
INSERT INTO `sys_job_log` VALUES (4534, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:31:00');
INSERT INTO `sys_job_log` VALUES (4535, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:32:00');
INSERT INTO `sys_job_log` VALUES (4536, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:33:00');
INSERT INTO `sys_job_log` VALUES (4537, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:34:00');
INSERT INTO `sys_job_log` VALUES (4538, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:35:00');
INSERT INTO `sys_job_log` VALUES (4539, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:36:00');
INSERT INTO `sys_job_log` VALUES (4540, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-08 15:37:00');
INSERT INTO `sys_job_log` VALUES (4541, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:38:00');
INSERT INTO `sys_job_log` VALUES (4542, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:39:00');
INSERT INTO `sys_job_log` VALUES (4543, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-08 15:40:00');
INSERT INTO `sys_job_log` VALUES (4544, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:41:00');
INSERT INTO `sys_job_log` VALUES (4545, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:42:00');
INSERT INTO `sys_job_log` VALUES (4546, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:43:00');
INSERT INTO `sys_job_log` VALUES (4547, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:44:00');
INSERT INTO `sys_job_log` VALUES (4548, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:45:00');
INSERT INTO `sys_job_log` VALUES (4549, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:46:00');
INSERT INTO `sys_job_log` VALUES (4550, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:47:00');
INSERT INTO `sys_job_log` VALUES (4551, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:48:00');
INSERT INTO `sys_job_log` VALUES (4552, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:49:00');
INSERT INTO `sys_job_log` VALUES (4553, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-08 15:50:00');
INSERT INTO `sys_job_log` VALUES (4554, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-08 15:51:00');
INSERT INTO `sys_job_log` VALUES (4555, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：13毫秒', '0', '', '2025-12-11 16:25:00');
INSERT INTO `sys_job_log` VALUES (4556, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：39毫秒', '0', '', '2025-12-12 09:49:00');
INSERT INTO `sys_job_log` VALUES (4557, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 09:50:00');
INSERT INTO `sys_job_log` VALUES (4558, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 09:51:00');
INSERT INTO `sys_job_log` VALUES (4559, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 09:52:00');
INSERT INTO `sys_job_log` VALUES (4560, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 09:53:00');
INSERT INTO `sys_job_log` VALUES (4561, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 09:54:00');
INSERT INTO `sys_job_log` VALUES (4562, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 09:55:00');
INSERT INTO `sys_job_log` VALUES (4563, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-12-12 09:56:00');
INSERT INTO `sys_job_log` VALUES (4564, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 09:57:00');
INSERT INTO `sys_job_log` VALUES (4565, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 09:58:00');
INSERT INTO `sys_job_log` VALUES (4566, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：10毫秒', '0', '', '2025-12-12 10:01:00');
INSERT INTO `sys_job_log` VALUES (4567, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:02:00');
INSERT INTO `sys_job_log` VALUES (4568, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:03:00');
INSERT INTO `sys_job_log` VALUES (4569, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:04:00');
INSERT INTO `sys_job_log` VALUES (4570, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:05:00');
INSERT INTO `sys_job_log` VALUES (4571, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:06:00');
INSERT INTO `sys_job_log` VALUES (4572, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:07:00');
INSERT INTO `sys_job_log` VALUES (4573, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:08:00');
INSERT INTO `sys_job_log` VALUES (4574, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-12-12 10:09:00');
INSERT INTO `sys_job_log` VALUES (4575, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:10:00');
INSERT INTO `sys_job_log` VALUES (4576, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:11:00');
INSERT INTO `sys_job_log` VALUES (4577, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:12:00');
INSERT INTO `sys_job_log` VALUES (4578, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:13:00');
INSERT INTO `sys_job_log` VALUES (4579, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-12-12 10:14:00');
INSERT INTO `sys_job_log` VALUES (4580, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:15:00');
INSERT INTO `sys_job_log` VALUES (4581, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:16:00');
INSERT INTO `sys_job_log` VALUES (4582, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:17:00');
INSERT INTO `sys_job_log` VALUES (4583, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:18:00');
INSERT INTO `sys_job_log` VALUES (4584, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:19:00');
INSERT INTO `sys_job_log` VALUES (4585, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:20:00');
INSERT INTO `sys_job_log` VALUES (4586, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 10:21:00');
INSERT INTO `sys_job_log` VALUES (4587, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 10:22:00');
INSERT INTO `sys_job_log` VALUES (4588, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:23:00');
INSERT INTO `sys_job_log` VALUES (4589, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-12 10:24:00');
INSERT INTO `sys_job_log` VALUES (4590, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:25:00');
INSERT INTO `sys_job_log` VALUES (4591, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:26:00');
INSERT INTO `sys_job_log` VALUES (4592, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-12-12 10:27:00');
INSERT INTO `sys_job_log` VALUES (4593, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：21毫秒', '0', '', '2025-12-12 10:28:00');
INSERT INTO `sys_job_log` VALUES (4594, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:29:00');
INSERT INTO `sys_job_log` VALUES (4595, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:30:00');
INSERT INTO `sys_job_log` VALUES (4596, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:31:00');
INSERT INTO `sys_job_log` VALUES (4597, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:32:00');
INSERT INTO `sys_job_log` VALUES (4598, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:33:00');
INSERT INTO `sys_job_log` VALUES (4599, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:34:00');
INSERT INTO `sys_job_log` VALUES (4600, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:35:00');
INSERT INTO `sys_job_log` VALUES (4601, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:36:00');
INSERT INTO `sys_job_log` VALUES (4602, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:37:00');
INSERT INTO `sys_job_log` VALUES (4603, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 10:38:00');
INSERT INTO `sys_job_log` VALUES (4604, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:39:00');
INSERT INTO `sys_job_log` VALUES (4605, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 10:40:00');
INSERT INTO `sys_job_log` VALUES (4606, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:41:00');
INSERT INTO `sys_job_log` VALUES (4607, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:42:00');
INSERT INTO `sys_job_log` VALUES (4608, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:43:00');
INSERT INTO `sys_job_log` VALUES (4609, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:44:00');
INSERT INTO `sys_job_log` VALUES (4610, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:45:00');
INSERT INTO `sys_job_log` VALUES (4611, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:46:00');
INSERT INTO `sys_job_log` VALUES (4612, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:47:00');
INSERT INTO `sys_job_log` VALUES (4613, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：11毫秒', '0', '', '2025-12-12 10:48:00');
INSERT INTO `sys_job_log` VALUES (4614, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:49:00');
INSERT INTO `sys_job_log` VALUES (4615, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:50:00');
INSERT INTO `sys_job_log` VALUES (4616, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:51:00');
INSERT INTO `sys_job_log` VALUES (4617, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:52:00');
INSERT INTO `sys_job_log` VALUES (4618, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:53:00');
INSERT INTO `sys_job_log` VALUES (4619, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:54:00');
INSERT INTO `sys_job_log` VALUES (4620, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 10:55:00');
INSERT INTO `sys_job_log` VALUES (4621, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:56:00');
INSERT INTO `sys_job_log` VALUES (4622, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:57:00');
INSERT INTO `sys_job_log` VALUES (4623, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 10:58:00');
INSERT INTO `sys_job_log` VALUES (4624, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 10:59:00');
INSERT INTO `sys_job_log` VALUES (4625, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:00:00');
INSERT INTO `sys_job_log` VALUES (4626, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:01:00');
INSERT INTO `sys_job_log` VALUES (4627, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:02:00');
INSERT INTO `sys_job_log` VALUES (4628, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:03:00');
INSERT INTO `sys_job_log` VALUES (4629, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:10:00');
INSERT INTO `sys_job_log` VALUES (4630, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-12 11:11:00');
INSERT INTO `sys_job_log` VALUES (4631, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:12:00');
INSERT INTO `sys_job_log` VALUES (4632, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:13:00');
INSERT INTO `sys_job_log` VALUES (4633, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:14:00');
INSERT INTO `sys_job_log` VALUES (4634, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:15:00');
INSERT INTO `sys_job_log` VALUES (4635, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:16:00');
INSERT INTO `sys_job_log` VALUES (4636, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:17:00');
INSERT INTO `sys_job_log` VALUES (4637, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:18:00');
INSERT INTO `sys_job_log` VALUES (4638, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 11:19:00');
INSERT INTO `sys_job_log` VALUES (4639, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 11:20:00');
INSERT INTO `sys_job_log` VALUES (4640, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:21:00');
INSERT INTO `sys_job_log` VALUES (4641, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:22:00');
INSERT INTO `sys_job_log` VALUES (4642, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:23:00');
INSERT INTO `sys_job_log` VALUES (4643, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:24:00');
INSERT INTO `sys_job_log` VALUES (4644, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-12 11:25:00');
INSERT INTO `sys_job_log` VALUES (4645, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-12 11:26:00');
INSERT INTO `sys_job_log` VALUES (4646, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:27:00');
INSERT INTO `sys_job_log` VALUES (4647, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:28:00');
INSERT INTO `sys_job_log` VALUES (4648, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-12 11:29:00');
INSERT INTO `sys_job_log` VALUES (4649, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 11:30:00');
INSERT INTO `sys_job_log` VALUES (4650, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:31:00');
INSERT INTO `sys_job_log` VALUES (4651, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：19毫秒', '0', '', '2025-12-12 11:32:00');
INSERT INTO `sys_job_log` VALUES (4652, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:33:00');
INSERT INTO `sys_job_log` VALUES (4653, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:34:00');
INSERT INTO `sys_job_log` VALUES (4654, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:35:00');
INSERT INTO `sys_job_log` VALUES (4655, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:36:00');
INSERT INTO `sys_job_log` VALUES (4656, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:37:00');
INSERT INTO `sys_job_log` VALUES (4657, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:38:00');
INSERT INTO `sys_job_log` VALUES (4658, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:39:00');
INSERT INTO `sys_job_log` VALUES (4659, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:40:00');
INSERT INTO `sys_job_log` VALUES (4660, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：7毫秒', '0', '', '2025-12-12 11:41:00');
INSERT INTO `sys_job_log` VALUES (4661, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:42:00');
INSERT INTO `sys_job_log` VALUES (4662, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:43:00');
INSERT INTO `sys_job_log` VALUES (4663, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-12 11:44:00');
INSERT INTO `sys_job_log` VALUES (4664, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-12 11:45:00');
INSERT INTO `sys_job_log` VALUES (4665, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-12 11:46:00');
INSERT INTO `sys_job_log` VALUES (4666, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-12 11:47:00');
INSERT INTO `sys_job_log` VALUES (4667, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：46毫秒', '0', '', '2025-12-13 09:04:00');
INSERT INTO `sys_job_log` VALUES (4668, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:05:00');
INSERT INTO `sys_job_log` VALUES (4669, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:06:00');
INSERT INTO `sys_job_log` VALUES (4670, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:07:00');
INSERT INTO `sys_job_log` VALUES (4671, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:08:00');
INSERT INTO `sys_job_log` VALUES (4672, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：8毫秒', '0', '', '2025-12-13 09:09:00');
INSERT INTO `sys_job_log` VALUES (4673, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:10:00');
INSERT INTO `sys_job_log` VALUES (4674, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:11:00');
INSERT INTO `sys_job_log` VALUES (4675, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 09:12:00');
INSERT INTO `sys_job_log` VALUES (4676, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-13 09:13:00');
INSERT INTO `sys_job_log` VALUES (4677, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:14:00');
INSERT INTO `sys_job_log` VALUES (4678, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:15:00');
INSERT INTO `sys_job_log` VALUES (4679, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:16:00');
INSERT INTO `sys_job_log` VALUES (4680, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:17:00');
INSERT INTO `sys_job_log` VALUES (4681, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:18:00');
INSERT INTO `sys_job_log` VALUES (4682, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-13 09:19:00');
INSERT INTO `sys_job_log` VALUES (4683, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:20:00');
INSERT INTO `sys_job_log` VALUES (4684, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:21:00');
INSERT INTO `sys_job_log` VALUES (4685, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:22:00');
INSERT INTO `sys_job_log` VALUES (4686, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:23:00');
INSERT INTO `sys_job_log` VALUES (4687, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 09:24:00');
INSERT INTO `sys_job_log` VALUES (4688, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:25:00');
INSERT INTO `sys_job_log` VALUES (4689, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:26:00');
INSERT INTO `sys_job_log` VALUES (4690, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:27:00');
INSERT INTO `sys_job_log` VALUES (4691, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:28:00');
INSERT INTO `sys_job_log` VALUES (4692, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:29:00');
INSERT INTO `sys_job_log` VALUES (4693, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:30:00');
INSERT INTO `sys_job_log` VALUES (4694, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:31:00');
INSERT INTO `sys_job_log` VALUES (4695, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:32:00');
INSERT INTO `sys_job_log` VALUES (4696, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:33:00');
INSERT INTO `sys_job_log` VALUES (4697, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 09:34:00');
INSERT INTO `sys_job_log` VALUES (4698, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：24毫秒', '0', '', '2025-12-13 09:35:00');
INSERT INTO `sys_job_log` VALUES (4699, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:36:00');
INSERT INTO `sys_job_log` VALUES (4700, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:37:00');
INSERT INTO `sys_job_log` VALUES (4701, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:38:00');
INSERT INTO `sys_job_log` VALUES (4702, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:39:00');
INSERT INTO `sys_job_log` VALUES (4703, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:40:00');
INSERT INTO `sys_job_log` VALUES (4704, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:41:00');
INSERT INTO `sys_job_log` VALUES (4705, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:42:00');
INSERT INTO `sys_job_log` VALUES (4706, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-12-13 09:43:00');
INSERT INTO `sys_job_log` VALUES (4707, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:45:00');
INSERT INTO `sys_job_log` VALUES (4708, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:46:00');
INSERT INTO `sys_job_log` VALUES (4709, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:47:00');
INSERT INTO `sys_job_log` VALUES (4710, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:48:00');
INSERT INTO `sys_job_log` VALUES (4711, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:49:00');
INSERT INTO `sys_job_log` VALUES (4712, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:50:00');
INSERT INTO `sys_job_log` VALUES (4713, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:51:00');
INSERT INTO `sys_job_log` VALUES (4714, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:52:00');
INSERT INTO `sys_job_log` VALUES (4715, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:53:00');
INSERT INTO `sys_job_log` VALUES (4716, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 09:54:00');
INSERT INTO `sys_job_log` VALUES (4717, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：17毫秒', '0', '', '2025-12-13 09:55:00');
INSERT INTO `sys_job_log` VALUES (4718, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 09:56:00');
INSERT INTO `sys_job_log` VALUES (4719, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 09:57:00');
INSERT INTO `sys_job_log` VALUES (4720, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 09:58:00');
INSERT INTO `sys_job_log` VALUES (4721, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 09:59:00');
INSERT INTO `sys_job_log` VALUES (4722, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:00:00');
INSERT INTO `sys_job_log` VALUES (4723, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：6毫秒', '0', '', '2025-12-13 10:01:00');
INSERT INTO `sys_job_log` VALUES (4724, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:02:00');
INSERT INTO `sys_job_log` VALUES (4725, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:03:00');
INSERT INTO `sys_job_log` VALUES (4726, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:04:00');
INSERT INTO `sys_job_log` VALUES (4727, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:05:00');
INSERT INTO `sys_job_log` VALUES (4728, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:06:00');
INSERT INTO `sys_job_log` VALUES (4729, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:07:00');
INSERT INTO `sys_job_log` VALUES (4730, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:08:00');
INSERT INTO `sys_job_log` VALUES (4731, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:09:00');
INSERT INTO `sys_job_log` VALUES (4732, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:10:00');
INSERT INTO `sys_job_log` VALUES (4733, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:11:00');
INSERT INTO `sys_job_log` VALUES (4734, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:12:00');
INSERT INTO `sys_job_log` VALUES (4735, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:13:00');
INSERT INTO `sys_job_log` VALUES (4736, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:14:00');
INSERT INTO `sys_job_log` VALUES (4737, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:15:00');
INSERT INTO `sys_job_log` VALUES (4738, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:16:00');
INSERT INTO `sys_job_log` VALUES (4739, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:17:00');
INSERT INTO `sys_job_log` VALUES (4740, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:18:00');
INSERT INTO `sys_job_log` VALUES (4741, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:19:00');
INSERT INTO `sys_job_log` VALUES (4742, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:20:00');
INSERT INTO `sys_job_log` VALUES (4743, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:21:00');
INSERT INTO `sys_job_log` VALUES (4744, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:22:00');
INSERT INTO `sys_job_log` VALUES (4745, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-13 10:23:00');
INSERT INTO `sys_job_log` VALUES (4746, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:24:00');
INSERT INTO `sys_job_log` VALUES (4747, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:25:00');
INSERT INTO `sys_job_log` VALUES (4748, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:26:00');
INSERT INTO `sys_job_log` VALUES (4749, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:27:00');
INSERT INTO `sys_job_log` VALUES (4750, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:28:00');
INSERT INTO `sys_job_log` VALUES (4751, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:29:00');
INSERT INTO `sys_job_log` VALUES (4752, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:30:00');
INSERT INTO `sys_job_log` VALUES (4753, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:31:00');
INSERT INTO `sys_job_log` VALUES (4754, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:32:00');
INSERT INTO `sys_job_log` VALUES (4755, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:33:00');
INSERT INTO `sys_job_log` VALUES (4756, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:34:00');
INSERT INTO `sys_job_log` VALUES (4757, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:35:00');
INSERT INTO `sys_job_log` VALUES (4758, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:36:00');
INSERT INTO `sys_job_log` VALUES (4759, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:37:00');
INSERT INTO `sys_job_log` VALUES (4760, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:38:00');
INSERT INTO `sys_job_log` VALUES (4761, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:39:00');
INSERT INTO `sys_job_log` VALUES (4762, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:40:00');
INSERT INTO `sys_job_log` VALUES (4763, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-13 10:41:00');
INSERT INTO `sys_job_log` VALUES (4764, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:42:00');
INSERT INTO `sys_job_log` VALUES (4765, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:43:00');
INSERT INTO `sys_job_log` VALUES (4766, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:44:00');
INSERT INTO `sys_job_log` VALUES (4767, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 10:45:00');
INSERT INTO `sys_job_log` VALUES (4768, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:46:00');
INSERT INTO `sys_job_log` VALUES (4769, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:47:00');
INSERT INTO `sys_job_log` VALUES (4770, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:48:00');
INSERT INTO `sys_job_log` VALUES (4771, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:49:00');
INSERT INTO `sys_job_log` VALUES (4772, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:50:00');
INSERT INTO `sys_job_log` VALUES (4773, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:51:00');
INSERT INTO `sys_job_log` VALUES (4774, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:52:00');
INSERT INTO `sys_job_log` VALUES (4775, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:53:00');
INSERT INTO `sys_job_log` VALUES (4776, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:54:00');
INSERT INTO `sys_job_log` VALUES (4777, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:55:00');
INSERT INTO `sys_job_log` VALUES (4778, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 10:56:00');
INSERT INTO `sys_job_log` VALUES (4779, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 10:57:00');
INSERT INTO `sys_job_log` VALUES (4780, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:58:00');
INSERT INTO `sys_job_log` VALUES (4781, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 10:59:00');
INSERT INTO `sys_job_log` VALUES (4782, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:00:00');
INSERT INTO `sys_job_log` VALUES (4783, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:01:00');
INSERT INTO `sys_job_log` VALUES (4784, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:02:00');
INSERT INTO `sys_job_log` VALUES (4785, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:03:00');
INSERT INTO `sys_job_log` VALUES (4786, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:04:00');
INSERT INTO `sys_job_log` VALUES (4787, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:05:00');
INSERT INTO `sys_job_log` VALUES (4788, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:06:00');
INSERT INTO `sys_job_log` VALUES (4789, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:07:00');
INSERT INTO `sys_job_log` VALUES (4790, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:08:00');
INSERT INTO `sys_job_log` VALUES (4791, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:09:00');
INSERT INTO `sys_job_log` VALUES (4792, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:10:00');
INSERT INTO `sys_job_log` VALUES (4793, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：0毫秒', '0', '', '2025-12-13 11:11:00');
INSERT INTO `sys_job_log` VALUES (4794, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:12:00');
INSERT INTO `sys_job_log` VALUES (4795, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:13:00');
INSERT INTO `sys_job_log` VALUES (4796, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：1毫秒', '0', '', '2025-12-13 11:14:00');
INSERT INTO `sys_job_log` VALUES (4797, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：5毫秒', '0', '', '2025-12-13 11:15:00');
INSERT INTO `sys_job_log` VALUES (4798, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：3毫秒', '0', '', '2025-12-13 11:16:00');
INSERT INTO `sys_job_log` VALUES (4799, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:17:00');
INSERT INTO `sys_job_log` VALUES (4800, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:18:00');
INSERT INTO `sys_job_log` VALUES (4801, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:19:00');
INSERT INTO `sys_job_log` VALUES (4802, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：2毫秒', '0', '', '2025-12-13 11:20:00');
INSERT INTO `sys_job_log` VALUES (4803, '家教信息24小时自动审核', 'DEFAULT', 'tutorAutoAuditTask.execute()', '家教信息24小时自动审核 总共耗时：4毫秒', '0', '', '2025-12-13 11:21:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2025-12-12 10:00:43');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2025-12-13 09:08:42');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5054 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 98, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-03 12:00:27', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 99, 'monitor', NULL, '', '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-03 12:00:32', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 100, 'tool', NULL, '', '', 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-03 12:00:36', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '管理员管理', 1, 1, 'user', 'system/user/index', '', '', 1, 1, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-13 10:14:48', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 1, 'C', '1', '0', 'system:role:list', 'peoples', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-13 10:14:58', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 1, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-13 10:14:54', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2025-11-03 08:51:32', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2025-11-03 08:51:32', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-11-03 08:51:32', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2025-11-03 08:51:32', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2025-11-03 08:51:32', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2025-11-03 08:51:32', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-11-03 08:51:32', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-11-03 08:51:32', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-11-03 08:51:32', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-11-03 08:51:32', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-11-03 08:51:32', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-11-03 08:51:32', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2025-11-03 08:51:32', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-11-03 08:51:32', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2025-11-03 08:51:32', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 1, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-13 10:15:06', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 1, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-11-03 08:51:32', 'admin', '2025-11-13 10:15:09', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '管理员查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '管理员新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '管理员修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '管理员删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '管理员导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '管理员导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-11-03 08:51:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '信息管理', 0, 1, 'info', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'user', 'admin', '2025-11-04 15:52:56', '', NULL, '信息管理目录');
INSERT INTO `sys_menu` VALUES (2001, '家教信息管理', 2000, 1, 'tutorInfo', 'system/tutorInfo/index', '', '', 1, 1, 'C', '0', '0', 'system:tutor:list', 'user', 'admin', '2025-11-04 17:30:11', 'admin', '2025-11-13 10:14:15', '家教信息菜单');
INSERT INTO `sys_menu` VALUES (2002, '家教信息查询', 2001, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:tutor:query', '#', 'admin', '2025-11-04 17:30:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '家教信息新增', 2001, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:tutor:add', '#', 'admin', '2025-11-04 17:30:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '家教信息修改', 2001, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:tutor:edit', '#', 'admin', '2025-11-04 17:30:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '家教信息删除', 2001, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:tutor:remove', '#', 'admin', '2025-11-04 17:30:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '家教信息导出', 2001, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:tutor:export', '#', 'admin', '2025-11-04 17:30:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '家长信息管理', 2000, 3, 'parentInfo', 'system/parentInfo/index', NULL, '', 1, 1, 'C', '0', '0', 'system:parentInfo:list', 'peoples', 'admin', '2025-11-05 15:47:54', 'admin', '2025-11-13 10:14:17', '家长信息管理菜单');
INSERT INTO `sys_menu` VALUES (2104, '家长信息查询', 2103, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:parentInfo:query', '#', 'admin', '2025-11-05 15:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '家长信息新增', 2103, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:parentInfo:add', '#', 'admin', '2025-11-05 15:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2106, '家长信息修改', 2103, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:parentInfo:edit', '#', 'admin', '2025-11-05 15:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '家长信息删除', 2103, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:parentInfo:remove', '#', 'admin', '2025-11-05 15:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '家长信息导出', 2103, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:parentInfo:export', '#', 'admin', '2025-11-05 15:47:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '学生信息管理', 2000, 4, 'studentInfo', 'system/studentInfo/index', NULL, '', 1, 1, 'C', '0', '0', 'system:studentInfo:list', 'people', 'admin', '2025-11-05 16:50:26', 'admin', '2025-11-13 10:14:19', '学生信息管理菜单');
INSERT INTO `sys_menu` VALUES (2110, '学生信息查询', 2109, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:studentInfo:query', '#', 'admin', '2025-11-05 16:50:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2111, '学生信息新增', 2109, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:studentInfo:add', '#', 'admin', '2025-11-05 16:50:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2112, '学生信息修改', 2109, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:studentInfo:edit', '#', 'admin', '2025-11-05 16:50:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2113, '学生信息删除', 2109, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:studentInfo:remove', '#', 'admin', '2025-11-05 16:50:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2114, '学生信息导出', 2109, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:studentInfo:export', '#', 'admin', '2025-11-05 16:50:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (5051, '用户信息管理', 2000, 5, 'wxUser', 'system/wxUser/index', NULL, '', 1, 0, 'C', '0', '0', 'system:wxUser:list', 'user', 'admin', '2025-12-07 20:25:35', '', NULL, '微信用户信息管理菜单');
INSERT INTO `sys_menu` VALUES (5052, '用户信息查询', 5051, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wxUser:query', '#', 'admin', '2025-12-07 20:25:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (5053, '用户信息导出', 5051, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'system:wxUser:export', '#', 'admin', '2025-12-07 20:25:35', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (311, '家教信息', 1, 'com.tutor.web.controller.system.TTutorInfoController.add()', 'POST', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"tuesday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/Slice 763@2x_20251212105102A001.png\",\"constellation\":\"金牛座\",\"createTime\":\"2025-12-12 10:52:01\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/Slice 763@2x_20251212105105A002.png\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":1,\"highScore\":123,\"idCard\":\"370600000000000000\",\"labHours\":123,\"latitude\":123,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"points\":0,\"serviceCount\":0,\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1,12\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:30\\\"}]\",\"tutorName\":\"测试家教\",\"tutorNo\":\"OT202512129907\",\"tutorableGradeIds\":\"1\",\"university\":\"123\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'latitude\' at row 1\r\n### The error may exist in file [E:\\project\\2.开发中\\家教预约\\开源阉割版\\Tutor\\tutor-system\\target\\classes\\mapper\\system\\TTutorInfoMapper.xml]\r\n### The error may involve com.tutor.system.mapper.TTutorInfoMapper.insertTTutorInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_tutor_info          ( tutor_no,                                                    address,             longitude,             latitude,                          tutor_name,             gender,             age,             phone,             avatar_images,             teacher_type,             crime_record_cert,             id_card,                          grade_id,             university,             major,             subject_ids,             tutorable_grade_ids,             student_require,             teaching_mode,             available_time,             expected_salary,             trial_time,             middle_score,             high_score,             constellation,             service_count,                          points,             lab_hours,             diy_hours,             accept_minimalist,             other_info,                          status,             audit_status,                                                                                                                     create_time )           values ( ?,                                                    ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,        ', '2025-12-12 10:52:01', 49);
INSERT INTO `sys_oper_log` VALUES (312, '家教信息', 1, 'com.tutor.web.controller.system.TTutorInfoController.add()', 'POST', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"createTime\":\"2025-12-12 11:00:37\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gradeId\":2,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":123,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"points\":0,\"province\":\"江苏\",\"serviceCount\":0,\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorName\":\"123\",\"tutorNo\":\"JS202512124277\",\"tutorableGradeIds\":\"1\",\"university\":\"123\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'latitude\' at row 1\r\n### The error may exist in file [E:\\project\\2.开发中\\家教预约\\开源阉割版\\Tutor\\tutor-system\\target\\classes\\mapper\\system\\TTutorInfoMapper.xml]\r\n### The error may involve com.tutor.system.mapper.TTutorInfoMapper.insertTTutorInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_tutor_info          ( tutor_no,             province,             city,             district,             address,             longitude,             latitude,             native_place,             tutor_name,                          age,             phone,             avatar_images,             teacher_type,             crime_record_cert,             id_card,                          grade_id,             university,             major,             subject_ids,             tutorable_grade_ids,             student_require,             teaching_mode,             available_time,             expected_salary,             trial_time,             middle_score,             high_score,             constellation,             service_count,                          points,             lab_hours,             diy_hours,             accept_minimalist,             other_info,                          status,             audit_status,                                                                                                                     create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                ', '2025-12-12 11:00:37', 36);
INSERT INTO `sys_oper_log` VALUES (313, '家教信息', 1, 'com.tutor.web.controller.system.TTutorInfoController.add()', 'POST', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"createTime\":\"2025-12-12 11:01:28\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gradeId\":2,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"points\":0,\"province\":\"江苏\",\"serviceCount\":0,\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":17,\"tutorName\":\"123\",\"tutorNo\":\"JS202512125968\",\"tutorableGradeIds\":\"1\",\"university\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:01:28', 16);
INSERT INTO `sys_oper_log` VALUES (314, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"female\",\"gradeId\":2,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"province\":\"江苏\",\"qualification\":{\"tutorId\":17},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":17,\"tutorName\":\"123\",\"tutorNo\":\"JS202512125968\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:09:24\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Table \'tutor.t_tutor_qualification\' doesn\'t exist\r\n### The error may exist in file [E:\\project\\2.开发中\\家教预约\\开源阉割版\\Tutor\\tutor-system\\target\\classes\\mapper\\system\\TTutorQualificationMapper.xml]\r\n### The error may involve com.tutor.system.mapper.TTutorQualificationMapper.selectTTutorQualificationByTutorId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select qualification_id, tutor_id, teacher_certificate, teaching_experience, character_intro,                honor_images, other_advantage, resume_url, create_time, update_time         from t_tutor_qualification         where tutor_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'tutor.t_tutor_qualification\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'tutor.t_tutor_qualification\' doesn\'t exist', '2025-12-12 11:09:24', 58);
INSERT INTO `sys_oper_log` VALUES (315, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"female\",\"gradeId\":2,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"province\":\"江苏\",\"qualification\":{\"tutorId\":17},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":17,\"tutorName\":\"123\",\"tutorNo\":\"JS202512125968\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:10:15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:10:15', 13);
INSERT INTO `sys_oper_log` VALUES (316, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"female\",\"gradeId\":3,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"province\":\"江苏\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212111038A002.png\",\"otherAdvantage\":\"123\",\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212111041A003.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212111034A001.png\",\"teachingExperience\":\"123\",\"tutorId\":17},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":17,\"tutorName\":\"123\",\"tutorNo\":\"JS202512125968\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:10:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:10:43', 14);
INSERT INTO `sys_oper_log` VALUES (317, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":100,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"monday\\\":[\\\"morning\\\"],\\\"friday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png\",\"city\":\"无锡市\",\"constellation\":\"双子座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png\",\"district\":\"锡山区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"female\",\"gradeId\":3,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":123,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13500000000\",\"province\":\"江苏\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212111038A002.png\",\"otherAdvantage\":\"123\",\"qualificationId\":16,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212111041A003.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212111034A001.png\",\"teachingExperience\":\"123\",\"tutorId\":17},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"student\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-24\\\",\\\"startTime\\\":\\\"12:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":17,\"tutorName\":\"123\",\"tutorNo\":\"JS202512125968\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:25:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:25:02', 31);
INSERT INTO `sys_oper_log` VALUES (318, '家教信息', 3, 'com.tutor.web.controller.system.TTutorInfoController.remove()', 'DELETE', 1, 'admin', NULL, '/system/tutorInfo/17', '127.0.0.1', '内网IP', '[17]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:25:11', 11);
INSERT INTO `sys_oper_log` VALUES (319, '家教信息', 1, 'com.tutor.web.controller.system.TTutorInfoController.add()', 'POST', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"保定市\",\"constellation\":\"金牛座\",\"createTime\":\"2025-12-12 11:26:15\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"满城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"points\":0,\"province\":\"河北\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212112610A005.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"serviceCount\":0,\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:26:15', 42);
INSERT INTO `sys_oper_log` VALUES (320, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"保定市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"满城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"河北\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":34,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:36:29\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-12 11:36:29', 26);
INSERT INTO `sys_oper_log` VALUES (321, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"保定市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"满城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"河北\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":34,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:36:39\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-12 11:36:39', 17);
INSERT INTO `sys_oper_log` VALUES (322, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"保定市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"满城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"河北\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":34,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:36:46\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-12 11:36:46', 13);
INSERT INTO `sys_oper_log` VALUES (323, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"保定市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"满城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"河北\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":34,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-12 11:38:29\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-12 11:38:29', 38);
INSERT INTO `sys_oper_log` VALUES (324, '家长信息', 1, 'com.tutor.system.controller.TParentInfoController.add()', 'POST', 1, 'admin', NULL, '/system/parentInfo', '127.0.0.1', '内网IP', '{\"address\":\"123\",\"avatar\":\"/profile/upload/2025/12/13/qifu_01_20251213093905A001.png\",\"city\":\"北京市\",\"createTime\":\"2025-12-13 09:39:12\",\"district\":\"东城区\",\"gender\":\"male\",\"idCard\":\"123\",\"params\":{},\"parentId\":15,\"parentName\":\"123\",\"parentNo\":\"BJS202512132708\",\"phone\":\"13500000000\",\"province\":\"北京市\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-13 09:39:12', 38);
INSERT INTO `sys_oper_log` VALUES (325, '学生信息', 1, 'com.tutor.web.controller.system.TStudentInfoController.add()', 'POST', 1, 'admin', NULL, '/system/studentInfo', '127.0.0.1', '内网IP', '{\"academicPerformance\":\"123\",\"acceptEduInnovation\":\"0\",\"age\":100,\"constellation\":\"白羊座\",\"createBy\":\"admin\",\"createTime\":\"2025-12-13 09:39:26\",\"gender\":\"male\",\"gradeId\":2,\"interestInK12Lab\":\"1\",\"otherInfo\":\"123\",\"params\":{},\"parentId\":15,\"school\":\"123\",\"status\":\"0\",\"studentId\":8,\"studentName\":\"123\",\"studentNo\":\"BJS2025121327081\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-13 09:39:26', 22);
INSERT INTO `sys_oper_log` VALUES (326, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"北京市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"东城区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京市-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"北京市\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":34,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-13 09:39:41\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-13 09:39:41', 25);
INSERT INTO `sys_oper_log` VALUES (327, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"上海市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"徐汇区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"北京市-北京市-东城区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"上海市\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":17,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-13 09:43:34\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-13 09:43:34', 32);
INSERT INTO `sys_oper_log` VALUES (328, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"上海市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"徐汇区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"上海市-上海市-黄浦区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"上海市\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":17,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-13 09:44:16\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2025-12-13 09:44:17', 31);
INSERT INTO `sys_oper_log` VALUES (329, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"0\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"上海市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"徐汇区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":18,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"上海市-上海市-黄浦区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"上海市\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":17,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-13 09:55:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-13 09:55:02', 37);
INSERT INTO `sys_oper_log` VALUES (330, '家教信息审核', 2, 'com.tutor.web.controller.system.TTutorInfoController.audit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo/audit', '127.0.0.1', '内网IP', '{\"auditRemark\":\"\",\"auditStatus\":\"1\",\"params\":{},\"phone\":\"13000000000\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-13 09:55:14', 10);
INSERT INTO `sys_oper_log` VALUES (331, '家教信息', 2, 'com.tutor.web.controller.system.TTutorInfoController.edit()', 'PUT', 1, 'admin', NULL, '/system/tutorInfo', '127.0.0.1', '内网IP', '{\"acceptMinimalist\":\"0\",\"address\":\"123\",\"age\":20,\"auditStatus\":\"1\",\"availableTime\":\"{\\\"thursday\\\":[\\\"morning\\\"]}\",\"avatarImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png\",\"city\":\"上海市\",\"constellation\":\"金牛座\",\"crimeRecordCert\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png\",\"district\":\"徐汇区\",\"diyHours\":123,\"expectedSalary\":123,\"gender\":\"male\",\"gradeId\":6,\"highScore\":123,\"idCard\":\"123\",\"labHours\":123,\"latitude\":12,\"longitude\":12,\"major\":\"123\",\"middleScore\":123,\"nativePlace\":\"上海市-上海市-黄浦区\",\"otherInfo\":\"<p>123</p>\",\"params\":{},\"phone\":\"13000000000\",\"province\":\"上海市\",\"qualification\":{\"characterIntro\":\"123\",\"honorImages\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png\",\"otherAdvantage\":\"123\",\"qualificationId\":17,\"resumeUrl\":\"/profile/upload/2025/12/12/简历_20251212113627A002.doc\",\"teacherCertificate\":\"/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png\",\"teachingExperience\":\"123\",\"tutorId\":18},\"status\":\"0\",\"studentRequire\":\"123\",\"subjectIds\":\"1\",\"teacherType\":\"retired\",\"teachingMode\":\"offline\",\"trialTime\":\"[{\\\"date\\\":\\\"2025-12-30\\\",\\\"startTime\\\":\\\"11:00\\\",\\\"endTime\\\":\\\"11:00\\\"}]\",\"tutorId\":18,\"tutorName\":\"123\",\"tutorNo\":\"HB202512124620\",\"tutorableGradeIds\":\"1\",\"university\":\"123\",\"updateTime\":\"2025-12-13 09:55:40\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-12-13 09:55:40', 16);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-11-03 08:51:32', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-11-03 08:51:32', '', NULL, '超级管理员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 5041);
INSERT INTO `sys_role_menu` VALUES (1, 5042);
INSERT INTO `sys_role_menu` VALUES (1, 5043);
INSERT INTO `sys_role_menu` VALUES (1, 5044);
INSERT INTO `sys_role_menu` VALUES (1, 5045);
INSERT INTO `sys_role_menu` VALUES (1, 5046);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', '00', '123@163.com', '15888888888', '1', '/profile/avatar/2025/11/17/cdaa15d58e6d4b2eaa4888637ba2f999.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-12-13 09:08:43', '2025-11-03 08:51:32', 'admin', '2025-11-03 08:51:32', '', '2025-11-17 13:24:29', '管理员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

-- ----------------------------
-- Table structure for t_parent_info
-- ----------------------------
DROP TABLE IF EXISTS `t_parent_info`;
CREATE TABLE `t_parent_info`  (
  `parent_id` bigint NOT NULL AUTO_INCREMENT COMMENT '家长ID',
  `parent_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '家长编号',
  `parent_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别：male=男，female=女',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属省份',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在市',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在区/县',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细地址',
  `avg_score` decimal(3, 2) NULL DEFAULT NULL COMMENT '平均评分',
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信openid',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `deposit_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '押金金额',
  `deposit_transaction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信交易单号',
  `deposit_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '押金状态（0=未支付，1=已支付，2=已退款）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `phone_unique` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci GENERATED ALWAYS AS (if((`del_flag` = _utf8mb4'0'),`phone`,NULL)) STORED COMMENT '用于唯一性检查的手机号（仅未删除记录）' NULL,
  `parent_no_unique` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci GENERATED ALWAYS AS (if((`del_flag` = _utf8mb4'0'),`parent_no`,NULL)) STORED COMMENT '用于唯一性检查的家长编号（仅未删除记录）' NULL,
  PRIMARY KEY (`parent_id`) USING BTREE,
  UNIQUE INDEX `uk_phone_active`(`phone_unique` ASC) USING BTREE,
  UNIQUE INDEX `uk_parent_no_active`(`parent_no_unique` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '家长信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_parent_info
-- ----------------------------
INSERT INTO `t_parent_info` VALUES (15, 'BJS202512132708', '123', '/profile/upload/2025/12/13/qifu_01_20251213093905A001.png', 'male', '13500000000', '123', '北京市', '北京市', '东城区', '123', NULL, NULL, '0', '0', NULL, NULL, '0', '', '2025-12-13 09:39:12', '', NULL, NULL, DEFAULT, DEFAULT);

-- ----------------------------
-- Table structure for t_student_info
-- ----------------------------
DROP TABLE IF EXISTS `t_student_info`;
CREATE TABLE `t_student_info`  (
  `student_id` bigint NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `student_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生编号（家长编号+序号）',
  `parent_id` bigint NOT NULL COMMENT '所属家长ID',
  `student_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别：male=男，female=女',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `grade_id` bigint NULL DEFAULT NULL COMMENT '年级ID',
  `school` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学校',
  `academic_performance` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学习成绩',
  `constellation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星座',
  `other_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '其他信息（富文本）',
  `interest_in_k12_lab` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '是否对K12共享实验室感兴趣（0否 1是）',
  `accept_edu_innovation` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '是否接受教育创新方面的资讯（0否 1是）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `student_no_unique` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci GENERATED ALWAYS AS (if((`del_flag` = _utf8mb4'0'),`student_no`,NULL)) STORED COMMENT '用于唯一性检查的学生编号（仅未删除记录）' NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  UNIQUE INDEX `uk_student_no_active`(`student_no_unique` ASC) USING BTREE,
  INDEX `idx_parent_id`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_student_info
-- ----------------------------
INSERT INTO `t_student_info` VALUES (8, 'BJS2025121327081', 15, '123', NULL, 'male', 100, 2, '123', '123', '白羊座', '123', '1', '0', '0', '0', 'admin', '2025-12-13 09:39:26', '', NULL, NULL, DEFAULT);

-- ----------------------------
-- Table structure for t_tutor_info
-- ----------------------------
DROP TABLE IF EXISTS `t_tutor_info`;
CREATE TABLE `t_tutor_info`  (
  `tutor_id` bigint NOT NULL AUTO_INCREMENT COMMENT '家教ID',
  `tutor_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家教编号',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属省份',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在市',
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在区/县',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `longitude` decimal(11, 8) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 8) NULL DEFAULT NULL COMMENT '纬度',
  `native_place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `tutor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别：male=男，female=女',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '家教头像，多个用逗号分隔',
  `teacher_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师类型：retired=退休，working=在职，student=在校生',
  `crime_record_cert` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '无犯罪记录证明图片URL',
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信openid',
  `like_count` int NULL DEFAULT 0 COMMENT '点赞数量',
  `grade_id` bigint NULL DEFAULT NULL COMMENT '年级ID',
  `university` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `major` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业',
  `subject_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '可辅导科目IDs，逗号分隔',
  `tutorable_grade_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '可辅导年级IDs，逗号分隔',
  `student_require` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学员要求',
  `teaching_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教学方式（offline线下,online线上，多个用逗号分隔）',
  `available_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '可辅导时间，JSON格式',
  `expected_salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '期望助学金（元/小时）',
  `trial_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '试课时间，JSON格式',
  `middle_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '中考成绩',
  `high_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '高考成绩',
  `constellation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '星座',
  `service_count` int NULL DEFAULT 0 COMMENT '服务次数',
  `avg_score` decimal(3, 2) NULL DEFAULT 0.00 COMMENT '评价平均分',
  `points` int NULL DEFAULT 0 COMMENT '积分',
  `lab_hours` int NULL DEFAULT NULL COMMENT '实验室经验（小时）',
  `diy_hours` int NULL DEFAULT NULL COMMENT 'DIY经验（小时）',
  `accept_minimalist` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否接受极简主义交友（0否 1是）',
  `other_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其他信息（富文本）',
  `personal_profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '个人简介（富文本）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `audit_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '审核状态（0待审核 1审核通过 2审核拒绝）',
  `audit_time` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `audit_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0正常 2删除）',
  `deposit_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '押金金额',
  `deposit_transaction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信交易单号',
  `deposit_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '押金状态（0=未支付，1=已支付，2=已退款）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tutor_id`) USING BTREE,
  UNIQUE INDEX `idx_tutor_no`(`tutor_no` ASC) USING BTREE,
  INDEX `idx_grade_id`(`grade_id` ASC) USING BTREE,
  INDEX `idx_audit_status`(`audit_status` ASC) USING BTREE,
  INDEX `idx_create_time`(`create_time` ASC) USING BTREE,
  INDEX `idx_like_count`(`like_count` DESC) USING BTREE COMMENT '用于按点赞数量排序'
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '家教信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tutor_info
-- ----------------------------
INSERT INTO `t_tutor_info` VALUES (17, 'JS202512125968', '江苏', '无锡市', '锡山区', '123', 123.00000000, 12.00000000, '北京-北京市-东城区', '123', 'female', 100, '13500000000', '/profile/upload/2025/12/12/QQ20251125-110401_20251212105951A007.png', 'student', '/profile/upload/2025/12/12/QQ20251125-110401_20251212105949A006.png', '123', NULL, 0, 3, '123', '123', '1', '1', '123', 'offline', '{\"monday\":[\"morning\"],\"friday\":[\"morning\"]}', 123.00, '[{\"date\":\"2025-12-24\",\"startTime\":\"12:00\",\"endTime\":\"11:00\"}]', 123.00, 123.00, '双子座', 0, 0.00, 0, 123, 123, '0', '<p>123</p>', NULL, '0', '0', NULL, NULL, '2', NULL, NULL, '0', '', '2025-12-12 11:01:28', '', '2025-12-12 11:25:02', NULL);
INSERT INTO `t_tutor_info` VALUES (18, 'HB202512124620', '上海市', '上海市', '徐汇区', '123', 12.00000000, 12.00000000, '上海市-上海市-黄浦区', '123', 'male', 20, '13000000000', '/profile/upload/2025/12/12/QQ20251125-110401_20251212112528A001.png', 'retired', '/profile/upload/2025/12/12/QQ20251125-110401_20251212112530A002.png', '123', NULL, 0, 6, '123', '123', '1', '1', '123', 'offline', '{\"thursday\":[\"morning\"]}', 123.00, '[{\"date\":\"2025-12-30\",\"startTime\":\"11:00\",\"endTime\":\"11:00\"}]', 123.00, 123.00, '金牛座', 0, 0.00, 0, 123, 123, '0', '<p>123</p>', NULL, '0', '1', '2025-12-13 09:55:14', '', '0', NULL, NULL, '0', '', '2025-12-12 11:26:15', '', '2025-12-13 09:55:40', NULL);

-- ----------------------------
-- Table structure for t_tutor_qualification
-- ----------------------------
DROP TABLE IF EXISTS `t_tutor_qualification`;
CREATE TABLE `t_tutor_qualification`  (
  `qualification_id` bigint NOT NULL AUTO_INCREMENT COMMENT '资格信息ID',
  `tutor_id` bigint NOT NULL COMMENT '家教ID',
  `teacher_certificate` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师资格证书图片URL',
  `teaching_experience` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教学经验',
  `character_intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性格介绍',
  `honor_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '荣誉奖项图片，JSON数组',
  `other_advantage` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他优势',
  `resume_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历URL',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`qualification_id`) USING BTREE,
  INDEX `idx_tutor_id`(`tutor_id` ASC) USING BTREE,
  CONSTRAINT `fk_qualification_tutor` FOREIGN KEY (`tutor_id`) REFERENCES `t_tutor_info` (`tutor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '教师资格信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tutor_qualification
-- ----------------------------
INSERT INTO `t_tutor_qualification` VALUES (14, 15, 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/19/691d905677f55fd7eb4ab9b8.jpg', '123', '123', 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/19/691d905a77f55fd7eb4ab9b9.jpg', '123', 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/19/691d906277f55fd7eb4ab9ba.doc', '2025-11-19 17:40:20', '2025-11-21 13:47:40');
INSERT INTO `t_tutor_qualification` VALUES (15, 16, '', '陪伴过两个初二学生，一个高一男生！取得了一定的进步，顺利考上了心仪的高中和大学！', '', '', '', '', '2025-11-20 19:18:05', '2025-11-29 09:29:58');
INSERT INTO `t_tutor_qualification` VALUES (16, 17, '/profile/upload/2025/12/12/QQ20251125-110401_20251212111034A001.png', '123', '123', '/profile/upload/2025/12/12/QQ20251125-110401_20251212111038A002.png', '123', '/profile/upload/2025/12/12/简历_20251212111041A003.doc', '2025-11-21 17:52:52', '2025-12-12 11:25:02');
INSERT INTO `t_tutor_qualification` VALUES (17, 18, '/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png', '123', '123', '/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png', '123', '/profile/upload/2025/12/12/简历_20251212113627A002.doc', '2025-11-22 21:59:22', '2025-12-13 09:55:40');
INSERT INTO `t_tutor_qualification` VALUES (18, 19, '', '', '', '', '', '', '2025-11-22 22:21:55', '2025-11-28 09:16:20');
INSERT INTO `t_tutor_qualification` VALUES (19, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-24 12:28:48', NULL);
INSERT INTO `t_tutor_qualification` VALUES (20, 21, 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/25/69252640e4b0152b25e2428b.jpg', '123', '123', 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/25/69252643e4b0152b25e2428c.jpg', '123', 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/11/25/69252649e4b0152b25e2428d.doc', '2025-11-25 11:46:01', '2025-11-28 09:42:04');
INSERT INTO `t_tutor_qualification` VALUES (21, 22, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-25 17:47:58', NULL);
INSERT INTO `t_tutor_qualification` VALUES (22, 23, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-25 18:59:50', NULL);
INSERT INTO `t_tutor_qualification` VALUES (23, 24, NULL, '专八和教师资格证齐全，带过5次小班课，4次大班课，经验丰富。', '比较活泼，上课风格轻松', NULL, NULL, NULL, '2025-11-25 21:48:21', NULL);
INSERT INTO `t_tutor_qualification` VALUES (24, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-27 10:45:40', NULL);
INSERT INTO `t_tutor_qualification` VALUES (25, 26, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-28 20:29:14', '2025-12-09 20:15:43');
INSERT INTO `t_tutor_qualification` VALUES (26, 27, '', '教导过初一升初二，初二升初三的初中生，帮助其查漏补缺，制定个性化学习方案，取得了良好的成绩', '', '', '', '', '2025-11-29 16:06:13', '2025-12-03 10:31:15');
INSERT INTO `t_tutor_qualification` VALUES (27, 28, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-30 23:02:04', '2025-12-09 20:16:05');
INSERT INTO `t_tutor_qualification` VALUES (28, 29, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 11:23:38', NULL);
INSERT INTO `t_tutor_qualification` VALUES (29, 30, NULL, '王冠老师，北京西城。\n\n华师本科，英语专业。\n教学经验29年，超级爱教学。\n湖北省公立示范高中英语教师10年。\n同时开3家小培训机构6年。\n\n1，独创汉拼音标教学法，\n     让孩子3分钟爱上英语。\n2，独创英语所有题型的满分方法，\n     让孩子从学渣快速逆袭学霸。\n3，荣获湖北广播电视台专访。\n4，荣获北京广播电视台专访。\n5，辅导学生在全国中学生英语大赛\n      荣获国家级一等奖。', '有爱心，有耐心，有信心。\n爱孩子，懂英语，有方法。', NULL, '1，杜同学，9年级寒假才开始跟我学英语，英语全班倒数第一，30分，不到两个月，进步到全班第三。中考英语96分，进步了66分。\n\n2，杜同学的妹妹也跟我学英语，从中等成绩进步到全班第一了。\n\n3，杜同学今年高三毕业，考上了985大学，英语126分，满分是150。英语是各科的最高分。她高中三年都没怎么补英语，节约了很多英语学费，节约了大量时间用在提升其他学科。', NULL, '2025-12-09 16:58:17', NULL);
INSERT INTO `t_tutor_qualification` VALUES (30, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 17:39:20', NULL);
INSERT INTO `t_tutor_qualification` VALUES (31, 32, 'https://last1000m.oss-cn-beijing.aliyuncs.com/last1000m/2025/12/09/6937f040e4b05e3aa9aa8a44.jpg', NULL, '耐心 幽默', NULL, NULL, NULL, '2025-12-09 17:48:47', NULL);
INSERT INTO `t_tutor_qualification` VALUES (32, 33, NULL, '拥有2年线上+线下综合家教经验，教学覆盖小学至大学全年龄段，同时具备成人英语教学能力，始终秉持“热情负责、因材施教、双向沟通”的教学理念。\n教学中，不仅聚焦学科知识传授与学习方法优化，更注重与学生构建信任联结——凭借扎实的文字功底与高效的沟通技巧，快速捕捉不同年龄段学生的性格特点与学习痛点，以亲切易懂的方式拆解知识难点，同时通过兴趣引导、正向激励等方式激发学习主动性，真正与孩子打成一片。此外，善于倾听学生诉求与家长期望，精准理解家校核心需求，形成“教学+陪伴+反馈”的闭环服务，助力学生全面提升。\n教学成果显著，所带学生在学科成绩、综合能力上均有亮眼表现，部分学生成功参与襄阳广电315节目、校园文化交流等重要项目；具备丰富的实践与交流经验，能将多元场景的积累融入教学，为学生提供更具广度的知识视角与成长指引。', NULL, NULL, NULL, NULL, '2025-12-09 19:18:37', NULL);
INSERT INTO `t_tutor_qualification` VALUES (33, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-09 19:50:52', '2025-12-09 20:55:01');
INSERT INTO `t_tutor_qualification` VALUES (34, 18, '/profile/upload/2025/12/12/QQ20251125-110401_20251212112603A003.png', '123', '123', '/profile/upload/2025/12/12/QQ20251125-110401_20251212112606A004.png', '123', '/profile/upload/2025/12/12/简历_20251212113627A002.doc', '2025-12-12 11:26:15', '2025-12-13 09:55:40');

-- ----------------------------
-- Table structure for t_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_user`;
CREATE TABLE `t_wx_user`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID（雪花算法生成的10位数字ID）',
  `openid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '微信openid',
  `unionid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信unionid',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像URL',
  `gender` tinyint NULL DEFAULT 0 COMMENT '性别 0-未知 1-男 2-女',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户类型：parent-家长，teacher-老师',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '关联的家长ID',
  `tutor_id` bigint NULL DEFAULT NULL COMMENT '关联的家教老师ID',
  `inviter_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请人的user_id（推广功能）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `points` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '用户积分',
  `avg_rating` decimal(5, 2) NULL DEFAULT NULL COMMENT '用户平均评分（0-100分）',
  `total_evaluations` int NULL DEFAULT 0 COMMENT '总评价次数',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uk_openid`(`openid` ASC) USING BTREE,
  INDEX `idx_phone`(`phone` ASC) USING BTREE,
  INDEX `idx_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `idx_tutor_id`(`tutor_id` ASC) USING BTREE,
  INDEX `idx_inviter_id`(`inviter_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '微信小程序用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
