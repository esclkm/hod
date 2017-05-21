CREATE TABLE IF NOT EXISTS `cot_lstr` (
    `str_id` int(11) NOT NULL AUTO_INCREMENT,
    `str_order` int(11) NOT NULL,
    `str_menutitle` varchar(255) collate utf8_unicode_ci,
    `str_menuorder` int(11) NOT NULL,
    `str_menulink` varchar(255) collate utf8_unicode_ci,
    `str_classes_main` varchar(255) collate utf8_unicode_ci,
    `str_classes_add` varchar(255) collate utf8_unicode_ci,
    `str_title` varchar(255) collate utf8_unicode_ci,
    `str_callback` varchar(255) collate utf8_unicode_ci,
 	`str_params` TEXT collate utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`str_id`),
    KEY (`str_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
