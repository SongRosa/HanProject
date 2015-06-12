<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>ID찾기 실패</title>
<link href="css/mem/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id ="view_top">
<div id="empty"></div>
	<table cellspacing=1 cellpadding=1 align="center">
	<tr>
	<td colspan="2" align="middle"><h2><span class="fontawesome-lock"></span>ID를 못 찾았습니다.</h2></td>
	</tr>
	<tr>
<tr height="30">
<td rowspan="2" width="300">ID가 없습니다.<br><br>
</td>
</tr>

		<tr height="70">
		<td colspan="3" align="right">
<input type="button" value="확인" onclick="javascript:window.location='searchIdForm.do'">

</td>
</tr>

</table>
<div id="empty"></div>
</body>
</html>