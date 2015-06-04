<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script type="text/javascript">
function openDeleteForm(b_number) {
	window.open("deleteForm.do?b_number="+ b_number , "글 삭제", "width=400,height=300,left=400,right=400,top=200");
	
}
</script>
<title>${detail.b_number }번째 글</title>
</head>
<body>
<table border="1" width="1000">

<tr>
<td align="center">글번호</td><td align="center"> ${detail.b_number}</td>
<td align="center">작성자</td><td align="center"> ${detail.b_writer }</td>
<td align="center">작성일</td><td align="center"><fmt:formatDate value="${detail.b_regdate }" type="date"/></td>
</tr>
<tr>
<td align="center">제목</td>
<td align="left" colspan="5">${detail.b_subject }</td>
</tr>
<tr>
<td align="center" colspan="6">${detail.b_content }</td>
</tr>
<tr>
<td colspan="6" align="right">
<button onclick="window.location='updateForm.do?b_number=${detail.b_number}'">수정</button>
<button onclick="openDeleteForm(${detail.b_number })">삭제</button>
<button onclick="window.location='list.do'">목록</button>
</td></tr>
</table>


</body>
</html>