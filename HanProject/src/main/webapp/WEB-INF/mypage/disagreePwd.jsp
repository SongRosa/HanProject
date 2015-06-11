<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>정보수정</title>
<link href="css/mem/join.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id ="view_top">
<form:form>

	<table cellspacing=1 cellpadding=1 border=1 align="center">
		<tr height="30">
			<td colspan="2" align="middle"><strong>비밀번호 확인</strong>	</td>
		</tr>
		


		<tr height="30">
			<td width="110" align=center>비밀번호가 틀립니다.</td>

		</tr>
		
		<tr height="30">
			<td colspan="3" align="right">
				<input type="button" value="확 인" onclick="javascript:window.location='confirmPwd.do'">
			</td>
	
		</tr>
	</table>

</form:form>
</div>
</body>
</html>