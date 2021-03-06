<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=page.list.first
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

$action = cot_import('action', 'G', 'TXT');


list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('page', 'any');

$action && cot_block($usr['isadmin']);

$parser_list = cot_get_parsers();

if ($action == 'edit')
{
	$cfg['page']['cat___default']['maxrowsperpage'] = 1000;
	$cfg['page']['cat_' . $c]['maxrowsperpage'] = 1000;
	unset($_GET['d']);
	cot_rc_link_file($cfg['plugins_dir']."/pagelisteditor/lib/sortable/Sortable.min.js");
	cot_rc_link_file($cfg['plugins_dir']."/pagelisteditor/lib/sortable/jquery.binding.js");
}
if ($action == 'delete')
{
	$sql_page_delete = $db->query("SELECT * FROM $db_pages WHERE page_id=$id LIMIT 1");

	if ($row_page_delete = $sql_page_delete->fetch())
	{
		if ($row_page_delete['page_state'] == 0)
		{
			$sql_page_delete = $db->query("UPDATE $db_structure SET structure_count=structure_count-1 WHERE structure_code='" . $row_page_delete['page_cat'] . "' ");
		}

		foreach ($cot_extrafields[$db_pages] as $exfld)
		{
			cot_extrafield_unlinkfiles($row_page_delete['page_' . $exfld['field_name']], $exfld);
		}

		$sql_page_delete = $db->delete($db_pages, "page_id=$id");
		cot_log("Deleted page #" . $id, 'adm');
		/* === Hook === */
		foreach (cot_getextplugins('page.edit.delete.done') as $pl)
		{
			include $pl;
		}
		/* ===== */
		if ($cache)
		{
			if ($cfg['cache_page'])
			{
				$cache->page->clear('page/' . str_replace('.', '/', $structure['page'][$row_page_delete['page_cat']]['path']));
			}
			if ($cfg['cache_index'])
			{
				$cache->page->clear('index');
			}
		}
	}
	cot_redirect(cot_url('page', "c=$c", '', true));
}
if ($action == 'update')
{
	$rpage_keywords = cot_import('rpagekeywords', 'P', 'ARR');
	$rpage_alias = cot_import('rpagealias', 'P', 'ARR');
	$rpage_title = cot_import('rpagetitle', 'P', 'ARR');
	$rpage_desc = cot_import('rpagedesc', 'P', 'ARR');
	$rpage_text = cot_import('rpagetext', 'P', 'ARR');
	$rpage_parser = cot_import('rpageparser', 'P', 'ARR');
	$rpage_author = cot_import('rpageauthor', 'P', 'ARR');
	$rpage_file = cot_import('rpagefile', 'P', 'ARR');
	$rpage_url = cot_import('rpageurl', 'P', 'ARR');
	$rpage_size = cot_import('rpagesize', 'P', 'ARR');
	$rpage_cat = cot_import('rpagecat', 'P', 'ARR');
	$rpagedatenow = cot_import('rpagedatenow', 'P', 'ARR');
	$rpage_date = cot_import('rpagedatenow', 'P', 'ARR');
	$rpage_begin = (int)cot_import('rpagebegin', 'P', 'ARR');
	$rpage_expire = (int)cot_import('rpageexpire', 'P', 'ARR');
	$rpublish = cot_import('rpublish', 'P', 'ARR'); // For backwards compatibility
	$rpage_state = cot_import('rpagestate', 'P', 'ARR');
	$rpage_count = cot_import('rpagecount', 'P', 'ARR');
	$rpage_ownerid = cot_import('rpageownerid', 'P', 'ARR');
	$rpage_filecount = cot_import('rpagefilecount', 'P', 'ARR');
	$rpage_state = cot_import('rpagestate', 'P', 'ARR');
	$rpage_delete = cot_import('rpagedelete', 'P', 'ARR');
	// Extra fields
	foreach ($cot_extrafields[$db_pages] as $exfld)
	{
		if ($exfld['field_type'] != 'file' || $exfld['field_type'] != 'filesize')
		{
			$rpage_extrafieldsarr[$exfld['field_name']] = cot_import('rpage' . $exfld['field_name'], 'P', 'ARR');
		}
		elseif ($exfld['field_type'] == 'file')
		{
			// TODO FIXME!
			//$rstructureextrafieldsarr[$exfld['field_name']] = cot_import_filesarray('rstructure'.$exfld['field_name']);
		}
	}
	if (is_array($rpage_title))
	{

		foreach ($rpage_title as $id => $titlev)
		{
			$rpagedelete = cot_import($rpage_delete[$id], 'D', 'BOL') ? 1 : 0;
			$sql_page = $db->query("SELECT * FROM $db_pages WHERE page_id=$id LIMIT 1");
			if ($sql_page->rowCount() > 0)
			{

				$row_page = $sql_page->fetch();
				if($rpagedelete)
				{
					$row_page_delete = $row_page;
					if ($row_page['page_state'] == 0)
					{
						$sql_page_delete = $db->query("UPDATE $db_structure SET structure_count=structure_count-1 WHERE structure_code='" . $row_page['page_cat'] . "' ");
					}

					foreach ($cot_extrafields[$db_pages] as $exfld)
					{
						cot_extrafield_unlinkfiles($row_page['page_' . $exfld['field_name']], $exfld);
					}

					$sql_page_delete = $db->delete($db_pages, "page_id=$id");
					cot_log("Deleted page #" . $id, 'adm');
					/* === Hook === */
					foreach (cot_getextplugins('page.edit.delete.done') as $pl)
					{
						include $pl;
					}
					/* ===== */
					if ($cache)
					{
						if ($cfg['cache_page'])
						{
							$cache->page->clear('page/' . str_replace('.', '/', $structure['page'][$row_page['page_cat']]['path']));
						}
						if ($cfg['cache_index'])
						{
							$cache->page->clear('index');
						}
					}
				}
				else
				{
					$rpage = array();
					$sys['parser'] = $row_page['page_parser'];

					$rpage['page_keywords'] = cot_import($rpage_keywords[$id], 'D', 'TXT');
					$rpage['page_alias'] = cot_import($rpage_alias[$id], 'D', 'TXT');
					$rpage['page_title'] = cot_import($rpage_title[$id], 'D', 'TXT');
					$rpage['page_desc'] = cot_import($rpage_desc[$id], 'D', 'TXT');
					$rpage['page_text'] = cot_import($rpage_text[$id], 'D', 'HTM');
					$rpage['page_parser'] = cot_import($rpage_parser[$id], 'D', 'ALP');
					$rpage['page_author'] = cot_import($rpage_author[$id], 'D', 'TXT');
					$rpage['page_file'] = cot_import($rpage_file[$id], 'D', 'INT');
					$rpage['page_url'] = cot_import($rpage_url[$id], 'D', 'TXT');
					$rpage['page_size'] = cot_import($rpage_size[$id], 'D', 'TXT');
					$rpage['page_file'] = ($rpage['page_file'] == 0 && !empty($rpage['page_url'])) ? 1 : $rpage['page_file'];

					$rpage['page_cat'] = cot_import($rpage_cat[$id], 'D', 'TXT');

					$rpagedatenow = cot_import($rpage_datenow[$id], 'D', 'BOL');
					$rpage['page_date'] = $rpagedatenow ? $sys['now'] : (int)cot_import_date($rpage_date[$id]);
					$rpage['page_begin'] = (int)cot_import_date($rpage_begin[$id]);
					$rpage['page_expire'] = (int)cot_import_date($rpage_expire[$id]);
					$rpage['page_expire'] = ($rpage['page_expire'] <= $rpage['page_begin']) ? 0 : $rpage['page_expire'];
					$rpage['page_updated'] = $sys['now'];
					$rpage['page_state'] = cot_import($rpage_state[$id], 'D', 'INT');

					foreach ($cot_extrafields[$db_pages] as $exfld)
					{
						$rpage['page_' . $exfld['field_name']] = cot_import_extrafields($rpage_extrafieldsarr[$exfld['field_name']][$id], $exfld, 'D', $row_page['page_' . $exfld['field_name']]);
					}
					$rpage['page_count'] = cot_import($rpage_count[$id], 'D', 'INT');
					$rpage['page_ownerid'] = cot_import($rpage_ownerid[$id], 'D', 'INT');
					$rpage['page_filecount'] = cot_import($rpage_filecount[$id], 'D', 'INT');

					if (!empty($rpage['page_alias']))
					{
						$sql_page_update = $db->query("SELECT page_id FROM $db_pages WHERE page_alias='" . $db->prep($rpage['page_alias']) . "' AND page_id!=$id");
						$rpage['page_alias'] = ($sql_page_update->rowCount() > 0) ? $rpage['page_alias'] . rand(1000, 9999) : $rpage['page_alias'];
					}

					$sql_page_update = $db->query("SELECT page_cat, page_state FROM $db_pages WHERE page_id=$id");
					$row_page_update = $sql_page_update->fetch();

					if ($row_page_update['page_cat'] != $rpage['page_cat'] && $row_page_update['page_state'] == 0)
					{
						$sql_page_update = $db->query("UPDATE $db_structure SET structure_count=structure_count-1 WHERE structure_code='" . $db->prep($row_page_update['page_cat']) . "' AND structure_area = 'page'");
					}

					if ($rpage['page_state'] != 0 && $row_page_update['page_state'] == 0)
					{
						$db->query("UPDATE $db_structure SET structure_count=structure_count-1 WHERE structure_code='" . $db->prep($rpage['page_cat']) . "' ");
					}
					$sql_page_update = $db->update($db_pages, $rpage, 'page_id=?', array($id));
					cot_extrafield_movefiles();

					if ($rpage['page_state'] == 0 && $cache)
					{
						if ($cfg['cache_page'])
						{
							$cache->page->clear('page/' . str_replace('.', '/', $structure['page'][$rpage['page_cat']]['path']));
						}
						if ($cfg['cache_index'])
						{
							$cache->page->clear('index');
						}
					}

					cot_log("Edited page #" . $id, 'adm');
				}
			}
		}
	}
	cot_redirect(cot_url_modify("action=0", '', true));
}