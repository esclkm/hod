<?php

/* ====================
 * [BEGIN_COT_EXT]
 * Code=sitemap
 * Hooks=footer.tags
 * Tags=
 * Order=10
 * [END_COT_EXT]

==================== */

/**
 * Sitemap Plugin for Cotonti CMF
 *
 * @version 1.00
 * @author esclkm, http://www.littledev.ru
 * @copyright (c) 2010 esclkm, http://www.littledev.ru
 */

defined('COT_CODE') or die('Wrong URL.');

$t->assign(array(
    'FOOTER_ADVERT_PLACEMENT_URL'   => cot_url('page', 'al=about'),
    'FOOTER_SITEMAP_URL'            => cot_url('plug', 'e=sitemap')
));

?>
