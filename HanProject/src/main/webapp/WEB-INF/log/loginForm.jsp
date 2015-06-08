<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>로그인</title>
</head>
<body>
<form name="myform" action="/HanProject/log_login.do" method="post">
	<table cellspacing=1 cellpadding=1 border=1 align="center">
		<tr height="30">
			<td colspan="3" align="middle"><strong>회원로그인</strong>	</td>
		</tr>
		
		<tr height="30">
			<td width="110" align=center>아이디</td>
			<td width="150" align=center>
				<input type="text" name="id" size="16" maxlength="12">
			</td>
		
			<td width="150" align=center rowspan="2" height="50">
				<input type=submit value="로그인" style="width:100%;height: 100%">
			</td>
		</tr>

		<tr height="30">
			<td width="110" align=center>비밀번호</td>
			<td width="150" align=center>
				<input type="text" name="pwd" size="16" maxlength="16">
			</td>
		</tr>
		
		<tr height="30">
			<td colspan="3" align="middle">
				<input type=submit value="ID 찾기">
				<input type=reset value="비밀번호 찾기">
				<input type="button" value="회원가입" onclick="javascript:window.location='/HanProject/join_input.do'">
			</td>
	
		</tr>
	</table>

</form>

</body>
</html>