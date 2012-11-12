<!-- BEGIN: MAIN -->

<!-- BEGIN: BEFORE_AJAX -->
<div id="ajaxBlock">
<!-- END: BEFORE_AJAX -->

	<div class="largeblock">
		<h2 class="comments">{PM_PAGETITLE}</h2>
		<p class="small">{PM_SUBTITLE}</p>
		<p class="paging"><span class="btn">{PM_INBOX}</span><span class="spaced">{PHP.cfg.separator}</span><span class="btn">{PM_SENTBOX}</span><span class="spaced">{PHP.cfg.separator}</span><span class="btn">{PM_SENDNEWPM}</span></p>
		<table class="cellsbg">
			<tr>
				<td class="width15">{PHP.L.Subject}:</td>
				<td class="width85">{PM_TITLE}</td>
			</tr>
			<tr>
				<td>{PM_SENT_TYPE}:</td>
				<td>{PM_USER_NAME}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{PM_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Message}:</td>
				<td>{PM_TEXT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Action}:</td>
				<td>
					<span class="btn">{PM_QUOTE}</span> 
					<!-- IF {PM_EDIT} --><span class="btn">{PM_EDIT}</span><!-- ENDIF -->
					<span class="btn">{PM_DELETE}</span> 
					<span class="btn">{PM_HISTORY}</span>
				</td>
			</tr>
		</table>
<!-- BEGIN: REPLY -->
		<h3>{PHP.L.pm_replyto}</h3>
		<form action="{PM_FORM_SEND}" method="post" name="newlink">
			<table class="cellsbg">
				<tr>
					<td class="width15">{PHP.L.Subject}:</td>
					<td class="width85">{PM_FORM_TITLE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Message}:</td>
					<td>{PM_FORM_TEXT}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="checkbox" class="checkbox" name="fromstate" value="3" /> {PHP.L.pm_notmovetosentbox}</td>
				</tr>
				<tr>
					<td colspan="2" class="valid"><button type="submit" class="btn">{PHP.L.Reply}</button></td>
				</tr>
			</table>
		</form>
<!-- END: REPLY -->
		<div id="ajaxHistory">
<!-- BEGIN: HISTORY -->
			<h3>{PHP.L.pm_messagehistory}</h3>
			<table class="cellsbg">
<!-- BEGIN: PM_ROW -->
				<tr>
					<td class="{PM_ROW_ODDEVEN} width15">{PM_ROW_USER_NAME}<br />{PM_ROW_DATE}</td>
					<td class="{PM_ROW_ODDEVEN} width85">{PM_ROW_TEXT}</td>
				</tr>
<!-- END: PM_ROW -->
<!-- BEGIN: PM_ROW_EMPTY -->
				<tr>
					<td colspan="2" style="padding:16px;">{PHP.L.None}</td>
				</tr>
<!-- END: PM_ROW_EMPTY -->
			</table>
			<!-- IF {PM_PAGES} --><p class="paging">{PM_PAGEPREV}{PM_PAGES}{PM_PAGENEXT}</p><!-- ENDIF -->
<!-- END: HISTORY -->
		</div>
	</div>
	<!-- IF {PM_AJAX_MARKITUP} AND {PHP.cfg.pm.turnajax} -->
	<script type="text/javascript">$(document).ready(function() {$("textarea.editor").markItUp(mySettings);});</script>
	<!-- ENDIF -->

	<!-- IF {PHP.cfg.jquery} AND {PHP.cfg.pm.turnajax} -->
	<script type="text/javascript" src="{PHP.cfg.modules_dir}/pm/js/pm.js"></script>
	<!-- ENDIF -->

<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->

<!-- END: MAIN -->