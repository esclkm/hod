<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=header.tags
 * [END_COT_EXT]
 */
/**
 * pagecattree Plugin for Cotonti CMF
 *
 * @version 2.0.0
 * @author esclkm, http://www.littledev.ru
 * @copyright (c) 2008-2011 esclkm, http://www.littledev.ru
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('page', 'module');

if (!function_exists(cot_build_catstree))
{

	function cot_build_catstreebio($parent, $selected = array(), $level = 0, $template = '')
	{
		global $structure, $cfg, $db_pages, $db, $sys;

		$t1 = new XTemplate(cot_tplfile(array('pagecattreebio', $template), 'plug'));
		$children = cot_structure_children('page', $parent, false, false);
		if (count($children) == 0)
		{
			return false;
		}
		if(!is_array($selected))
		{
			$selected = array($selected);
		}
		$jj = 0;
		foreach ($children as $row)
		{
			$jj++;
			$has_children = count(cot_structure_children('page', $row, false, false));

			$t1->assign(array(
				"ROW_TITLE" => htmlspecialchars($structure['page'][$row]['title']),
				"ROW_DESC" => $structure['page'][$row]['desc'],
				"ROW_ICON" => $structure['page'][$row]['icon'],
				"ROW_HREF" => cot_url('page', 'c=' . $row),
				"ROW_SELECTED" => in_array($row, $selected) ? 1 : 0,
				"ROW_SUBCAT" => cot_build_catstreebio($row, $selected, $level + 1, $template),
				"ROW_HASCHILD" => $has_children,
				'ROW_COUNT' => $structure['page'][$row]['count'],
				"ROW_LEVEL" => $level,
				"ROW_ODDEVEN" => cot_build_oddeven($jj),
				"ROW_JJ" => $jj
			));

			$t1->parse("MAIN.CATS");
		}

		if ($jj == 0)
		{
			return false;
		}
		$t1->parse("MAIN");
		return $t1->text("MAIN");
	}
	
	function buildtree_from_2ndparent($parent, $template = '')
	{
		$code = cot_structure_parents('page', $parent);
		if(empty($code[1]))
		{
			return cot_build_catstreebio($code[0], array($parent), 0, $template);
		}
		return cot_build_catstreebio($code[1], array($parent), 0, $template);
	}
	function buildtree_from_1ndparent($parent, $template = '')
	{
		$code = cot_structure_parents('page', $parent);
		return cot_build_catstreebio($code[0], array($parent), 0, $template);
	}
}