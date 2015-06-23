<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page trimDirectiveWhitespaces="true"%>

<html>

<head>

<title>자유게시판 목록</title>
<link href="css/board/list_style.css" rel="stylesheet" type="text/css"/>
<script src="http://code.jquery.com/jquery.js"></script>

</head>
<body>
	<div id="board_table" align="center">

		<table class="board_table">
		
			<tr>
				<th class="col1">글번호</th>
				<th class="col3">제&nbsp;&nbsp;목</th>
				<th class="col4">작성자</th>
				<th class="col5">작성일</th>
				<th class="col6">조회수</th>
			</tr>
			

			<c:forEach var="one" items="${list }" >
				<tr class="list">
					<td class="num">${one.n_number }</td>
					<td class="subject">
					<c:if test="${empty param.p }" >
					<a href="notice_detail.do?n_number=${one.n_number }&p=1">
					${one.n_subject }</a>&nbsp;</c:if>
					<c:if test="${!empty param.p }" >
					<a href="notice_detail.do?n_number=${one.n_number }&p=${param.p}">
					${one.n_subject }</a>&nbsp;</c:if>
			
						</td>
					<td class="name">${one.n_writer }</td>
					<td class="date"><fmt:formatDate value="${one.n_regdate }" type="date" /></td>
					<td class="hit">${one.n_count }</td>
				</tr>
			</c:forEach>
			<c:if test="${sessionScope.user.id eq 'manager'  }">
			<tr>
			<td style="float: right;" colspan="5" align="right">
			<button class="board_write_btn" onclick="window.location='notice_insert.do'">&nbsp;</button>
			</td>
			</tr>
			</c:if>
		</table>
	</div>
	<br>
	<br>
	<div align="center">${paging }</div>
	<br>
	
</body>
</html>