<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=ajax
 * [END_COT_EXT]
 */
/**
 * Excel Page Importer / Exporter plugin
 *
 * @package excelpagemanager
 * @version 2.0.0
 * @author esclkm
 * @copyright Copyright (c) esclkm 2008-2013
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

$action = cot_import('action', 'R', 'TXT');
require_once cot_langfile('excelpagemanager', 'plug');
require_once cot_incfile('page', 'module');
require_once cot_incfile('excelpagemanager', 'plug');
require_once cot_incfile('excelpagemanager', 'plug', 'config');





if ($a == 'export')
{
	require_once cot_incfile('excelpagemanager', 'plug', 'exporting');

}

	