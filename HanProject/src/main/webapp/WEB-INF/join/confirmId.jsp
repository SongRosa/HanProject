<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>ID 중복확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<% request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<c:if test="${x=='1'}">
<c:if test="${a=='1'}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td  align="center" height="39">ID를 입력하세요.</td>
</tr>
</table>
</c:if>
<c:if test="${a=='2' }">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td height="39">${id}은 이미 사용중인 아이디입니다.</td>
<tr>
<td align="center">
다른 아이디를 선택하세요<p>
</p>
</td>
<tr>
</tr>
</table>
</c:if>
<!-- 다른아이디를 검색할 수 있는 폼을 만들어 준다. -->
<form name="idcheckForm" method="post" action="idCheck.do">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
<input type="text" size="10" maxlength="12" name="id">
<input type="submit" value="ID중복확인">
</td>
</tr>
</table>
</form>
</c:if>



<c:if test="${x=='0'}">
<table width="270" border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="center">
<p>입력하신 ${id}는 사용하실 수 있는 ID입니다. </p>
<input type="button" value="닫기" onclick="setid()">
</td>
</tr>
</table>
</c:if>
</body>
</html>
<script>

function setid()
{
	opener.document.join.id.value = "${id}";
	opener.document.join.checkid.value="yes";
	self.close();
}

</script> <!-- /////////////// -->