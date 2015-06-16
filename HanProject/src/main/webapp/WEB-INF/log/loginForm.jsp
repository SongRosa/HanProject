<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>로그인</title>
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
<form:form commandName="loginform" method="post" action="log_login.do"	name="loginform">
	
	<div id="empty"></div>
	<table cellspacing=1 cellpadding=1 align="center">
		<tr height="30">
			<td colspan="3" align="center"><h2><span class="fontawesome-lock"></span>회원로그인 </h2></td>
		</tr>
		
		<tr height="30">
			<td width="110" align=center>아이디</td>
			<td width="150" align=center>
				<form:input path="id" size="10" maxlength="12"/>
				<form:errors path="id" />
			</td>
		
			<td width="150" align=center rowspan="2" height="50">
				<input type=submit value="로그인" style="width:100%;height: 100%">
			</td>
		</tr>

		<tr height="30">
			<td width="110" align=center>비밀번호</td>
			<td width="150" align=center>
				<form:password path="pwd" size="10" maxlength="16"/>
				<form:errors path="pwd" />
			</td>
			
		</tr>
		
		<tr height="70">
			<td colspan="3" align="center">
				<input type="button" value="ID 찾기" onclick="javascript:window.location='searchIdForm.do'">
				<input type="button" value="비밀번호 찾기" onclick="javascript:window.location='searchPwdForm.do'">
				<input type="button" value="회원가입" onclick="javascript:window.location='join_input.do'">
			</td>
	
		</tr>
	</table>

</form:form>
</div>
<div id="empty"></div>
</body>
</html> --%>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>로그인</title>
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
<form:form commandName="loginform" method="post" action="log_login.do"	name="loginform">
	
	<div id="empty"></div>
<div id="around" align="center">
<div id="header"> <h2  style="width: 50%"><span class="fontawesome-lock"></span>회원로그인 </h2></div>		
			
			<div id=left style="float: left; padding-left: 390px">
				<label id="label_id">아이디 </label><form:input  path="id" size="10" maxlength="12"/>
				<div style="padding: 7px;"><form:errors path="id" /></div>
				<label id="label_pw" >비밀번호 </label><form:password path="pwd" size="10" maxlength="16"/>
				<div style="padding: 7px"><form:errors path="pwd" /></div>
			</div>
			
<div id="right" style="float: right; padding-right: 230px">
			<input type=submit value="로그인" style="width:110px;height: 80px">
</div>
<div id="btnfooter" style="clear:both; padding-top: 10px; padding-left: 100px" >
				<input type="button" value="ID 찾기" onclick="javascript:window.location='searchIdForm.do'">
				<input type="button" value="비밀번호 찾기" onclick="javascript:window.location='searchPwdForm.do'">
				<input type="button" value="회원가입" onclick="javascript:window.location='join_input.do'">
</div>
</div>
</form:form>

<div id="empty"></div>
</div>
</body>
</html>