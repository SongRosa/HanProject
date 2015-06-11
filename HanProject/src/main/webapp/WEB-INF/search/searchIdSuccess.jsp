<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>ID찾기 성공</title>
</head>
<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
<tr>
<td rowspan="2" width="300">귀하의 ID는 ${model.id}입니다. 
<br>

</td>
</tr>
<tr>

<td rowspan="3" align="center">
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
<br>
</body>
</html>