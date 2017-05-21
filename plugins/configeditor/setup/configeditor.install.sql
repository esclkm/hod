CREATE TABLE IF NOT EXISTS `cot_configeditor` (
  `configcat_id` int(11) NOT NULL auto_increment,
  `configcat_name` varchar(255) NOT NULL DEFAULT '',
  `configcat_title` varchar(255) NOT NULL DEFAULT '',
  `configcat_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`configcat_id`)
)  ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `cot_config` ADD COLUMN `config_desc` varchar(255) NOT NULL default '';