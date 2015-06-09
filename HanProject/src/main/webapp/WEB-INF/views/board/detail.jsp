<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script type="text/javascript">
function openDeleteForm(b_number) {
	window.open("board_deleteForm.do?b_number="+ b_number , "글 삭제", "width=400,height=300,left=400,right=400,top=200");
	
}
function confirmDelete(c_num,b_num){
	var con = confirm("코멘트를 삭제 하시겠습니까?");
	if(con){
		window.location="commentsDel.do?c_number="+c_num+"&b_number="+b_num;
		
	}else{
		;
	}
	
}

</script>
<title>${detail.b_number }번째 글</title>
</head>
<body>
<div>
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
<td align="center" colspan="6"> &lt;${detail.p_name}&gt; ${detail.b_content }</td>
</tr>
<tr>
<td colspan="6" align="right">
<button onclick="window.location='board_updateForm.do?b_number=${detail.b_number}'">수정</button>
<button onclick="openDeleteForm(${detail.b_number })">삭제</button>
<button onclick="javascript:history.go(-1)">목록</button>
</td></tr>
</table>
</div>
<div>
<table>

<c:if test="${empty commentsList }">
<tr>
<td colspan="3" align="center">등록 된 코멘트가 없습니다.</td>
</tr>
</c:if>


<c:if test="${!empty commentsList }">
<c:forEach var="comment" items="${commentsList }">
<tr>
<td width="20%" align="center">${comment.c_writer }</td>
<td width="60%">${comment.c_content }</td>
<td width="20%"><fmt:formatDate value="${comment.c_regdate }" type="both"/></td>
<td><button onclick="confirmDelete(${comment.c_number},${detail.b_number })"> X </button>
</tr>
</c:forEach>

<tr>
<td align="center" colspan="4">${paging }</td>
</tr>
</c:if>


<tr>
<form name="CommentsCommand" method="post">

<td><input size="5" name="c_writer"></td>
<td><input size="100" name="c_content"></td>
<td><input type="submit" value="입력"></td>

<input type="hidden" name="b_number" value="${detail.b_number}">

</form>
</tr>
</table>
</div>
<p></p>



</body>
</html>