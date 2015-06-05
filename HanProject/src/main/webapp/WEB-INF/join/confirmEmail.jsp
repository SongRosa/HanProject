<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>닉네임 중복확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<% request.setCharacterEncoding("utf-8"); %>
</head>
<body>
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
<td align="center">
다른 아이디를 선택하세요<p>
</p>
</td>
<tr>
</tr>
</table>
</c:if>
<!-- 다른닉네임을 검색할 수 있는 폼을 만들어 준다. -->
<form name="emailcheckForm" method="post" action="emailCheck.do">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
다른 이메일을 선택하세요<p>
<input type="text" size="10" maxlength="12" name="email1">
@ <input type="text" size="10" maxlength="12" name="email2">
<input type="submit" value="이메일 중복확인" onclick="emailCheck()">
</td>
</tr>
</table>
</form>
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
</body>
</html>
<script>

function emailCheck(){
	if(emailcheckForm.email1.value==0 || emailcheckForm.email2.value==0 ){
		alert("이메일을 입력하세요")
	}else{
	url="emailCheck.do?email1="+emailcheckForm.email1.value+"&email2="+emailcheckForm.email2.value;
	}
}

function setemail()
{
	opener.document.join.email1.value = "${email1}";
	opener.document.join.email2.value = "${email2}";
	opener.document.join.checkemail.value="yes";
	self.close();
}

</script>