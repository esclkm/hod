<?php

/*
 * [BEGIN_COT_EXT]
 * Hooks=admin.structure.resync.done
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');
if ($module == 'page')
{
	require_once cot_incfile('extrafields');
	require_once cot_incfile('catdesc', 'plug');
	global $catd_set, $structure;

	$sql = $db->query("SELECT structure_code, structure_avatar FROM $db_structure WHERE structure_area='".$db->prep($n)."'");
	foreach ($sql->fetchAll() as $row)
	{
		$filename = $catd_set['path'].$row['structure_avatar'];
		if (file_exists($filename))
		{
			foreach ($catd_set['thumbs'] as $key => $val)
			{
				$newfilename = $catd_set['path'].$key.$row['structure_avatar'];
				if (!file_exists($newfilename))
				{
					cot_thumb($filename, $newfilename, $val['x'], $val['y'], $val['set']);
				}
			}
		}
	}
	$sql->closeCursor();


}

?>