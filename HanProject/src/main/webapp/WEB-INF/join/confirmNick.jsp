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
<td  align="center" height="39">닉네임을 입력하세요.</td>
</tr>
</table>
</c:if>
<c:if test="${a=='2' }">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td height="39">${nick}은 이미 사용중인 닉네임입니다.</td>
<tr>
<td align="center">
다른 닉네임을 선택하세요<p>
</p>
</td>
<tr>
</tr>
</table>
</c:if>
<!-- 다른닉네임을 검색할 수 있는 폼을 만들어 준다. -->
<form name="nickcheckForm" method="post" action="nickCheck.do">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
다른 닉네임을 선택하세요<p>
<input type="text" size="10" maxlength="12" name="nick">
<input type="submit" value="닉네임 중복확인" onclick="nickCheck()">
</td>
</tr>
</table>
</form>
</c:if>
<c:if test="${x=='0'}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
<p>입력하신 ${nick}는 사용하실 수 있는 nick입니다. </p>
<input type="button" value="닫기" onclick="setnick()">
</td>
</tr>
</table>
</c:if>
</body>
</html>
<script>
function nickCheck(){
	if(nickcheckForm.nick.value==0){
		alert("닉네임을 입력하세요")
	}else{
	url="nickCheck.do?nick="+nickcheckForm.nick.value;
	}
}

function setnick()
{
	opener.document.join.nick.value = "${nick}";
	opener.document.join.checknick.value="yes";
	self.close();
}

</script>