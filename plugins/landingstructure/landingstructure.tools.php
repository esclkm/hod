<?php

/* ====================
  [BEGIN_COT_EXT]
  Hooks=tools
  [END_COT_EXT]
  ==================== */

/**
 * news admin usability modification
 *
 * @package news
 * @version 0.7.0
 * @author Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2012
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

$ref = new ReflectionFunction('pp_list');
/** /
$functionParameters = array();
foreach($ref->getParameters() as $key => $currentParameter) 
{
   // cot_print($currentParameter);
    //$functionParameters[$currentParameter->getName()] = $currentParameter->getDefaultValue();
    $functionParameters[$currentParameter->getName()] = $currentParameter-isDefaultValueAvailable();
    
}
cot_print($functionParameters);
/**/

// Mode choice
if (!in_array($n, array('edit')))
{
	$n = 'list';
}
$adminhelp = $L['lstr_help'];
require_once cot_incfile('landingstructure', 'plug');
require_once cot_incfile('landingstructure', 'plug', 'tools.'.$n);