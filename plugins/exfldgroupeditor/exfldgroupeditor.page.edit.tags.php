<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=page.edit.tags,page.add.tags
 * [END_COT_EXT]
 */
 
/**
 * plugin Exfld Group Editor for Cotonti Siena
 * 
 * @package Exfld Group Editor
 * @version 1.0.0
 * @author esclkm
 * @copyright esclkm
 * @license BSD
 *  */
// Generated by Cotonti developer tool (littledev.ru)
defined('COT_CODE') or die('Wrong URL.');

require_once cot_langfile('exfldgroupeditor', 'plug');
require_once cot_incfile('exfldgroupeditor', 'plug');
global $exfldcat_list;
if ((int) $id > 0)
{
	$code = $id;
	$category = $pag['page_cat'];
	$mavpr = 'EDIT';
}
else
{
	$code = 'new';
	$category = $rpage['page_cat'];
	$mavpr = 'ADD';
}

$tex = new XTemplate(cot_tplfile(array('exfldgroupeditor','page', mb_strtolower($mavpr), $category) , 'plug'));

$extrafields = cot_exfld_cat_get($category);

foreach ($extrafields as $ex)
{
	if(($ex['ex_add'] && $mavpr == 'ADD') || ($ex['ex_edit'] && $mavpr == 'EDIT'))
	{
		if(empty($ex['ex_field']))
		{
			$tex->assign(array(
				'FORM_NUM' => $ex['ex_num'],
				'FORM_EXTRAFLD' => '',
				'FORM_EXTRAFLD_TITLE' => $ex['ex_desc'],
				'FORM_EXTRAFLD_TYPE' => 'separator',
			));		
		}
		else
		{
			$exfld = $cot_extrafields[$db_pages][$ex['ex_field']];
			$arpag = ($mavpr == 'EDIT') ? $pag : $rpage;
			$exfld_val = cot_build_extrafields('rpage'.$exfld['field_name'], $exfld, $arpag['page_'.$exfld['field_name']]);
			if (!empty($ex['ex_desc']))
			{
				$exfld_title = $ex['ex_desc'];
			}
			else
			{
				$exfld_title = isset($L['page_'.$exfld['field_name'].'_title']) ?  $L['page_'.$exfld['field_name'].'_title'] : $exfld['field_description'];
			}

			$tex->assign(array(
				'FORM_NUM' => $ex['ex_num'],
				'FORM_EXTRAFLD' => $exfld_val,
				'FORM_EXTRAFLD_TITLE' => $exfld_title,
				'FORM_EXTRAFLD_TYPE' => $exfld['field_type'],
			));			
		}
		$tex->parse('MAIN.EXTRAFLD');
	}
}

$tex->parse('MAIN');

$t->assign("PAGE".$mavpr."_EXFLDGROUPEDITOR", $tex->text('MAIN'));
