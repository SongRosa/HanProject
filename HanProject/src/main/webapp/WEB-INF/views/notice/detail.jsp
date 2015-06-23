<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script type="text/javascript">
function openDeleteForm(n_number) {
	window.open("notice_deleteForm.do?n_number="+ n_number , "글 삭제", "width=400,height=150,left=400,right=400,top=200");
	
}

</script>
<title>${detail.n_number }번째 글</title>
<link href="css/board/detail_style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div align="center" id="detail_div">
<table class="detail_table" width="1000">

<tr>
<td class="detail_table_number1" align="center">글번호</td><td class="detail_table_number2" align="center"> ${detail.n_number}</td>
<td class="detail_table_writer1" align="center">작성자</td><td class="detail_table_writer2" align="center"> ${detail.n_writer }</td>
<td class="detail_table_date1" align="center">작성일</td><td class="detail_table_date2" align="center"><fmt:formatDate value="${detail.n_regdate }" type="date"/></td>
</tr>
<tr>
<td class="detail_table_subject1" align="center">제목</td>
<td class="detail_table_subject2" align="left" colspan="5">${detail.n_subject }</td>
</tr>
<tr>
<td class="detail_table_content" colspan="6"> ${detail.n_content }</td>
</tr>
<c:choose>
<c:when test="${sessionScope.user.id eq 'manager' }">
<tr>
<td class="detail_table_btnGroup" colspan="6" align="right">
<button class="detail_table_updateBtn" onclick="window.location='notice_updateForm.do?n_number=${detail.n_number}'">&nbsp;</button>
<button class="detail_table_deleteBtn" onclick="openDeleteForm(${detail.n_number })">&nbsp;</button>
<button class="detail_table_goListBtn" onclick="window.location='notice_list.do?p=${listPage }'">&nbsp;</button>
</td></tr>
</c:when>
<c:otherwise>
<tr>
<td class="detail_table_btnGroup" colspan="6" align="right">
<button class="detail_table_goListBtn" onclick="window.location='notice_list.do?p=${listPage }'">&nbsp;</button>
</td></tr>
</c:otherwise>
</c:choose>
</table>
</div>
<p><br></p>
</body>
</html>