CREATE DATABASE `marketing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `marketing`;

-- DROP DATABASE `marketing`;

DROP TABLE IF EXISTS `award`;
CREATE TABLE `award`
(
    `id`           int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
    `award_id`     int          NOT NULL COMMENT '抽奖奖品ID - 内部流转使用',
    `award_key`    varchar(32)  NOT NULL COMMENT '奖品对接标识 - 每一个都是一个对应的发奖策略',
    `award_config` varchar(32)  NOT NULL COMMENT '奖品配置信息',
    `award_desc`   varchar(128) NOT NULL COMMENT '奖品内容描述',
    `create_time`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `strategy`;
CREATE TABLE `strategy`
(
    `id`            int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
    `strategy_id`   int          NOT NULL COMMENT '抽奖策略ID',
    `strategy_desc` varchar(128) NOT NULL COMMENT '抽奖策略描述',
    `create_time`   datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY `idx_strategy_id` (`strategy_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `strategy_award`;
CREATE TABLE `strategy_award`
(
    `id`                  int unsigned  NOT NULL AUTO_INCREMENT COMMENT '自增ID',
    `strategy_id`         int           NOT NULL COMMENT '抽奖策略ID',
    `award_id`            int           NOT NULL COMMENT '抽奖奖品ID - 内部流转使用',
    `award_title`         varchar(128)  NOT NULL COMMENT '抽奖奖品标题',
    `award_subtitle`      varchar(128)           DEFAULT NULL COMMENT '抽奖奖品副标题',
    `award_count`         int           NOT NULL DEFAULT '0' COMMENT '奖品库存总量',
    `award_count_surplus` int           NOT NULL DEFAULT '0' COMMENT '奖品库存剩余',
    `award_rate`          decimal(6, 6) NOT NULL COMMENT '奖品中奖概率',
    `rule_models`         varchar(256)           DEFAULT NULL COMMENT '规则模型，rule配置的模型同步到此表，便于使用',
    `sort`                int           NOT NULL DEFAULT '0' COMMENT '排序',
    `create_time`         datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`         datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`),
    KEY `idx_strategy_id_award_id` (`strategy_id`, `award_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
