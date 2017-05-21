<?php
defined('COT_CODE') or die('Wrong URL.');

/**
 * Excel Page Importer / Exporter plugin
 *
 * @package excelpagemanager
 * @version 2.0.0
 * @author esclkm
 * @copyright Copyright (c) esclkm 2008-2013
 * @license BSD
 */
$xlsx_import_config['grl'] = array(// НАЧАЛО КООРДИНАТ A1!!!!
	'where' => array('field' => 'page_id', 'col' => 'A'),
//	'where2' => array('field' => 'page_title', 'col' => 'B'),
	'offset' => 2,
	'fieldsimport' => array(		
		'page_title' => array('col' => 'B', 'type' => 'string'),
		'page_alias' => array('col' => 'B', 'type' => 'callback', 'value' => 'import_alias'),
		'page_cat' => array('col' => 'C', 'type' => 'string'),
		'page_desc' => array('col' => 'D', 'type' => 'string'),
		'page_metadesc' => array('col' => 'E', 'type' => 'string'),
		'page_param_geo_metro' => array('col' => 'F', 'type' => 'string'),
		'page_param_geo_phone' => array('col' => 'G', 'type' => 'string'),		
		'page_price_05_app' => array('col' => 'H', 'type' => 'int', 'value' => '0'),
		'page_price_05_home' => array('col' => 'I', 'type' => 'int', 'value' => '0'),
		'page_price_1_app' => array('col' => 'J', 'type' => 'int', 'value' => '0'),
		'page_price_1_home' => array('col' => 'K', 'type' => 'int', 'value' => '0'),
		'page_price_2_app' => array('col' => 'L', 'type' => 'int', 'value' => '0'),
		'page_price_2_home' => array('col' => 'M', 'type' => 'int', 'value' => '0'),
		'page_price_8_app' => array('col' => 'N', 'type' => 'int', 'value' => '0'),
		'page_price_8_home' => array('col' => 'O', 'type' => 'int', 'value' => '0'),
		
		'page_param_ind_age' => array('col' => 'P', 'type' => 'int', 'value' => '0'),
		'page_param_ind_height' => array('col' => 'Q', 'type' => 'int', 'value' => '0'),
		'page_param_ind_weight' => array('col' => 'R', 'type' => 'int', 'value' => '0'),
		'page_param_ind_mammae' => array('col' => 'S', 'type' => 'int', 'value' => '0'),
		'page_param_ind_body' => array('col' => 'T', 'type' => 'string'),
		'page_param_ind_hair' => array('col' => 'U', 'type' => 'string'),
		'page_param_ind_intim' => array('col' => 'V', 'type' => 'string'),
		'page_param_ind_nac' => array('col' => 'W', 'type' => 'string'),
		'page_param_ind_size' => array('col' => 'X', 'type' => 'string'),
		'page_param_ind_realphoto' => array('col' => 'Y', 'type' => 'string'),
		'page_param_ind_photo_edit' => array('col' => 'Z', 'type' => 'string'),
		'page_param_ind_nosmoking' => array('col' => 'AA', 'type' => 'bool'),
		
		'page_param_sex_a' => array('col' => 'AB', 'type' => 'string'),
		'page_param_sex_b' => array('col' => 'AC', 'type' => 'string'),
		'page_param_sex_c' => array('col' => 'AD', 'type' => 'string'),					
		'page_param_sex_d' => array('col' => 'AE', 'type' => 'string'),	
		'page_param_sex_e' => array('col' => 'AF', 'type' => 'string'),
		'page_param_sex_f' => array('col' => 'AG', 'type' => 'string'),
			
		'page_date' => array('col' => 'ZZ', 'type' => 'static', 'value' => (int)$sys['now_offset']),
		'page_begin' => array('col' => 'ZZ', 'type' => 'static', 'value' => (int)$sys['now_offset']),
		'page_updated' => array('col' => 'ZZ', 'type' => 'static', 'value' => (int)$sys['now_offset']),
		'page_ownerid' => array('col' => 'ZZ', 'type' => 'static', 'value' => (int)$usr['id'])
	),
	'fieldsreplace' => array(
		'page_title' => array('col' => 'B', 'type' => 'string'),
		'page_cat' => array('col' => 'C', 'type' => 'string'),
		'page_desc' => array('col' => 'D', 'type' => 'string'),
		'page_metadesc' => array('col' => 'E', 'type' => 'string'),
		'page_param_geo_metro' => array('col' => 'F', 'type' => 'string'),
		'page_param_geo_phone' => array('col' => 'G', 'type' => 'string'),		
		'page_price_05_app' => array('col' => 'H', 'type' => 'int', 'value' => '0'),
		'page_price_05_home' => array('col' => 'I', 'type' => 'int', 'value' => '0'),
		'page_price_1_app' => array('col' => 'J', 'type' => 'int', 'value' => '0'),
		'page_price_1_home' => array('col' => 'K', 'type' => 'int', 'value' => '0'),
		'page_price_2_app' => array('col' => 'L', 'type' => 'int', 'value' => '0'),
		'page_price_2_home' => array('col' => 'M', 'type' => 'int', 'value' => '0'),
		'page_price_8_app' => array('col' => 'N', 'type' => 'int', 'value' => '0'),
		'page_price_8_home' => array('col' => 'O', 'type' => 'int', 'value' => '0'),
		
		'page_param_ind_age' => array('col' => 'P', 'type' => 'int', 'value' => '0'),
		'page_param_ind_height' => array('col' => 'Q', 'type' => 'int', 'value' => '0'),
		'page_param_ind_weight' => array('col' => 'R', 'type' => 'int', 'value' => '0'),
		'page_param_ind_mammae' => array('col' => 'S', 'type' => 'int', 'value' => '0'),
		'page_param_ind_body' => array('col' => 'T', 'type' => 'string'),
		'page_param_ind_hair' => array('col' => 'U', 'type' => 'string'),
		'page_param_ind_intim' => array('col' => 'V', 'type' => 'string'),
		'page_param_ind_nac' => array('col' => 'W', 'type' => 'string'),
		'page_param_ind_size' => array('col' => 'X', 'type' => 'string'),
		'page_param_ind_realphoto' => array('col' => 'Y', 'type' => 'string'),
		'page_param_ind_photo_edit' => array('col' => 'Z', 'type' => 'string'),
		'page_param_ind_nosmoking' => array('col' => 'AA', 'type' => 'bool'),
		
		'page_param_sex_a' => array('col' => 'AB', 'type' => 'string'),
		'page_param_sex_b' => array('col' => 'AC', 'type' => 'string'),
		'page_param_sex_c' => array('col' => 'AD', 'type' => 'string'),					
		'page_param_sex_d' => array('col' => 'AE', 'type' => 'string'),	
		'page_param_sex_e' => array('col' => 'AF', 'type' => 'string'),
		'page_param_sex_f' => array('col' => 'AG', 'type' => 'string'),
			
		'page_updated' => array('col' => 'ZZ', 'type' => 'static', 'value' => (int)$sys['now_offset']),
	)
);

