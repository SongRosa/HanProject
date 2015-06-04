<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>글 삭제</title>
<script>	
function closeDeleteForm() {
	window.close();
}

</script>
</head>
<body>

<form name="deleteForm" method="post">
<div>정말 삭제 하시겠습니까?</div>
<div>
<input type="hidden" value="${param.b_number }" name="b_number">
<input type="submit" value="예">
<input type="button" value="아니오" onclick="closeDeleteForm();">
</div>





</form>
</body>
</html>