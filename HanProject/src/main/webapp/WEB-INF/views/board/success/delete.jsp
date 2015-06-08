<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>삭제 성공</title>
<script type="text/javascript">
function closeDeleteForm() {
	window.opener.location="board_list.do?parkNum=0";
	window.close();
}
</script>
</head>
<body>
삭제에 성공했습니다.<br>
<div align="center"><button onclick="closeDeleteForm()">닫기</button></div>
</body>
</html>