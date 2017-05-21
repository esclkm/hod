<?php

defined('COT_CODE') or die('Wrong URL');
require_once cot_incfile('page', 'module');
global $R, $L, $db_pages;
// Extrafields setup

cot_extrafield_add($db_pages, 'landingextrapage', 'textarea', $R['input_text'], '', '', 0, 'HTML', 'Landing Extra Page');
