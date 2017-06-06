<!-- BEGIN: MAIN -->
<section class="page-content">
	<div class="container container-fluid">		
		<h1>
			{USERS_DETAILS_NICKNAME}	
			<!-- BEGIN: USERS_DETAILS_ADMIN -->
			<div class="small pull-right">{USERS_DETAILS_ADMIN_EDIT}</div>
			<!-- END: USERS_DETAILS_ADMIN -->
		</h1>						
	</div>
</section>
<div class="container container-fluid">
	{USERS_DETAILS_TITLE}
	<div class="table-responsive">
		<table class="table table-bordered">
	<!-- IF {PHP.cot_modules.pm} -->
			<tr>
				<td>{PHP.L.users_sendpm}:</td>
				<td>{USERS_DETAILS_PM}</td>
			</tr>
	<!-- ENDIF -->
			<tr>
				<td class="width30">{PHP.L.Maingroup}:</td>
				<td class="width70">{USERS_DETAILS_MAINGRP}</td>
			</tr>
			<tr>
				<td>{PHP.L.Groupsmembership}:</td>
				<td>{PHP.L.Maingroup}:<br />&nbsp;{PHP.out.img_down}<br />{USERS_DETAILS_GROUPS}</td>
			</tr>
			<tr>
				<td>{PHP.L.Country}:</td>
				<td>{USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</td>
			</tr>
			<tr>
				<td>{PHP.L.Timezone}:</td>
				<td>{USERS_DETAILS_TIMEZONE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Birthdate}:</td>
				<td>{USERS_DETAILS_BIRTHDATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Age}:</td>
				<td>{USERS_DETAILS_AGE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Gender}:</td>
				<td>{USERS_DETAILS_GENDER}</td>
			</tr>
			<tr>
				<td>{PHP.L.Signature}:</td>
				<td>{USERS_DETAILS_TEXT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Registered}:</td>
				<td>{USERS_DETAILS_REGDATE}</td>
			</tr>
			<!-- IF {USERS_DETAILS_AVATAR} -->
			<tr>
				<td>{PHP.L.Avatar}:</td>
				<td>{USERS_DETAILS_AVATAR}</td>
			</tr>
			<!-- ENDIF -->
			<!-- IF {USERS_DETAILS_PHOTO} -->
			<tr>
				<td>{PHP.L.Photo}:</td>
				<td>{USERS_DETAILS_PHOTO}</td>
			</tr>
			<!-- ENDIF -->
			<tr>
				<td>{PHP.skinlang.usersprofile.Website}</td>
				<td>{USERS_DETAILS_WEBSITE}</td>
			</tr>
			<tr>
				<td>{PHP.skinlang.usersprofile.IRC}</td>
				<td>{USERS_DETAILS_IRC}</td>
			</tr>
			<tr>
				<td>{PHP.skinlang.usersprofile.ICQ}</td>
				<td>{USERS_DETAILS_ICQ}</td>
			</tr>			
		</table>
	</div>
</div>

<!-- END: MAIN -->