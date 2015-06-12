<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<title>이메일 중복확인</title>
<link href="css/popup.css" rel="stylesheet" type="text/css">
<% request.setCharacterEncoding("utf-8"); %>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	function emailCheck() {

			url="update_emailCheck.do?email1="+emailcheckForm.email1.value+"&email2="+emailcheckForm.email2.value;
			javascript:window.location = url;
	} 

	$(function() {
		$("#sel").change(function() {
			var d = $("#sel").val();
			$("#email2").val(d);
		});
	});
	


	function setemail()
	{
		opener.document.updateemailform.email1.value = "${email1}";
		opener.document.updateemailform.email2.value = "${email2}";
		opener.document.updateemailform.checkemail.value="yes";
		self.close();
	}

</script>
</head>
<body>
<div id ="view_top">
<c:if test="${x=='1'}">
<c:if test="${a=='1'}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td  align="center" height="39">이메일을 입력하세요.</td>
</tr>
</table>
</c:if>
<c:if test="${a=='2' }">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td height="39">${email}은 이미 사용중인 이메일입니다.</td>
<tr>
</td>
<tr>
</tr>
</table>
</c:if>
<!-- 다른닉네임을 검색할 수 있는 폼을 만들어 준다. -->
<form:form commandName="loginform" name="emailcheckForm" method="post">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
다른 이메일을 선택하세요<p>
<form:input path="email1" size="7" maxlength="12"/> @ <form:input path="email2" size="7" maxlength="9"/> 
				<select class="select" id="sel">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
				</select>
<input type="button" value="이메일 중복확인" onclick="emailCheck()">
<form:errors path="email2" />
</td>
</tr>
</table>
</form:form>
</c:if>
<c:if test="${x=='0'}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
<p>입력하신 ${email}는 사용하실 수 있는 이메일입니다. </p>
<input type="button" value="닫기" onclick="setemail()">
</td>
</tr>
</table>
</c:if>


</div>
</body>
</html>