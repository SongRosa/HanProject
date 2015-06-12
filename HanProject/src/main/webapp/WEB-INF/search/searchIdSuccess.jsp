<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>ID찾기 성공</title>
<link href="css/mem/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id ="view_top">
<div id="empty"></div>

	<table cellspacing=1 cellpadding=1 align="center">
	<tr>
<td colspan="2" align="middle"><h2><span class="fontawesome-lock"></span>ID를 찾았습니다.</h2></td>
	</tr>
	<tr height="30">
<td rowspan="2" width="300">귀하의 ID는 ${model.id}입니다. 
<br>

</td>
</tr>
		
		<tr height="70">
		<td colspan="3" align="right">
<form action="searchPwd.do">
	<input name="id" type="hidden" value="${model.id }">
	<input name="name" type="hidden" value="${model.name}">
	<input name="email" type="hidden" value="${model.email}">
	<input type="submit" value="패스워드 찾기" >
	<input type="button" value="로그인 " onclick="javascript:window.location='log_loginForm.do'">
</form>

</td>
</tr>
</table>
<div id="empty"></div>
</div>
</body>
</html>