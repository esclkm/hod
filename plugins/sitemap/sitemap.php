<?php

/* ====================
 * [BEGIN_COT_EXT]
 * Hooks=standalone
 * [END_COT_EXT]

  ==================== */

/**
 * Sitemap Plugin for Cotonti CMF
 *
 * @version 1.00
 * @author esclkm, http://www.littledev.ru
 * @copyright (с) 2010 esclkm, http://www.littledev.ru
 */
defined('COT_CODE') or die('Wrong URL.');
require_once(cot_langfile('sitemap'));

$out['subtitle'] = 'Карта сайта';
if ($cfg['plugin']['sitemap']['showcats'])
{
	$catsarray = array();
	$array_notinclude = explode(", ", $cfg['plugin']['sitemap']['ignorecats']);
	foreach ($structure['page'] as $i => $x)
	{
		$parent = mb_substr($structure['page'][$i]['rpath'], 0, mb_strrpos($structure['page'][$i]['rpath'], "."));
		$parent = ($parent == '') ? "GENERAL" : $parent;

		if (!in_array($i, $array_notinclude) && cot_auth('page', $i, 'R'))
		{
			$sql = $db->query("SELECT SUM(structure_count) FROM $db_structure
		WHERE structure_path LIKE '" . $x['rpath'] . "%' ");
			$x['count'] = $sql->fetchColumn();
			if ($x['count'] || $cfg['plugin']['sitemap']['showemptycats'])
				$catsarray[$parent][$i] = $x;
		}
	}

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

	function cot_build_catstree($parent = '')
	{
		$parent = ($parent == '') ? "GENERAL" : $parent;
		global $catsarray, $sysarray;
		if ($parent != "GENERAL")
			$t = new XTemplate(cot_tplfile('sitemap', 'plug'));
		else
			global $t;

		foreach ($catsarray[$parent] as $key => $row)
		{
			$jj++;
			if ($key != 'system' && $key != 'articles')
			{
				$t->assign(array(
					"ROW_TITLE" => $row['title'],
					"ROW_DESC" => $row['desc'],
					"ROW_ICON" => $row['icon'],
					"ROW_PAGECOUNT" => $row['count'],
					"ROW_HREF" => cot_url('page', 'c=' . $key),
					"ROW_SUBCAT" => (isset($catsarray[$row['rpath']])) ? cot_build_catstree($row['rpath']) : "",
					"ROW_ODDEVEN" => cot_build_oddeven($jj),
					"ROW_JJ" => $jj
				));
				$t->parse("MAIN.LIST.CATLIST.CATS");
			}
		}
		$t->parse("MAIN.LIST.CATLIST");

		if ($parent != "GENERAL")
			return $t->text("MAIN.LIST.CATLIST");
		else
			return true;
	}

	cot_build_catstree();

	$t->parse("MAIN.LIST");
}

if ($cfg['plugin']['sitemap']['showforums'])
{
	/*
	$sql = $db->query("SELECT * FROM $db_forum_sections
		ORDER by fs_order ASC");
	unset($array_notinclude);
	$array_notinclude = explode(", ", $cfg['plugin']['sitemap']['ignoreforums']);
	while ($row = $sql->fetch())
	{
		if (cot_auth('forums', $row['fs_id'], 'R') && !in_array($row['fs_id'], $array_notinclude))
		{
			$parent = ($row['fs_masterid'] == 0) ? $row['fs_category'] : $row['fs_masterid'];
			$row1['href'] = cot_url("forums", "m=topics&s=" . $row['fs_id']);
			$row1['desc'] = $row['fs_desc'];
			$row1['title'] = $row['fs_title'];
			$row1['icon '] = $row['fs_icon '];
			$row1['views'] = $row['fs_viewcount'];
			$row1['posts'] = $row['fs_postcount'];
			$row1['topics'] = $row['fs_topiccount'];

			$forumssarray[$parent][$row['fs_id']] = $row1;

			if ($row['fs_masterid'] == 0)
			{
				$forumssarray["GENERAL"][$row['fs_category']]['views'] += $row1['views'];
				$forumssarray["GENERAL"][$row['fs_category']]['posts'] += $row1['posts'];
				$forumssarray["GENERAL"][$row['fs_category']]['topics'] += $row1['topics'];
			}
		}
	}

	$sql = $db->query("SELECT * 	FROM $db_forum_structure
		ORDER by fn_path ASC, fn_code ASC");
	while ($row = $sql->fetch())
	{
		$forumssarray["GENERAL"][$row['fn_code']]['href'] = cot_url("forums", "c=" . $row['fn_code']);
		$forumssarray["GENERAL"][$row['fn_code']]['desc'] = $row['fn_desc'];
		$forumssarray["GENERAL"][$row['fn_code']]['title'] = $row['fn_title'];
		$forumssarray["GENERAL"][$row['fn_code']]['icon '] = $row['fn_icon '];
	}

	function cot_build_forumstree($parent = '')
	{
		$parent = ($parent == '') ? "GENERAL" : $parent;
		global $forumssarray;
		if ($parent != "GENERAL")
			$t = new XTemplate(cot_tplfile('sitemap', 'plug'));
		else
			global $t;

		foreach ($forumssarray[$parent] as $key => $row)
		{
			$jj++;
			$t->assign(array(
				"ROW_TITLE" => htmlspecialchars($row['title']),
				"ROW_DESC" => $row['desc'],
				"ROW_ICON" => $row['icon'],
				"ROW_POSTS" => $row['posts'],
				"ROW_TOPICS" => $row['topics'],
				"ROW_VIEWS" => $row['views'],
				"ROW_HREF" => $row['href'],
				"ROW_SUBCAT" => (isset($forumssarray[$key])) ? cot_build_forumstree($key) : "",
				"ROW_ODDEVEN" => cot_build_oddeven($jj),
				"ROW_JJ" => $jj
			));
			$t->parse("MAIN.FORUMS.CATLIST.CATS");
		}
		$t->parse("MAIN.FORUMS.CATLIST");

		if ($parent != "GENERAL")
			return $t->text("MAIN.FORUMS.CATLIST");
		else
			return true;
	}

	cot_build_forumstree();

	$t->parse("MAIN.FORUMS");
	 * 
	 */
}


$t->assign(array(
	"PLUGIN_TITLE" => '<a href="' . $cfg['mainurl'] . '">' . $L['Home'] . '</a> ' . $cfg['separator'] . ' <a href="' . cot_url('plug', 'e=sitemap') . '">' . $L['plu_title'] . '</a>',
	'APPLICATION_URL' => cot_url('plug', 'e=contactus')
));
?>
