DROP TABLE IF EXISTS `cot_configeditor`;
ALTER TABLE `cot_config` DROP COLUMN `config_desc`;
DELETE FROM `cot_config` WHERE `config_donor` = 'configeditor';