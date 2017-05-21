<!-- BEGIN: MAIN -->
<div>
	<div>
		<div class="pull-right indeximagebottom">
			<a href="https://cotonti.com" target="_blank" rel="nofollow noindex" ><img class="img-rounded img-responsive" src="{PHP.cfg.themes_dir}/{PHP.usr.theme}/img/cotonti.png"></a>
		</div>
		<h4>RSS Cotonti.com</h4>
	</div>
<!-- BEGIN: RSS_BLOCK -->
	<div class="rsselem">
		<h5>
			<a rel="nofollow noindex" target="_blank" href="{RSS_LINK}" title="{RSS_TITLE}">{RSS_TITLE}</a>
		</h5>
		<div><span class="small pull-right">{RSS_DATESTAMP|cot_date('date_text', $this)}</span>
			<div class="clearfix"></div>
		</div>
		<div>{RSS_DESCRIPTION|cot_string_truncate($this, 160, 1, 0, '...')}</div>
	</div>
<!-- END: RSS_BLOCK -->
	<div class="small text-right"><a rel="nofollow" href="{RSS_INFO_LINK}" title="{RSS_INFO_TITLE}">{RSS_INFO_TITLE}</a></div>
</div>
<!-- END: MAIN -->