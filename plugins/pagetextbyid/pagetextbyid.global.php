<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=global
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('page', 'module');

/**
 * Returns parsed page_text for a given page
 * @param int $id Page ID
 * @return string
 */
function pagetextbyid($id, $field = 'text', $id_alias = 'auto')
{
	switch ($id_alias)
	{
		case 'auto':
			$idwhere = ((int)$id > 0) ? 'id' : 'alias';
			break;
		case 'alias':
			$idwhere = 'alias';
			break;
		default:
			$idwhere = 'id';
			break;
	}
	$id = ($idwhere == 'id') ? (int)$id : $id;
	
	global $db, $db_pages, $cfg;
	$res = $db->query("SELECT page_$field, page_parser FROM $db_pages WHERE page_$idwhere = ?", array($id));
	if ($res->rowCount() > 0)
	{
		$row = $res->fetch();
		return ($field == 'text') ? cot_parse($row['page_text'], $cfg['page']['markup'], $row['page_parser']) : $row['page_'.$field];
	}
	else
	{
		return '';
	}
}

function pagefullbyid($id, $tpl  = '', $id_alias = 'auto')
{
	switch ($id_alias)
	{
		case 'auto':
			$idwhere = ((int)$id > 0) ? 'id' : 'alias';
			break;
		case 'alias':
			$idwhere = 'alias';
			break;
		default:
			$idwhere = 'id';
			break;
	}
	$id = ($idwhere == 'id') ? (int)$id : $id;
	
	global $db, $db_pages, $cfg, $db_users;
	$res = $db->query("SELECT p.*, u.*
		FROM $db_pages AS p
		LEFT JOIN $db_users AS u ON u.user_id=p.page_ownerid
		WHERE  page_$idwhere = ? LIMIT 1", array($id));
	if ($res->rowCount() > 0)
	{
		$tpl = empty($tpl) ? $id : $tpl;
		$t = new XTemplate(cot_tplfile("pagetextbyid." . $tpl, 'plug'));
		$row = $res->fetch();
		$t->assign(cot_generate_pagetags($row, 'PAGE_'));
		$t->assign(cot_generate_usertags($row, 'PAGE_OWNER_'));
		$t->parse('MAIN');
		return $t->text('MAIN');
	}
	else
	{
		return '';
	}
}
?>
