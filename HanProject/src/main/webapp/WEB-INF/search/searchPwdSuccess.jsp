<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호찾기 성공</title>
<link href="css/mem/join.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id ="view_top">
<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
<tr>


<tr>
<td rowspan="2" width="300">귀하의 비밀번호는 ${pwd }입니다. <br></td>
</tr>

<td rowspan="3" align="center">

<form>
<input type="button" value="로그인" onclick="javascript:window.location='log_loginForm.do'">
</form>
</td>
</tr>
</table>
</div>
</body>
</html>