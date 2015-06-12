<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>정보수정</title>
<link href="css/mem/login.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$(function (){
	if(${!empty a}){
		alert("입력정보를 확인하세요.");
	}
});
</script>
</head>
<body>
<div id ="view_top">
<form:form commandName="loginform" name="confirmpwdform" action="updatego.do" method="post">
<div id="empty"></div>
	<table cellspacing=1 cellpadding=1 align="center">
		<tr height="30">
			<td colspan="2" align="middle"><h2><span class="fontawesome-lock"></span>비밀번호 확인</h2></td>
		</tr>
		


		<tr height="30">
			<td width="110" align=center>비밀번호</td>
			<td width="150" align=center>
				<form:password path="pwd" size="10" maxlength="16" />
				<form:errors path="pwd" />
			</td>
		</tr>
		
		<tr height="70">
			<td colspan="3" align="right">
				<input type="submit" value="입 력">
				<input type="button" value="취 소" onclick="javascript:window.location='test.do'">
			</td>
	
		</tr>
	</table>
<div id="empty"></div>
</form:form>
</div>
</body>
</html>