// type = string, double, int, bool, static, array, pageavatar
/*
 * справка
 * 
 * первый параметр имя стобца в mysql - если такого столбца нет вас может ждать ошибка!!!!
 * xlscol = номер столбца в xls 
 * type = типы
 * value = значение по умолчанию, значение, перебор значений
 * 
 * type - типы импортируемых данны 
 * string - простая строка - читает строку пишет строку  
 * double - число с плавающей запятой
 * int - целое число
 * bool = двоичное число - value указывает на значение которое воспринимается, как true
 * static = значение берется из value -таблица xls не имеет значения
 * array = массив сравнения = value массив = 'ЧТО' => 'НА ЧТО ЗАМЕНИТЬ', есть нет "что" берется "что"="default"
 *  
 */

$xlsx_export_config['grl'] = array(// НАЧАЛО КООРДИНАТ 0:0!!!!
	'sheet' => 1, // лист, с которого начинаем чтение
	'autoinsert' => array(// АВТОВСТАВКА РЕЖИМ КООРДИНАТ = СТАНДАРТ A1 = причина различные библиотеки
	),
	'offset' => 2, // отступ
	'template' => 'grl', // отступ
	'colsexport' => array(// что вставлять когда экспортируем
		'A' => array('field' => 'page_id', 'type' => 'int'),
		'B' => array('field' => 'page_title', 'type' => 'string'),
		'C' => array('field' => 'page_cat', 'type' => 'string'),
		'D' => array('field' => 'page_desc', 'type' => 'string'),
		'E' => array('field' => 'page_metadesc', 'type' => 'string'),
		'F' => array('field' => 'page_param_geo_metro', 'type' => 'string'),
		'G' => array('field' => 'page_param_geo_phone', 'type' => 'string'),		
		'H' => array('field' => 'page_price_05_app', 'type' => 'string'),
		'I' => array('field' => 'page_price_05_home', 'type' => 'string'),
		'J' => array('field' => 'page_price_1_app', 'type' => 'string'),
		'K' => array('field' => 'page_price_1_home', 'type' => 'string'),
		'L' => array('field' => 'page_price_2_app', 'type' => 'string'),
		'M' => array('field' => 'page_price_2_home', 'type' => 'string'),
		'N' => array('field' => 'page_price_8_app', 'type' => 'string'),
		'O' => array('field' => 'page_price_8_home', 'type' => 'string'),
		
		'P' => array('field' => 'page_param_ind_age', 'type' => 'string'),
		'Q' => array('field' => 'page_param_ind_height', 'type' => 'string'),
		'R' => array('field' => 'page_param_ind_weight', 'type' => 'string'),
		'S' => array('field' => 'page_param_ind_mammae', 'type' => 'string'),
		'T' => array('field' => 'page_param_ind_body', 'type' => 'string'),
		'U' => array('field' => 'page_param_ind_hair', 'type' => 'string'),
		'V' => array('field' => 'page_param_ind_intim', 'type' => 'string'),
		'W' => array('field' => 'page_param_ind_nac', 'type' => 'string'),
		'X' => array('field' => 'page_param_ind_size', 'type' => 'string'),
		'Y' => array('field' => 'page_param_ind_realphoto', 'type' => 'string'),					
		'Z' => array('field' => 'page_param_ind_photo_edit', 'type' => 'string'),				
		'AA' => array('field' => 'page_param_ind_nosmoking', 'type' => 'string'),
			
		'AB' => array('field' => 'page_param_sex_a', 'type' => 'string'),
		'AC' => array('field' => 'page_param_sex_b', 'type' => 'string'),
		'AD' => array('field' => 'page_param_sex_c', 'type' => 'string'),
		'AE' => array('field' => 'page_param_sex_d', 'type' => 'string'),
		'AF' => array('field' => 'page_param_sex_e', 'type' => 'string'),
		'AG' => array('field' => 'page_param_sex_f', 'type' => 'string'),
	), 
);

