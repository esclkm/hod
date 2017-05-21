<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=header.tags
 * [END_COT_EXT]
 */
 
/**
 * Interkassa billing Plugin
 *
 * @package ikassabilling
 * @version 1.0
 * @author Yusupov, esclkm
 * @copyright (c) CMSWorks Team 2013
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('landingstructure', 'plug');
$lstr = new landing();
$LANDING_MENU = $lstr->generate_nav();
$LANDING_CONTENT = $lstr->generate_slides();	

//cot_print($LANDING_MENU, $LANDING_CONTENT);
?>