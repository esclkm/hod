<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=tools
 * [END_COT_EXT]
 */
/**
 * Excel Page Importer / Exporter plugin
 *
 * @package excelpagemanager
 * @version 2.0.0
 * @author esclkm
 * @copyright Copyright (c) esclkm 2008-2013
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

$action = cot_import('action', 'R', 'TXT');
require_once cot_langfile('excelpagemanager', 'plug');
require_once cot_incfile('page', 'module');
require_once cot_incfile('excelpagemanager', 'plug');
require_once cot_incfile('excelpagemanager', 'plug', 'config');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('page', 'any');
cot_block($usr['isadmin']);

if ($a == 'import')
{
	require_once cot_incfile('excelpagemanager', 'plug', 'importing');
}

$t = new XTemplate(cot_tplfile('excelpagemanager', 'plug'));
cot_display_messages($t, 'MAIN');
$t->assign(array(
	'FORM_URL' => cot_url('admin', 'm=other&p=excelpagemanager&a=import'),
	'CONFIGS' => cot_selectbox(0, 'configs', array_keys($xlsx_import_config), array_keys($xlsx_import_config), false),
	'INPUT' => cot_inputbox('file', 'importfile')
));
$t->parse('MAIN.IMPORT');

$sort_type = array(
	'id' => $L['Id'],
	'type' => $L['Type'],
	'key' => $L['Key'],
	'title' => $L['Title'],
	'desc' => $L['Description'],
	'text' => $L['Body'],
	'author' => $L['Author'],
	'ownerid' => $L['Owner'],
	'date' => $L['Date'],
	'begin' => $L['Begin'],
	'expire' => $L['Expire'],
	'rating' => $L['Rating'],
	'count' => $L['Hits'],
	'file' => $L['adm_fileyesno'],
	'url' => $L['adm_fileurl'],
	'size' => $L['adm_filesize'],
	'filecount' => $L['adm_filecount']
);
$sort_way = array(
	'asc' => $L['Ascending'],
	'desc' => $L['Descending']
);
$filter_type = array(
	'all' => $L['All'],
	'valqueue' => $L['adm_valqueue'],
	'validated' => $L['adm_validated'],
	'expired' => $L['adm_expired'],
);
$t->assign(array(
	'FORM_URL' => cot_url('plug', 'r=excelpagemanager&a=export'),
	'CONFIGS' => cot_selectbox(0, 'configs', array_keys($xlsx_export_config), array_keys($xlsx_export_config), false),
	'LINK' => 'www.0.www',
	'CAT' => cot_selectbox_structure('page', $c, 'c', '', false),
	'CAT_IN' => cot_checkbox($in, 'in'),
	'TITLE' => cot_inputbox('text', 'title', $title),
	'ORDER' => cot_selectbox($sorttype, 'sorttype', array_keys($sort_type), array_values($sort_type), false),
	'WAY' => cot_selectbox($sortway, 'sortway', array_keys($sort_way), array_values($sort_way), false),
	'FILTER' => cot_selectbox($filter, 'filter', array_keys($filter_type), array_values($filter_type), false),
));
$t->parse('MAIN.EXPORT');

/* === Hook === */
foreach (cot_getextplugins('excelpagemanager.export.tags') as $pl)
{
	include $pl;
}
/* ===== */
$t->parse('MAIN');
$adminmain = $t->text('MAIN');
