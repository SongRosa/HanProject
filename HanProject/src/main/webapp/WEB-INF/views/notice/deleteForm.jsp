<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>글 삭제</title>
<link href="css/popup.css" rel="stylesheet" type="text/css">
<script>	
function closeDeleteForm() {
	window.close();
}

</script>
</head>
<body>

<div style="height: 40"></div>
<form name="deleteForm" method="post">
<div style="height: 30">정말 삭제 하시겠습니까?</div>
<div>
<input type="hidden" value="${param.n_number }" name="n_number">
<input type="submit" value="예">
<input type="button" value="아니오" onclick="closeDeleteForm();">
</div>





</form>
</body>
</html>