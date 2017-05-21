<!-- BEGIN: MAIN -->
<div class="page-header">
  <div class="container container-fluid">   
    <h1>{FTSEARCH_PAGETITLE}</h1>
  </div>
</div>
  
<div class="container container-fluid"> 
			


 <table border='0' class='table table-striped'>
  <tr>
   <td>
   <a href='plug.php?e=ftsearch'>Непрочитанные сообщения</a>&nbsp;&nbsp;&middot;&nbsp;
   <a href="plug.php?e=ftsearch&a=getdaily">Сегодняшние сообщения</a>&nbsp;&nbsp;&middot;&nbsp;
   <a href="plug.php?e=ftsearch&a=unanswered">Темы без ответов</a>
   </td>
   <td align='right'><a href="plug.php?e=search&amp;frm=1">{PHP.skinlang.forumssections.Searchinforums}</a></td>
  </tr>
 </table>

<div id="main">
	<!-- BEGIN: NO_TOPICS_FOUND -->
	<div class="code">{NO_TOPICS_FOUND_BODY}</div>
	<!-- END: NO_TOPICS_FOUND -->

<!-- BEGIN: FTSEARCH -->
<table class='table table-striped'>
  <tr>
   <td colspan='6' class='cat_title' style="color:#fff;">&nbsp;&nbsp;Сообщения по фильтру {FORUMS_TOPICS_SUBTITLE}</td>
  </tr>
  <tr> 
   <td align='center' class='row1'></td>
   <td width='45%' align='left' nowrap="nowrap" class='row1'>{FTSEARCH_TITLE_TOPICS}</td>
   <td width='14%' align='center' nowrap="nowrap" class='row1'>{FTSEARCH_TITLE_STARTED}</td>
   <td width='7%' align='center' nowrap="nowrap" class='row1'>{FTSEARCH_TITLE_POSTS}</td>
   <td width='7%' align='center' nowrap="nowrap" class='row1'>{FTSEARCH_TITLE_VIEWS}</td>
   <td width='27%' align='left' nowrap="nowrap" class='row1'>{FTSEARCH_TITLE_LASTPOST}</td>
  </tr>
<!-- BEGIN: TOPICS_ROW -->
    <tr> 
	  <td align='center' valign="middle" class='row4'>{FTSEARCH_ROW_ICON}</td>
      <td class='row4'><a href="{FTSEARCH_ROW_URL}">{FTSEARCH_ROW_TITLE}</a>  <span class='small'>{FTSEARCH_ROW_PAGES}</span><br /><span class='desc'></span></td>
      <td align='center' class='row2'>{FTSEARCH_ROW_FIRSTPOSTER}<br />{FTSEARCH_ROW_CREATIONDATE}</td>
      <td align='center' class='row4'>{FTSEARCH_ROW_POSTCOUNT}</td>
      <td align='center' class='row2'>{FTSEARCH_ROW_VIEWCOUNT}</td>
	  
      <td class='row2'>{FTSEARCH_ROW_UPDATED} &nbsp; {FTSEARCH_ROW_TIMEAGO}<br />Автор: &nbsp; {FTSEARCH_ROW_LASTPOSTER}</td>
    </tr>
<!-- END: TOPICS_ROW -->	
</table>

<br />
<div class="paging">

	 {FTSEARCH_PAGES} {FTSEARCH_PAGEPREV} {FTSEARCH_PAGENEXT}

</div>

<table class="table table-striped">

	<tr>
		<td><img src="images/icons/default/posts.png" alt="" /> : {PHP.skinlang.forumstopics.Nonewposts}</td>
		<td><img src="images/icons/default/posts_new.png" alt="" /> :{PHP.skinlang.forumstopics.Newposts}</td>
		<td><img src="images/icons/default/posts_sticky.png" alt="" /> : {PHP.skinlang.forumstopics.Sticky}</td>
	</tr>
	<tr>
		<td><img src="images/icons/default/posts_hot.png" alt="" /> : {PHP.skinlang.forumstopics.Nonewpostspopular}</td>
		<td><img src="images/icons/default/posts_new_hot.png" alt="" /> :{PHP.skinlang.forumstopics.Newpostspopular}</td>
		<td><img src="images/icons/default/posts_new_sticky.png" alt="" /> : {PHP.skinlang.forumstopics.Newpostssticky}</td>
	</tr>
	<tr>
		<td><img src="images/icons/default/posts_locked.png" alt="" /> : {PHP.skinlang.forumstopics.Locked}</td>
		<td><img src="images/icons/default/posts_new_locked.png" alt="" /> : {PHP.skinlang.forumstopics.Newpostslocked}</td>
		<td><img src="images/icons/default/posts_sticky_locked.png" alt="" /> : {PHP.skinlang.forumstopics.Announcment}</td>
	</tr>
	<tr>
		<td colspan="2">
		<img src="images/icons/default/posts_moved.png" alt="" /> : {PHP.skinlang.forumstopics.Movedoutofthissection}</td>
		<td><img src="images/icons/default/posts_new_sticky_locked.png" alt="" /> : {PHP.skinlang.forumstopics.Newannouncment}</td>
	</tr>

</table>
<!-- END: FTSEARCH -->
</div>
</div>

<!-- END: MAIN -->