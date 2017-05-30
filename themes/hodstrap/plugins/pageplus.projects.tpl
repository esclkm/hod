<!-- BEGIN: MAIN -->

	<!-- BEGIN: PAGE_ROW -->
	
		<div class="container">
	        <div class="col-xs-12 col-sm-6 text-col left-col">
            
                <a class="arrow" href="{PAGE_ROW_URL}"><i class="small-icon black-arrow"></i></a>
                <p class=" h1 text-left">
					{PAGE_ROW_SHORTTITLE}
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<!-- ENDIF -->	
				</p>
                <div>{PAGE_ROW_TEXT_SHORT}</div>
				<div>{PAGE_ROW_HARAKTERISTIKI_SHORT}</div>
               <!-- <ul class="list-unstyled list-underline">
                    <li>in reprehenderit in voluptate velit </li>
                    <li>esse cillum dolore eu fugiat </li>
                    <li>nulla pariatur. Excepteur sint </li>
                    <li>occaecat cupidatat non proident, </li>
                </ul>-->
                <div class="links clearfix">
                    <a href="{PAGE_ROW_URL}"><span>Посмотреть проект</span> →</a>
                    <a href="{PHP|cot_url('page', 'c=projects')}"><span>Реализованные проекты</span> →</a>
                    <a href="{PHP|cot_url('page', 'c=system&al=arenda')}"><span>Аренда</span> →</a>
                </div>
            </div>
        </div>
        <div class="image-col right-col">
            <img src="<!-- IF {PAGE_ROW_MAVATAR} -->{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 640, 450, crop)}<!-- ELSE -->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!-- ENDIF -->" alt="" class="img-responsive">   
        </div>
	

	<!-- END: PAGE_ROW -->
<!-- END: MAIN -->
		<div class="col-xs-4 otzyvy">
			
			<div class="otzyvy-text sameh"><i class="fa fa-quote-left"></i>{PAGE_ROW_TEXT}</div>
			<div class="otzyvy-comment">
				<div class="otzyvy-avatar-img" style="background: url('<!-- IF {PAGE_ROW_MAVATAR} -->{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 64, 64, crop)}<!-- ELSE -->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!-- ENDIF -->') center;"></div>
				<div class="otzyvy-author">	
					<strong>{PAGE_ROW_SHORTTITLE}</strong><!-- IF {PAGE_ROW_DESC} -->, {PAGE_ROW_DESC}<!-- ENDIF -->
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<!-- ENDIF -->		
				</div>
			</div>
		</div>	