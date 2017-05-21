<?php

defined('COT_CODE') or die('Wrong URL');
require_once cot_incfile('page', 'module');
global $R, $L, $db_pages;
// Extrafields setup

cot_extrafield_remove($db_pages, 'landingextrapage');
