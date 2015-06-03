<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>자유게시판 목록</title>
<script type="text/javascript">
function preSearch() {
	if(document.search.search_value.value==""){
		alert("검색하실 내용을 입력하세요.")
		document.search.search_value.focus();
		return false;
	}
}

</script>
</head>
<body>
<div align="center">
	<table width="80%">
		<tr>
			<td>글번호</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>

		<c:forEach var="one" items="${list }">
			<tr>
				<td>${one.b_number }</td>
				<td><a href="detail.do?b_number=${one.b_number }">${one.b_subject }</a>&nbsp; [${one.c_count }]</td>
				<td>${one.b_writer }</td>
				<td><fmt:formatDate value="${one.b_regdate }" type="date" /></td>
			</tr>
		</c:forEach>
		
	</table>
	</div>
	<div align="right">
	<button onclick="window.location='''">글쓰기</button></div>
	<br>
	<div align="center">
	${paging }
	</div>
	<br>
	<div align="center">
	<form name="search" onsubmit=" return preSearch();" method="post" >
		<select name="search_option">
			<option selected="selected" value="sub">제목</option>
			<option value="wri">작성자</option>
		</select> 
		<input maxlength="15" name="search_value" />
		<input type="submit" value="검색">
	</form>
	</div>
</body>
</html>