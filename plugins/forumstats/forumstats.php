<?php
/* ====================
[BEGIN_COT_EXT]
 * Code=forumstats
 * Hooks=standalone
 * Tags=
 * Order=10
[END_COT_EXT]
==================== */

/**
 * Statistics for the forums
 *
 * @package Cotonti
 * @version 0.0.3
 * @author Neocrome, Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2009
 * @license BSD
 */

defined('COT_CODE') && defined('COT_PLUG') or die('Wrong URL');
require_once cot_incfile('forums', 'module');

$plugin_title = $L['plu_title'];

$totaltopics = $db->query("SELECT COUNT(*) FROM $db_forum_topics")->fetchColumn();
$totalposts = $db->query("SELECT COUNT(*) FROM $db_forum_posts")->fetchColumn();
$totalusers = $db->query("SELECT COUNT(*) FROM $db_users")->fetchColumn();

$totalsections = count($structure['forums']);


$sql = $db->query("SELECT SUM(fs_viewcount) FROM $db_forum_stats");
$totalviews = $sql->fetchColumn();


$sql = $db->query("SELECT t.* FROM $db_forum_topics t WHERE 1 ORDER BY ft_postcount DESC LIMIT 10");

$ii=0;

while($row = $sql->fetch())
{
	if(cot_auth('forums', $row['ft_cat'], 'R'))
	{
		$ii++;
		$ft_title = $row['ft_title'];
		$ft_title .= ($row['ft_sticky']) ? " (*)" : '';
		$ft_title .= ($row['ft_state']) ? " (x)" : '';
		$t -> assign(array(
			'FORUMSTATS_REPLIEDTOP_II' => $ii,
			'FORUMSTATS_REPLIEDTOP_FORUMS' => cot_breadcrumbs(cot_forums_buildpath($row['ft_cat'], false), false),
			'FORUMSTATS_REPLIEDTOP_URL' => cot_url('forums', 'm=posts&q='.$row['ft_id']),
			'FORUMSTATS_REPLIEDTOP_TITLE' => htmlspecialchars($ft_title),
			'FORUMSTATS_REPLIEDTOP_POSTCOUNT' => $row['ft_postcount']
		));
		$t -> parse('MAIN.FORUMSTATS_REPLIEDTOP_USER');
	}
	else
	{
		$ii++;
		$t -> assign(array(
			'FORUMSTATS_REPLIEDTOP_II' => $ii,
			'FORUMSTATS_REPLIEDTOP_FORUMS' => cot_breadcrumbs(cot_forums_buildpath($row['ft_cat'], false), false),
			'FORUMSTATS_REPLIEDTOP_POSTCOUNT' => $row['ft_postcount']
		));
		$t -> parse('MAIN.FORUMSTATS_REPLIEDTOP_NO_USER');
	}
}

$sql = $db->query("SELECT * FROM $db_forum_topics WHERE 1 ORDER BY ft_viewcount DESC LIMIT 10");

$ii=0;

while($row = $sql->fetch())
{
	if(cot_auth('forums', $row['ft_cat'], 'R'))
	{
		$ii++;
		$ft_title = $row['ft_title'];
		$ft_title .= ($row['ft_sticky'] && $row['ft_state']) ? " (!)" : '';
		$ft_title .= ($row['ft_sticky'] && !$row['ft_state']) ? " (*)" : '';
		$ft_title .= ($row['ft_state'] && !$row['ft_sticky']) ? " (x)" : '';
		$t -> assign(array(
			'FORUMSTATS_VIEWEDTOP_II' => $ii,
			'FORUMSTATS_VIEWEDTOP_FORUMS' => cot_breadcrumbs(cot_forums_buildpath($row['ft_cat'], false), false),
			'FORUMSTATS_VIEWEDTOP_URL' => cot_url('forums', 'm=posts&q='.$row['ft_id']),
			'FORUMSTATS_VIEWEDTOP_TITLE' => htmlspecialchars($ft_title),
			'FORUMSTATS_VIEWEDTOP_VIEWCOUNT' => $row['ft_viewcount']
		));
		$t -> parse('MAIN.FORUMSTATS_VIEWEDTOP_USER');
	}
	else
	{
		$ii++;
		$t -> assign(array(
			'FORUMSTATS_VIEWEDTOP_II' => $ii,
			'FORUMSTATS_VIEWEDTOP_FORUMS' => cot_breadcrumbs(cot_forums_buildpath($row['ft_cat'], false), false),
			'FORUMSTATS_VIEWEDTOP_VIEWCOUNT' => $row['ft_viewcount']
		));
		$t -> parse('MAIN.FORUMSTATS_VIEWEDTOP_NO_USER');
	}
}

$ii=0;
$tmpstats = '';
$sql = $db->query("SELECT user_id, user_name, user_postcount
FROM $db_users
WHERE 1 ORDER by user_postcount DESC
LIMIT 10");

while($row = $sql->fetch())
{
	$ii++;
	$t -> assign(array(
		'FORUMSTATS_POSTERSTOP_II' => $ii,
		'FORUMSTATS_POSTERSTOP_USER_NAME' => cot_build_user($row['user_id'], htmlspecialchars($row['user_name'])),
		'FORUMSTATS_POSTERSTOP_USER_POSTCOUNT' => $row["user_postcount"]
	));
	$t -> parse('MAIN.POSTERSTOP');
}

$t -> assign(array(
	'FORUMSTATS_TOTALSECTIONS' => $totalsections,
	'FORUMSTATS_TOTALTOPICS' => $totaltopics,
	'FORUMSTATS_TOTALPOSTS' => $totalposts,
	'FORUMSTATS_TOTALVIEWS' => $totalviews,
));

?>