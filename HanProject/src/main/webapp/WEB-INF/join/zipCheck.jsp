<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>우편번호 검색</title>
<link href="css/popup.css" rel="stylesheet" type="text/css">
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
		var address = sido + " " + gugun + " " + dong + " " + ri+" "+bunji + " " + apt;
		opener.document.join.zipcode.value = zipcode;
		opener.document.join.address.value = address;
		self.close();
	}
	
	function closeButton(){

		javascript:this.close();
	}
</script>
</head>
<body>
<div id ="view_top">
	<p id="popupHeader"> 우편번호 찾기 </p>
</div>
<div id="zipCheck_content">
	<table id="zipCheck" style="width: 650px; margin-bottom: 20px;">
		<form name="zipForm" method="post" action="join_dongseach.do">
			<tr>
				<td><br> 동이름 입력 : <input name="dong" type="text">&nbsp;<input type="button" value="검색" onclick="dongCheck();"></td>
				<td>				
					<input type="hidden" name="check" value="n">
				</td>
			</tr>
		</form>
	</table>
</div>
<div id="selectAddress">
	<c:forEach var="zip" items="${zip}">
		<tr>
			<td colspan="2" class="address">
			<a href="javascript:sendAddress('${zip.zipcode }','${zip.sido }','${zip.gugun }','${zip.dong }','${zip.ri }','${zip.bunji }','${zip.apt }')" style="position:static; text-align: left;">
					${zip.zipcode }&nbsp;${zip.sido }&nbsp;${zip.gugun }&nbsp;
					${zip.dong }&nbsp;${zip.ri }&nbsp;${zip.bunji }&nbsp;${zip.apt }</a><br></td>
		</tr>
	</c:forEach>
</div>
<input id = "close" type="button" onclick="closeButton()" value = "닫기" >
</body>
</html>