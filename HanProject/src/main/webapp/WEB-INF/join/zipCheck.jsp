<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>우편번호 검색</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
	function dongCheck() {
		if (document.zipForm.dong.value == "") {
			alert("동이름을 입력하세요");
			document.zipForm.dong.focus();
			return;
		}
		document.zipForm.submit();
	}
	function sendAddress(zipcode, sido, gugun, dong, ri,bunji,apt) {
		var address = sido + "" + gugun + "" + dong + "" + ri+""+bunji + "" + apt;
		opener.document.join.zipcode.value = zipcode;
		opener.document.join.address.value = address;
		self.close();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<center>
		<b> 우편번호 찾기 </b>
	</center>
	<table>
		<form name="zipForm" method="post" action="dongseach.do">
			<tr>
				<td><br> 동이름 입력 : <input name="dong" type="text">
					<input type="button" value="검색" onclick="dongCheck();"></td>
			</tr>
			<input type="hidden" name="check" value="n">
		</form>
		<c:forEach var="zip" items="${zip}">
			<tr>
				<td><a
					href="javascript:sendAddress('${zip.zipcode }','${zip.sido }','${zip.gugun }','${zip.dong }','${zip.ri }','${zip.bunji }','${zip.apt }')">
						${zip.zipcode }&nbsp;${zip.sido }&nbsp;${zip.gugun }&nbsp;
						${zip.dong }&nbsp;${zip.ri }&nbsp;${zip.bunji }&nbsp;${zip.apt }</a><br></td>
			</tr>
						</c:forEach>
			<tr>
				<td align="center"><br>
				<a href="javascript:this.close();">닫기</a>
			</tr>

	</table>
</body>
</html>