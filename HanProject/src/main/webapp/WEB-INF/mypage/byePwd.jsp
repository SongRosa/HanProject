<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>정보수정</title>
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
<form:form commandName="loginform" name="confirmpwdform" action="byebye.do" method="post">

	<table cellspacing=1 cellpadding=1 border=1 align="center">
		<tr height="30">
			<td colspan="2" align="middle"><strong>비밀번호 확인</strong>	</td>
		</tr>
		


		<tr height="30">
			<td width="110" align=center>비밀번호</td>
			<td width="150" align=center>
				<form:input path="pwd" size="10" maxlength="12" />
				<form:errors path="pwd" />
			</td>
		</tr>
		
		<tr height="30">
			<td colspan="3" align="right">
				<input type="submit" value="입 력">
				<input type="button" value="취 소" onclick="javascript:window.location='mypageForm.do'">
			</td>
	
		</tr>
	</table>

</form:form>

</body>
</html>