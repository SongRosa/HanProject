<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>자유게시판 목록</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$(function(){

	$("#p_number").change(function(){
		var g_num =  $(":selected").attr("value");
		window.location="list.do?g="+g_num;
	});
	
});
</script>
<script type="text/javascript">
	function preSearch() {
		if (document.search.search_value.value == "") {
			alert("검색하실 내용을 입력하세요.")
			document.search.search_value.focus();
			return false;
		}
	}
	
</script>
</head>
<body>
	<div id="board_tab" align="left">
		<select id="p_number" name="p_number">

			<option id="p_number0" selected="selected" value="0">글분류</option>
			<option id="p_number1" value="1">강서</option>
			<option id="p_number2" value="2">광나루</option>
			<option id="p_number3" value="3">난지</option>
			<option id="p_number4" value="4">뚝섬</option>
			<option id="p_number5" value="5">망원</option>
			<option id="p_number6" value="6">반포</option>
			<option id="p_number7" value="7">양화</option>
			<option id="p_number8" value="8">여의도</option>
			<option id="p_number9" value="9">이촌</option>
			<option id="p_number10" value="10">잠실</option>
			<option id="p_number11" value="11">잠원</option>
			<option id="p_number12" value="12">자유글</option>
		</select>

	</div>
	<div id="board_table" align="center">
		<table width="1000">
			<tr>
				<td>글번호</td>
				<td>글분류</td>
				<td>글제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>

			<c:forEach var="one" items="${list }">
				<tr>
					<td>${one.b_number }</td>
					<td>${one.p_name }</td>
					<td><a href="detail.do?b_number=${one.b_number }">${one.b_subject }</a>&nbsp;
						[${one.c_count }]</td>
					<td>${one.b_writer }</td>
					<td><fmt:formatDate value="${one.b_regdate }" type="date" /></td>
					<td>${one.b_count }</td>
				</tr>
			</c:forEach>

		</table>
	</div>
	<div id="board_write_btn" align="right">
		<button onclick="window.location='insert.do'">글쓰기</button>
	</div>
	<br>
	<div align="center">${paging }</div>
	<br>
	<div id="board_searchbar" align="center">
		<form name="search" onsubmit=" return preSearch();" method="post">
			<select name="search_option">
				<option selected="selected" value="sub">제목</option>
				<option value="wri">작성자</option>
			</select> <input maxlength="15" name="search_value" /> <input type="submit"
				value="검색">
		</form>
	</div>
</body>
</html>