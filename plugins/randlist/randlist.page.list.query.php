<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=page.list.query
 * [END_COT_EXT]
 */
 
/**
 * plugin randlist for Cotonti Siena
 * 
 * @package randlist
 * @version 1.0.0
 * @author esclkm
 * @copyright 
 * @license BSD
 *  */
// Generated by Cotonti developer tool (littledev.ru)
defined('COT_CODE') or die('Wrong URL.');
$par = cot_structure_parents('page', $c);
if(in_array('girls', $par))
{
	$orderby = 'RAND()';
}


?>