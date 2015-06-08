<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>ID찾기 성공</title>
</head>
<table width=500 cellpadding="0" cellspacing="0" align="center" border="1">
<tr>
<td width="300" height="20">하하하</td>
<td rowspan="3" align="center">
귀하의 ID는 ${id }입니다. <br>
<form method="post" action="logout.do">
<input type="submit" value="로그아웃">
<input type="button" value="회원정보변경" onclick="javascript:window.location='modify.jsp'">
<input type="button" value="게시판으로 이동" onclick="javascript:window.location='log_loginForm.do'">
</form>
</td>
</tr>
<tr>
<td rowspan="2" width="300">메인입니다.</td>
</tr>
</table>
<br>
</body>
</html>