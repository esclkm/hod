<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=page.list.tags
 * [END_COT_EXT]
 */
/**
 * plugin pagelisteditor for Cotonti Siena
 * 
 * @package pagelisteditor
 * @version 1.0.0
 * @author esclkm
 * @copyright 
 * @license BSD
 *  */
// Generated by Cotonti developer tool (littledev.ru)
defined('COT_CODE') or die('Wrong URL.');

$t->assign(array(
	"EDIT_MODE" => cot_url_modify('action=edit'),
	"FORM" => cot_url_modify('action=update')
));
cot_display_messages($t);