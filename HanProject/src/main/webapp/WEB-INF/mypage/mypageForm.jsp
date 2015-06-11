<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>마이페이지</title>
</head>
<table width=500 cellpadding="0" cellspacing="0" align="center" >

<tr>
<td rowspan="2" width="500">
ID=${user.id }<br>
pwd=${user.pwd}<br>
이름 =${user.name}<br>
닉네임 = ${user.nick}<br>
Email=${user.email}<br>
전화번호=${user.tel}<br>
주소 = ${user.address}<br>
</td>
</tr>

<tr>
<td rowspan="3" align="center">

<form method="post" action="log_logout.do">
<input type="submit" value="로그아웃"><br><br>
<input type="button" value="회원정보변경" onclick="javascript:window.location='confirmPwd.do'"><br><br>
<input type="button" value="게시판으로 이동" onclick="javascript:window.location='board_list.do?parkNum=0'">
</form>
</td>
</tr>

</table>
<br>
</body>
</html>