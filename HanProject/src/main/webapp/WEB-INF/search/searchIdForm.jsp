<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>ID찾기</title>
<link href="css/mem/join.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$(function (){
	if(${!empty a}){
		alert("일치하는 ID가 없습니다.");
	}
});
</script>
</head>
<body>
<div id ="view_top">
<form:form commandName="loginform" name="searchidform" action="searchId.do" method="post">

	<table cellspacing=1 cellpadding=1 align="center">
		<tr height="30">
			<td colspan="2" align="middle"><strong>ID찾기</strong>	</td>
		</tr>
		
		<tr height="30">
			<td width="110" align=center>이름</td>
			<td width="150" align=center>
				<form:input path="name" size="10" maxlength="12" />
				<form:errors path="name" />
			</td>

		</tr>

		<tr height="30">
			<td width="110" align=center>이메일</td>
			<td width="150" align=center>
				<form:input path="email" size="10" maxlength="12" />
				<form:errors path="email" />
			</td>
		</tr>
		
		<tr height="30">
			<td colspan="3" align="right">
				<input type="submit" value="ID 찾기">
				<input type="button" value="회원가입" onclick="javascript:window.location='join_input.do'">
			</td>
	
		</tr>
	</table>

</form:form>
</div>
</body>
</html>