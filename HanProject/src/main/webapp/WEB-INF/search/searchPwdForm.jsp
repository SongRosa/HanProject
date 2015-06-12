<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>패스워드찾기</title>
<link href="css/mem/login.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$(function (){
	if(${!empty a}){
		alert("정보가 일치하지않습니다.");
	}
});
</script>
</head>
<body>
<div id ="view_top">
<form:form commandName="loginform" name="searchpwdform" action="searchPwd.do" method="post">
<div id="empty"></div>
	<table cellspacing=1 cellpadding=1 align="center" style="width: 400px;">
		<tr height="30">
			<td colspan="3" align="middle"><h2><span class="fontawesome-lock"></span>비밀번호찾기</h2></td>
		</tr>
		
				<tr height="30">
			<td width="110" align=center>ID</td>
			<td width="150" align=center>
				<form:input path="id" size="15" maxlength="12" />
				<form:errors path="id" />
			</td>

		</tr>
		
		<tr height="30">
			<td width="110" align=center>이름</td>
			<td width="150" align=center>
				<form:input path="name" size="15" maxlength="12" />
				<form:errors path="name" />
			</td>

		</tr>

		<tr height="30">
			<td width="110" align=center>이메일</td>
			<td width="150" align=center>
				<form:input path="email" size="15" maxlength="12" />
				<form:errors path="email" />
			</td>
		</tr>
		
		<tr height="70">
			<td colspan="3" align="right">
				<input type="submit" value="비밀번호 찾기">
				<input type="button" value="회원가입" onclick="javascript:window.location='join_input.do'">
			</td>
	
		</tr>
	</table>
<div id="empty"></div>
</form:form>
</div>
</body>
</html>