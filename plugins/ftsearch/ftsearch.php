<?php
/* ====================
Seditio - Website engine
Copyright Neocrome
http://www.neocrome.net

[BEGIN_COT_EXT]
 * Code=ftsearch
 * Hooks=standalone
 * Order=10
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL.');

$d = cot_import('d','G','INT');
$o = cot_import('o','G','ALP');
$w = cot_import('w','G','ALP',4);
$s = cot_import('s','G','INT');

function rev($sway)
        {
        if ($sway=='desc')
{ return ('asc'); }
        else
{ return ('desc'); }
        }

if (empty($o)) { $o = 'updated'; }
if (empty($w)) { $w = 'desc'; }
if (empty($d)) { $d = '0'; }

$cond = ($usr['isadmin']) ? '' : "AND ft_mode=0 OR (ft_mode=1 AND ft_firstposterid=".$usr['id'].")";

switch($a)
{
// ========================
case 'unanswered':
// ========================

        $sql = $db->query("SELECT COUNT(*) FROM $db_forum_topics WHERE ft_postcount=1");
        $totaltopics = $sql->fetchColumn();
        $sql = $db->query("SELECT * FROM $db_forum_topics WHERE ft_postcount=1 $cond ORDER by ft_".$o." ".$w." LIMIT $d, ".$cfg['maxrowsperpage']);
        $cases="&amp;a=unanswered";
        $title= $L['unanswered'];
        $errormessage = $L['error_case_unanswered'];
break;

// ========================
case 'getdaily':
// ========================
        $timeback = $sys['now_offset'] - (86400);
        $sql = $db->query("SELECT COUNT(*) FROM $db_forum_topics WHERE ft_updated >= $timeback");
        $totaltopics = $sql->fetchColumn();
        $sql = $db->query("SELECT * FROM $db_forum_topics WHERE ft_updated >= $timeback $cond ORDER by ft_".$o." ".$w." LIMIT $d, ".$cfg['maxrowsperpage']);
        $cases="&amp;a=getdaily";
        $title= $L['getdaily'];
        $errormessage = $L['error_case_getdaily'];
break;
// ========================
default:
// ========================
if ($usr['id']>0)
        {
        $timeback = $usr['lastvisit'];
        $sql = $db->query("SELECT COUNT(*) FROM $db_forum_topics WHERE ft_updated >= $timeback and ft_lastposterid!=".$usr['id']."");
        $totaltopics = $sql->fetchColumn();
        $sql = $db->query("SELECT * FROM $db_forum_topics WHERE ft_updated >= $timeback $cond ORDER by ft_".$o." ".$w." LIMIT $d, ".$cfg['maxrowsperpage']);
        }
        else
        {
                header("Location: plug.php?e=ftsearch&a=getdaily");
        }
        $cases="";
        $title= $L['ftsearch'];
        $errormessage = $L['error_case_getnew'];
break;

        }
// =========== END OF CASES ============= //

if ($totaltopics > 0) {
        while ($row = $sql->fetch())
                {
     if (cot_auth('forums', $row['ft_cat'], 'R')) {
                $row['ft_icon'] = 'posts';
                $row['ft_postisnew'] = FALSE;
                $row['ft_pages'] = '';
                $ft_num++;

                if ($row['ft_mode']==1)
                {
                $row['ft_title'] = "# ".$row['ft_title'];
                }

                if ($row['ft_movedto']>0)
                {
                $row['ft_url'] = "forums.php?m=posts&amp;q=".$row['ft_movedto'];
                $row['ft_icon'] = "<img src=\"images/icons/default/posts_moved.png\" alt=\"\" />";
                $row['ft_title']= $L['Moved'].": ".$row['ft_title'];
                $row['ft_lastpostername'] = "&nbsp;";
                $row['ft_postcount'] = "&nbsp;";
                $row['ft_replycount'] = "&nbsp;";
                $row['ft_viewcount'] = "&nbsp;";
                $row['ft_lastpostername'] = "&nbsp;";
                $row['ft_lastposturl'] = "<a href=\"forums.php?m=posts&amp;q=".$row['ft_movedto']."&amp;n=last#bottom\"><img src=\"images/icons/default/arrow-follow.png\" alt=\"\" /></a> ".$L['Moved'];
                $row['ft_timago'] = cot_build_timegap($row['ft_updated'],$sys['now_offset']);
                }
                else
                {
                $row['ft_url'] = "forums.php?m=posts&amp;q=".$row['ft_id'];
                $row['ft_lastposturl'] = ($usr['id']>0 && $row['ft_updated'] > $usr['lastvisit']) ? "<a href=\"forums.php?m=posts&amp;q=".$row['ft_id']."&amp;n=unread#unread\"><img src=\"images/icons/default/arrow-unread.png\" alt=\"\" /></a>" : "<a href=\"forums.php?m=posts&amp;q=".$row['ft_id']."&amp;n=last#bottom\"><img src=\"images/icons/default/arrow-follow.png\" alt=\"\" /></a>";
                $row['ft_lastposturl'] .= @date($cfg['formatmonthdayhourmin'], $row['ft_updated'] + $usr['timezone'] * 3600);
                $row['ft_timago'] = cot_build_timegap($row['ft_updated'],$sys['now_offset']);
                $row['ft_replycount'] = $row['ft_postcount'] - 1;

                if ($row['ft_updated']>$usr['lastvisit'] && $usr['id']>0)
                {
                $row['ft_icon'] .= '_new';
                $row['ft_postisnew'] = TRUE;
                }

                if ($row['ft_postcount']>=$cfg['hottopictrigger'] && !$row['ft_state'] && !$row['ft_sticky'])
                { $row['ft_icon'] = ($row['ft_postisnew']) ? 'posts_new_hot' : 'posts_hot'; }
                else
                {
                        if ($row['ft_sticky'])
                        { $row['ft_icon'] .= '_sticky'; }

                        if ($row['ft_state'])
                        { $row['ft_icon'] .= '_locked'; }
                }

                $row['ft_icon'] = '<img src="images/icons/default/'.$row['ft_icon'].'.png" alt="" />';
                $row['ft_lastpostername'] = cot_build_user($row['ft_lastposterid'], htmlspecialchars($row['ft_lastpostername']));
                }

                $row['ft_firstpostername'] = cot_build_user($row['ft_firstposterid'], htmlspecialchars($row['ft_firstpostername']));

                if ($row['ft_poll']>0)
                { $row['ft_title'] = $L['Poll'].": ".$row['ft_title']; }

                if ($row['ft_postcount']>$cfg['maxrowsperpage'])
                {
                $row['ft_maxpages'] = ceil($row['ft_postcount'] / $cfg['maxrowsperpage']);
                $row['ft_pages'] = $L['Pages'].":";

        for ($a = 1; $a <= $row['ft_maxpages']; $a++)
        {
        $row['ft_pages'] .= (is_int($a/5) || $a<10 || $a==$row['ft_maxpages']) ? " <a href=\"".$row['ft_url']."&amp;d=".($a-1) * $cfg['maxrowsperpage']."\">".$a."</a>" : '';
           }
        }

        $t-> assign(array(
        "FTSEARCH_ROW_ID" => $row['ft_id'],
        "FTSEARCH_ROW_STATE" => $row['ft_state'],
        "FTSEARCH_ROW_ICON" => $row['ft_icon'],
        "FTSEARCH_ROW_TITLE" => htmlspecialchars($row['ft_title']),
        "FTSEARCH_ROW_CREATIONDATE" => @date($cfg['formatmonthdayhourmin'], $row['ft_creationdate'] + $usr['timezone'] * 3600),
        "FTSEARCH_ROW_UPDATED" => $row['ft_lastposturl'],
        "FTSEARCH_ROW_TIMEAGO" => $row['ft_timago'],
        "FTSEARCH_ROW_POSTCOUNT" => $row['ft_postcount'],
        "FTSEARCH_ROW_REPLYCOUNT" => $row['ft_replycount'],
        "FTSEARCH_ROW_VIEWCOUNT" => $row['ft_viewcount'],
        "FTSEARCH_ROW_FIRSTPOSTER" => $row['ft_firstpostername'],
        "FTSEARCH_ROW_LASTPOSTER" => $row['ft_lastpostername'],
        "FTSEARCH_ROW_URL" => $row['ft_url'],
        "FTSEARCH_ROW_PAGES" => $row['ft_pages'],
        "FTSEARCH_ROW_MAXPAGES" => $row['ft_maxpages'],
        "FTSEARCH_ROW_ODDEVEN" => cot_build_oddeven($ft_num),
        "FTSEARCH_ROW" => $row,
));

        $t->parse("MAIN.FTSEARCH.TOPICS_ROW");
        }
        }
        if ($d>0)
        {
        $prevpage = $d - $cfg['maxrowsperpage'];
        if ($prevpage<0){$prevpage = 0;}
        $t->assign(        "FTSEARCH_PAGEPREV", "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=$s&amp;d=$prevpage\">".$L['Previous']." $cot_img_left</a>");
        }

        if (($d + $cfg['maxrowsperpage'])<$totaltopics)
        {
        $nextpage = $d + $cfg['maxrowsperpage'];
        $t->assign(        "FTSEARCH_PAGENEXT", "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=$s&amp;d=$nextpage\">$cot_img_right ".$L['Next']."</a>");
        }

        $nbpages = ceil($totaltopics / $cfg['maxrowsperpage']);
        $curpage = $d / $cfg['maxrowsperpage'];

        for ($i = 0; $i < $nbpages; $i++)
        {
        $j = $i * $cfg['maxrowsperpage'];
                if ($i==$curpage)
                { $pages .= "&gt; <a href=\"plug.php?e=ftsearch".$cases."&amp;s=$s&amp;d=".$j."\">".($i+1)."</a> &lt; "; }
                elseif (is_int(($i+1)/5) || $i<10 || $i+1==$nbpages)
                { $pages .= " <a href=\"plug.php?e=ftsearch".$cases."&amp;s=$s&amp;d=".$j."\">".($i+1)."</a> "; }
        }

        $toptitle = "<a href=\"forums.php\">".$L['Forums']."</a> ".$cfg['separator']." $title";

        if ($usr['id']>0 ) { $subtitle .=  "<a href=\"plug.php?e=ftsearch\">".$L['ftsearch']."</a><br />"; }
        $subtitle .=  "<a href=\"plug.php?e=ftsearch&amp;a=getdaily\">".$L['getdaily']."</a><br />";
        $subtitle .=  "<a href=\"plug.php?e=ftsearch&amp;a=unanswered\">".$L['unanswered']."</a>";

        $t->assign(array(
        "FTSEARCH_PAGETITLE" => $toptitle,
        "FTSEARCH_SUBTITLE" => $subtitle,
        "FTSEARCH_PAGES" => $pages,
        "FTSEARCH_PRVTOPICS" => $prvtopics,
        "FTSEARCH_TITLE_TOPICS" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=title&amp;w=".rev($w)."\">".$L['Topics']."</a>",
        "FTSEARCH_TITLE_VIEWS" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=viewcount&amp;w=".rev($w)."\">".$L['Views']."</a>",
        "FTSEARCH_TITLE_POSTS" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=postcount&amp;w=".rev($w)."\">".$L['Posts']."</a>",
        "FTSEARCH_TITLE_REPLIES" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=postcount&amp;w=".rev($w)."\">".$L['Replies']."</a>",
        "FTSEARCH_TITLE_STARTED" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=creationdate&amp;w=".rev($w)."\">".$L['Started']."</a>",
        "FTSEARCH_TITLE_LASTPOST" => "<a href=\"plug.php?e=ftsearch".$cases."&amp;s=".$s."&amp;o=updated&amp;w=".rev($w)."\">".$L['Lastpost']."</a>"
        ));
$t->parse("MAIN.FTSEARCH");

}
else {

        $toptitle = "<a href=\"forums.php\">".$L['Forums']."</a> ".$cfg['separator']." ".$L['Error'];

        if ($usr['id']>0 ) { $subtitle .=  "<a href=\"plug.php?e=ftsearch\">".$L['ftsearch']."</a><br />"; }
        $subtitle .=  "<a href=\"plug.php?e=ftsearch&amp;a=getdaily\">".$L['getdaily']."</a><br />";
        $subtitle .=  "<a href=\"plug.php?e=ftsearch&amp;a=unanswered\">".$L['unanswered']."</a>";

        $t->assign(array(
        "FTSEARCH_PAGETITLE" => $toptitle,
        "FTSEARCH_SUBTITLE" => $subtitle
        ));

        $t->assign("NO_TOPICS_FOUND_BODY", $errormessage);
        $t->parse("MAIN.NO_TOPICS_FOUND");
}
?>