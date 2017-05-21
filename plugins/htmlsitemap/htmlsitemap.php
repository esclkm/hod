<?php

/* ====================
 * [BEGIN_COT_EXT]
 * Hooks=standalone
 * [END_COT_EXT]

  ==================== */

/**
 * HTML Sitemap Plugin for Cotonti CMF
 *
 * @version 1.00
 * @author esclkm, http://www.littledev.ru
 * @copyright (с) 2010 esclkm, http://www.littledev.ru
 */
defined('COT_CODE') or die('Wrong URL.');
require_once(cot_langfile('htmlsitemap'));

function cot_build_catstree($parent = '', $area = 'page', $level = 1)
{
	
	global $sysarray, $db, $db_pages, $sys, $cfg, $structure;

	$path = $area == 'page' ? 'LIST' : 'FORUMS';

	if (empty($parent))
	{
		$array_notinclude = explode(", ", $cfg['plugin']['htmlsitemap']['ignorecats']);
		$children = array();
		foreach ($structure[$area ] as $i => $x)
		{
			if (mb_substr_count($structure[$area][$i]['path'], ".") == 0 && !in_array($i, $array_notinclude))
			{
				$children[] = $i;
			}
		}
	}
	else
	{
		$children = cot_structure_children($area , $parent, false, false);
	}
	
	$parent = ($parent == '') ? "GENERAL" : $parent;
	
	if ($parent != "GENERAL")
		$t = new XTemplate(cot_tplfile('htmlsitemap', 'plug'));
	else
		global $t;
	
	if (count($children) > 0 || $structure[$area][$parent]['count'] > 0)
	{
		if (count($children) > 0)
		{
			foreach ($children as $row)
			{
				$jj++;
				if ($key != 'system' && $key != 'news')
				{
					$t->assign(array(
						"ROW_TITLE" => htmlspecialchars($structure[$area][$row]['title']),
						"ROW_DESC" => $structure[$area][$row]['desc'],
						"ROW_COUNT" => $structure[$area][$row]['count'],
						"ROW_ICON" => $structure[$area][$row]['icon'],
						"ROW_HREF" => cot_url($area, "c=" . $row),
						"ROW_LEVEL" => $level,
						"ROW_FORUMSHREF" => cot_url($area, "m=topics&s=" . $row),
						"ROW_SUBCAT" => cot_build_catstree($row, $area, $level + 1),
						"ROW_ODDEVEN" => cot_build_oddeven($jj),
						"ROW_JJ" => $jj
					));
					$t->parse("MAIN.$path.CATLIST.CATS");
				}
			}
		}
		$key = $parent;
		if ($key !=  "GENERAL" && $area == 'page')
		{
			$sql_p = $db->query("SELECT * FROM $db_pages WHERE (page_state=0 OR page_state=2) AND page_cat <> 'system' AND page_begin <= {$sys['now']} AND (page_expire = 0 OR page_expire > {$sys['now']}) AND page_cat = '" . $key . "' ORDER BY page_title ASC");
			foreach ($sql_p->fetchAll() as $pag)
			{
				$jj++;
				$pag['page_pageurl'] = (empty($pag['page_alias'])) ? cot_url('page', 'c=' . $pag['page_cat'] . '&id=' . $pag['page_id']) : cot_url('page', 'c=' . $pag['page_cat'] . '&al=' . $pag['page_alias']);
				$t->assign(array(
					"ROW_TITLE" => htmlspecialchars($pag['page_title']),
					"ROW_DESC" => htmlspecialchars($pag['page_desc']),
					"ROW_ICON" => "",
					"ROW_HREF" => $pag['page_pageurl'],
					"ROW_SELECTED" => 0,
					"ROW_SUBCAT" => false,
					"ROW_HASCHILD" => false,
					"ROW_LEVEL" => $level,
					"ROW_TYPE" => "page",
					"ROW_CLASS" => '[class_page_' . $pag['page_id'] . ']',
					"ROW_ODDEVEN" => cot_build_oddeven($jj),
					"ROW_JJ" => $jj
				));
				$t->assign(cot_generate_pagetags($pag, 'ROW_PAGE_'));

				$t->parse("MAIN.$path.CATLIST.CATS1");
			}
		}
		
		$t->parse("MAIN.$path.CATLIST");
	
	}
	if ($parent != "GENERAL")
		return $t->text("MAIN.$path.CATLIST");
	else
		return true;
}

if ($cfg['plugin']['htmlsitemap']['showcats'])
{
	$sql = $db->query("SELECT page_id, page_title, page_alias FROM $db_pages WHERE page_cat = 'system' OR page_cat = 'articles' ORDER BY page_title");
	$sysarray = array();
	while ($row = $sql->fetch())
	{
		$t->assign(array(
			"ROW_TITLE" => $row['page_title'],
			"ROW_HREF" => (empty($row['page_alias'])) ? cot_url('page', 'id=' . $row['page_id']) : cot_url('page', 'al=' . $row['page_alias'])
		));
		$t->parse("MAIN.LIST.CATLIST.SYSTEM");
	}
	$t->parse("MAIN.LIST.CATLIST");



	cot_build_catstree();

	$t->parse("MAIN.LIST");
}

if ($cfg['plugin']['htmlsitemap']['showforums'])
{


	cot_build_catstree('', 'forums');

	$t->parse("MAIN.FORUMS");

}

$t->assign(array(
	"PLUGIN_TITLE" => '<a href="' . $cfg['mainurl'] . '">' . $L['Home'] . '</a> ' . $cfg['separator'] . ' <a href="' . cot_url('plug', 'e=htmlsitemap') . '">' . $L['plu_title'] . '</a>',
));
?>
