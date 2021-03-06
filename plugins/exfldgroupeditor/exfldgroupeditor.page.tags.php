<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=page.tags
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

$tex = new XTemplate(cot_tplfile(array('exfldgroupeditor','page', $pag['page_cat']) , 'plug'));

$extrafields = cot_exfld_cat_get($pag['page_cat']);

foreach ($extrafields as $ex)
{
	if(($ex['ex_page']))
	{
		if(empty($ex['ex_field']))
		{
			$tex->assign(array(
				'NUM' => $ex['ex_num'],
				'EXTRAFLD' => '',
				'EXTRAFLD_TITLE' => $ex['ex_desc'],
				'EXTRAFLD_TYPE' => 'separator',
				'EXTRAFLD_VALUE' => ''
			));		
		}
		else
		{
			$exfld = $cot_extrafields[$db_pages][$ex['ex_field']];
			$exfld_val =  cot_build_extrafields_data('page', $exfld, $pag['page_'.$exfld['field_name']], $pag['page_parser']);
			if (!empty($ex['ex_desc']))
			{
				$exfld_title = $ex['ex_desc'];
			}
			else
			{
				$exfld_title = isset($L['page_'.$exfld['field_name'].'_title']) ?  $L['page_'.$exfld['field_name'].'_title'] : $exfld['field_description'];
			}

			$tex->assign(array(
				'NUM' => $ex['ex_num'],
				'EXTRAFLD' => $exfld_val,
				'EXTRAFLD_TITLE' => $exfld_title,
				'EXTRAFLD_TYPE' => $exfld['field_type'],
				'EXTRAFLD_VALUE' => $pag['page_'.$exfld['field_name']]	
			));
		}
		$tex->parse('MAIN.EXTRAFLD');
	}
}

$tex->parse('MAIN');
$t->assign("PAGE_EXFLDGROUPEDITOR", $tex->text('MAIN'));