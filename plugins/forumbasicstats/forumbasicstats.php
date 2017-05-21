<?php

/* ====================
Seditio - Website engine
Copyright Neocrome
http://www.neocrome.net

[BEGIN_COT_EXT]
 * Code=forumbasicstats
 * Hooks=forums.sections.tags
 * Tags=forums.sections.tpl:{FORUMS_BASICSTATS}
 * Order=10
[END_COT_EXT]

============ */

$evil_p = cot_import('forumbasicstats','P','HTM');
$evil_g = cot_import('forumbasicstats','G','HTM');

if ( !defined('COT_CODE') || !defined('COT_FORUMS') ) { die("Wrong URL."); }

require ('plugins/forumbasicstats/lang/forumbasicstats.'.$usr['lang'].'.lang.php');

$cfg_days = $cfg['plugin']['forumbasicstats']['config_days'];

if (!$forumbasicstats || $evil_g!='' || $evil_p!='' )
{
        $timeback = $sys['now_offset'] - ($cfg_days * 86400);
        $weekback1 =          $sys['now_offset'] - (604800);
        $weekback2 =          $sys['now_offset'] - (1209600);
        $totaltopics = $db->query("SELECT COUNT(*) FROM $db_forum_topics")->fetchColumn();
        $totalposts = $db->query("SELECT COUNT(*) FROM $db_forum_posts")->fetchColumn();
		$totalusers = $db->query("SELECT COUNT(*) FROM $db_users")->fetchColumn();

        $sqltmp = $db->query("SELECT stat_value FROM $db_stats where stat_name='maxusers' LIMIT 1");
        $row = $sqltmp->fetch();
        $maxusers = $row['stat_value'];
        $sqltmp = $db->query("SELECT user_name,user_id FROM $db_users WHERE user_maingrp!=2 ORDER by user_regdate DESC LIMIT 1");
        $row=$sqltmp->fetch();
        $latestuser = cot_build_user($row["user_id"], stripslashes($row["user_name"]));
        $sqltmp = $db->query("SELECT COUNT(*) FROM $db_users WHERE user_regdate>'$timeback' ");
        $recentreg = $sqltmp->fetchColumn();
        $sqltmp = $db->query("SELECT COUNT(*) FROM $db_forum_posts WHERE fp_updated>'$timeback' ");
        $recentposts = $sqltmp->fetchColumn();
        $sqltmp = $db->query("SELECT COUNT(*) FROM $db_forum_posts WHERE fp_updated>'$weekback1' ");
        $postslastweek = $sqltmp->fetchColumn();
        $sqltmp = $db->query("SELECT COUNT(*) FROM $db_forum_posts WHERE fp_updated>'$weekback2' AND fp_updated<'$weekback1'");
        $postsweekbefore = $sqltmp->fetchColumn();
    if (!$postsweekbefore==0)
    {
        $weeklyactivity = floor( 100 * ($postslastweek - $postsweekbefore) / $postsweekbefore);
        $weeklyactivity = ($weeklyactivity>0) ? "+".$weeklyactivity : $weeklyactivity;
	}
    else
    {
        $weeklyactivity ="+oo";
    }
        $forumbasicstats = "".$L['fbs_our']." <a href=\"users.php\"><strong>".$totalusers."</strong> ".$L['fbs_members']."</a> ".$L['fbs_totalpostsmade']." <strong>".$totalposts."</strong> ".$L['fbs_postsin']." <strong>".$totaltopics."</strong> ".$L['fbs_topics'].".<br />";
        $forumbasicstats .= "".$L['fbs_duration']." ".$cfg_days." дня,".$L['fbs_newposts']."<strong>".$recentposts."</strong>";
        $forumbasicstats .= "".$L['fbs_totalnewmembers']." <strong>".$recentreg."</strong>.<br />";
        $forumbasicstats .= "".$L['fbs_varactivity'].": <strong>".$weeklyactivity."%</strong>.<br />";
        $forumbasicstats .= "".$L['fbs_newestmember']." ".$latestuser.".<br />";
        $forumbasicstats .= "".$L['fbs_mostonline'].": <strong>".$maxusers."</strong>.";
        $cache && $cache->db->store('forumbasicstats',$forumbasicstats, COT_DEFAULT_REALM,120);
}

$t-> assign(array(
        "FORUMS_BASICSTATS" => $forumbasicstats
        ));

?>