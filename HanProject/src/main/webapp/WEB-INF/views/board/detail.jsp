<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<script type="text/javascript">
function openDeleteForm(b_number) {
	window.open("board_deleteForm.do?b_number="+ b_number , "글 삭제", "width=400,height=150,left=400,right=400,top=200");
	
}
function confirmDelete(c_num,b_num,parkNum,p){
	var con = confirm("코멘트를 삭제 하시겠습니까?");
	if(con){
		window.location="commentsDel.do?c_number="+c_num+"&b_number="+b_num+"&parkNum="+parkNum+"&p="+p;
		
	}else{
		;
	}
	
}
function checkBlank(){
	if(document.CommentsCommand.c_writer.value==""){
		return false;
	}
	
	if(document.CommentsCommand.c_content.value==""){
		return false;
	}
	
}

</script>
<title>${detail.b_number }번째 글</title>
<link href="css/board/detail_style.css" type="text/css" rel="stylesheet">
</head>
<body>
<div align="center" id="detail_div">
<table class="detail_table" width="1000">

<tr>
<td class="detail_table_number1" align="center">글번호</td><td class="detail_table_number2" align="center"> ${detail.b_number}</td>
<td class="detail_table_writer1" align="center">작성자</td><td class="detail_table_writer2" align="center"> ${detail.b_writer }</td>
<td class="detail_table_date1" align="center">작성일</td><td class="detail_table_date2" align="center"><fmt:formatDate value="${detail.b_regdate }" type="date"/></td>
</tr>
<tr>
<td class="detail_table_subject1" align="center">제목</td>
<td class="detail_table_subject2" align="left" colspan="5"> &lt;${detail.p_name}&gt; ${detail.b_subject }</td>
</tr>
<tr>
<td class="detail_table_content" colspan="6"> ${detail.b_content }</td>
</tr>
<c:choose>
<c:when test="${sessionScope.user.id eq detail.b_id }">
<tr>
<td class="detail_table_btnGroup" colspan="6" align="right">
<button class="detail_table_updateBtn" onclick="window.location='board_updateForm.do?b_number=${detail.b_number}'">&nbsp;</button>
<button class="detail_table_deleteBtn" onclick="openDeleteForm(${detail.b_number })">&nbsp;</button>
<button class="detail_table_goListBtn" onclick="window.location='board_list.do?parkNum=${param.parkNum}&p=${listPage }'">&nbsp;</button>
</td></tr>
</c:when>
<c:when test="${sessionScope.user.id eq 'manager' }">
<tr>
<td class="detail_table_btnGroup" colspan="6" align="right">
<button class="detail_table_deleteBtn" onclick="openDeleteForm(${detail.b_number })">&nbsp;</button>
<button class="detail_table_goListBtn" onclick="window.location='board_list.do?parkNum=${param.parkNum}&p=${listPage }'">&nbsp;</button>
</td></tr>
</c:when>
<c:otherwise>
<tr>
<td class="detail_table_btnGroup" colspan="6" align="right">
<button class="detail_table_goListBtn" onclick="window.location='board_list.do?parkNum=${param.parkNum}&p=${listPage }'">&nbsp;</button>
</td></tr>
</c:otherwise>

</c:choose>
</table>
</div>

<p><br></p>

<div id="comments_div" align="center">
<table class="comments_table">

<c:if test="${empty commentsList }">
<tr>
<td class="comments_table_nothing" colspan="3" align="center">등록 된 코멘트가 없습니다.</td>
</tr>
</c:if>


<c:if test="${!empty commentsList }">
<c:forEach var="comment" items="${commentsList }">
<tr>
<td class="comments_table_writer" width="10%" align="center">${comment.c_writer }</td>
<td class="comments_table_content" width="60%">${comment.c_content }</td>
<td class="comments_table_date" width="25%"><fmt:formatDate value="${comment.c_regdate }" type="both"/></td>

<c:choose>
<c:when test="${comment.c_id eq sessionScope.user.id || sessionScope.user.id eq 'manager' }">
<td width="10"><button class="comments_table_deleteBtn" onclick="confirmDelete(${comment.c_number},${detail.b_number },${param.parkNum },${listPage })">&nbsp;</button></td>
</c:when>
<c:otherwise>
<td width="10">&nbsp;</td>
</c:otherwise>
</c:choose>
</tr>
</c:forEach>
<tr>
<td id="comments_table_paging" align="center" colspan="4">${paging }</td>
</tr>
</c:if>
</table>
</div>
<p></p>
<c:if test="${!empty sessionScope.user }">
<div id="input_div" align="center">
<form name="CommentsCommand" method="post" onsubmit="return checkBlank();">
<table class="input_table" ><tr>
<td><input class="input_table_writer" type="hidden" value="${sessionScope.user.nick }" name="c_writer">${sessionScope.user.nick }</td>
<td><input class="input_table_content" size="100" name="c_content"></td>
<td><input class="input_table_submitBtn" type="submit" value="&nbsp;"></td>
</tr></table>
<input type="hidden" name="c_id" value="${sessionScope.user.id }">
<input type="hidden" name="b_number" value="${detail.b_number}">
<input type="hidden" name="parkNum" value="${param.parkNum}">
<input type="hidden" name="p" value="${listPage}">
</form>
</div>
</c:if>
</body>
</html>