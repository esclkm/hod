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

$id = cot_import('id', 'G', 'INT');
$lstr = new landing();

if(!$lstr->exists($id))
{
    cot_die();
}
if($a == 'edit')
{
    $lstr->update($id, $_POST);
    cot_message('lstr_updated');
    cot_redirect(cot_url('admin', 'm=other&p=landingstructure', '', true));    
}
if($a == 'delete')
{
    $lstr->delete($id);
    cot_message('lstr_deleted');
    cot_redirect(cot_url('admin', 'm=other&p=landingstructure', '', true));
}

$mskin = cot_tplfile('landingstructure.tools.edit', 'plug', true);
$t = new XTemplate($mskin);
$t->assign($lstr->editTags($id));
$t->assign(array(
    'DELETE_ACTION' => cot_url('admin', 'm=other&p=landingstructure&n=edit&id='.$id.'&a=delete'),
    'EDIT_ACTION' => cot_url('admin', 'm=other&p=landingstructure&n=edit&id='.$id.'&a=edit'),
));
cot_display_messages($t);
$t->parse("MAIN");
$plugin_body .= $t->text('MAIN');