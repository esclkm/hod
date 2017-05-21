<?php
defined('COT_CODE') or die('Wrong URL');

global $db_structure;

if ($db->query("SHOW COLUMNS FROM $db_structure WHERE Field = 'structure_text'")->rowCount() == 0)
{
	$db->query("ALTER TABLE $db_structure ADD structure_text TEXT");
}
if ($db->query("SHOW COLUMNS FROM $db_structure WHERE Field = 'structure_text_after'")->rowCount() == 0)
{
	$db->query("ALTER TABLE $db_structure ADD structure_text_after TEXT");
}	
cot_extrafield_add($db_structure, 'avatar', 'input', $R['input_text'], '', '', false, 'HTML', 'Avatar');
