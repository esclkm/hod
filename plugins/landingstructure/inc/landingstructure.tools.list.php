<?php

/**
 * mavatars for Cotonti CMF
 *
 * @version 1.00
 * @author	esclkm
 * @copyright (c) 2013 esclkm
 */
defined('COT_CODE') or die('Wrong URL');

/* @var $db CotDB */
/* @var $cache Cache */
/* @var $t Xtemplate */

$lstr = new landing();
if($a == 'edit')
{
    $data_t['str_order'] = cot_import('str_order', 'P', 'ARR');
    $data_t['str_menutitle'] = cot_import('str_menutitle', 'P', 'ARR');
    $data_t['str_menuorder'] = cot_import('str_menuorder', 'P', 'ARR');
    $data_t['str_menulink'] = cot_import('str_menulink', 'P', 'ARR');
    $data_t['str_classes_main'] = cot_import('str_classes_main', 'P', 'ARR');
    $data_t['str_classes_add'] = cot_import('str_classes_add', 'P', 'ARR');
    $data_t['str_title'] = cot_import('str_title', 'P', 'ARR');
    $data_t['str_callback'] = cot_import('str_callback', 'P', 'ARR');
    $data_t['str_params'] = cot_import('str_params', 'P', 'ARR');
    $data = array();
    foreach($data_t as $param => $val_arr)
    {
	foreach($val_arr as $id => $val)
	{
	    $data[$id][$param] = $val;
	}
    }
    foreach($data as $id => $upd_data)
    {
	$lstr->update($id, $upd_data);
    }
    cot_message('updated_success');
    cot_redirect(cot_url('admin', 'm=other&p=landingstructure', '', true));
    

}
if($a == 'add')
{
    $lstr->insert($_POST);
    cot_message('lstr_added');
    cot_redirect(cot_url('admin', 'm=other&p=landingstructure', '', true));
    
}
$mskin = cot_tplfile('landingstructure.tools.list', 'plug', true);
$t = new XTemplate($mskin);
$lstr->listedit($t, "MAIN");

$t->assign($lstr->addTags());
$t->assign(array(
    'ADD_ACTION' => cot_url('admin', 'm=other&p=landingstructure&a=add'),
    'EDIT_ACTION' => cot_url('admin', 'm=other&p=landingstructure&a=edit'),
));
cot_display_messages($t);
$t->parse("MAIN");
$plugin_body .= $t->text('MAIN');