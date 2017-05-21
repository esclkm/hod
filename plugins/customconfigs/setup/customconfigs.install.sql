CREATE TABLE IF NOT EXISTS `cot_customconfigs` (
  `config_id` int(11) NOT NULL auto_increment,
  `config_cat` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `config_order` int(11) collate utf8_unicode_ci NOT NULL default 0,
  `config_name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `config_type` tinyint NOT NULL default '0',
  `config_value` text collate utf8_unicode_ci NOT NULL,
  `config_default` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `config_variants` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `config_title` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `config_desc` text collate utf8_unicode_ci NOT NULL,
  `config_updated` int(11) NOT NULL,
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `cot_customconfigs_cats` (
  `configcat_id` int(11) NOT NULL auto_increment,
  `configcat_name` varchar(255) NOT NULL DEFAULT '',
  `configcat_title` varchar(255) NOT NULL DEFAULT '',
  `configcat_desc` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`configcat_id`)
)  ENGINE = MYISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;