function import_alias($title, $default = "")
{
	global $db, $db_pages;
	$alias = $default;
	if (cot_plugin_active('autoalias2'))
	{
		require_once cot_incfile('autoalias2', 'plug');

		$duplicate = false;
		do
		{
			$alias = autoalias2_convert($title, "", $duplicate);
			if (!$cfg['plugin']['autoalias2']['prepend_id']
				&& $db->query("SELECT COUNT(*) FROM $db_pages WHERE page_alias = '".$alias."'")->fetchColumn() > 0)
			{
				$duplicate = true;
			}
			else
			{
				$duplicate = false;
			}
		}
		while ($duplicate && !$cfg['plugin']['autoalias2']['prepend_id']);
	}
	return $alias;
}

/*
param_ind_age
param_ind_height
param_ind_weight
param_ind_mammae
param_ind_body
param_ind_hair
param_ind_intim
param_ind_nac
param_ind_size
param_ind_realphoto
param_geo_metro
param_ind_photo_edit
param_ind_nosmoking
price_05_app
price_1_app
price_2_app
price_8_app
price_05_home
price_1_home
price_2_home
price_8_home
param_sex_a
param_sex_b
param_sex_c
param_sex_d
param_sex_e
param_sex_f
param_geo_phone
 * 
 */

/*
 * Excel ID
Имя
Категория
Короткое описание товара
META DESCRIPTION
Метро
Телефон
Полчаса ап
Полчаса выезд
Час ап
Час выезд
2 часа ап
2 часа выезд
Ночь ап
Ночь выезд
Возраст
Рост, см
Вес, кг
Размер груди
Телосложение
Цвет волос
Интимная стрижка
Национальность
Размер одежды
Фото проверенно
Ретушь
Некурящая
Секс
Массаж
Стриприз
Разное
Садо-Мазо
Экстрим
 */