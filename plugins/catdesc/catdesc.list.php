<?php

/*
 * [BEGIN_COT_EXT]
 * Hooks=page.list.tags
 * Tags=page.list.tpl:{LIST_TEXT},{LIST_TEXTEDIT}
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');
require_once(cot_langfile('catdesc'));

$catd_res = $db->query("SELECT structure_text, structure_text_after FROM $db_structure WHERE structure_code = '$c' AND structure_area='page'");

if ($catd = $catd_res->fetch())
{
	$t->assign(array(
		'LIST_TEXT' => cot_parse($catd['structure_text'], true),
		'LIST_TEXT_AFTER' => $catd['structure_text_after'],
		'LIST_TEXTEDIT' => cot_auth('page', $c, 'A') ? '<a href="'.cot_url('plug', 'e=catdesc&c='.$c).'">'.$L['catdesc_edit'].'</a>' : '',
		'LIST_TEXTEDIT_URL' => cot_auth('page', $c, 'A') ? cot_url('plug', 'e=catdesc&c='.$c) : ''
	));
}

