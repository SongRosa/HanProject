<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>임시 비밀번호 발급</title>
<link href="css/mem/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id ="view_top">
<div id="empty"></div>

	<table cellspacing=1 cellpadding=1 align="center">
	<tr>
<td colspan="2" align="center"><h2><span class="fontawesome-lock"></span>임시비밀번호가 발급되었습니다.</h2></td>
	</tr>
	<tr height="30">
<td rowspan="2" width="300" align="center">임시비밀번호는 <h3><strong>${pwd}</strong></h3> 입니다. 
<br>

</td>
</tr>
		
		<tr height="70">
		<td colspan="3" align="right">

	<input type="button" value="로그인 " onclick="javascript:window.location='log_loginForm.do'">


</td>
</tr>
</table>
<div id="empty"></div>
</div>
</body>
</html>