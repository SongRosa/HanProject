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
<script>
$(function(){
	
	var number = ${param.parkNum}
	
	if(number!=0){
		$("option:first").removeAttr("selected");
		$("option:nth-child(${param.parkNum+1})").attr("selected","selected");
	}

	$("#p_number").change(function(){
		var g_num =  $(":selected").attr("value");
		window.location="board_list.do?parkNum="+g_num;
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
	<div id=p_number_div>
		
		</div>
	<div id="board_table" align="center">

		<table class="board_table">
		
			<tr>
				<th class="col1">글번호</th>
				<th class="col2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<select id="p_number" name="p_number">
			<option id="p_number0" selected="selected" value="0">전체글</option>
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
				</th>
				
				<th class="col3">제&nbsp;&nbsp;목</th>
				<th class="col4">작성자</th>
				<th class="col5">작성일</th>
				<th class="col6">조회수</th>
			</tr>

			<c:forEach var="one" items="${list }" >
				<tr class="list">
					<td class="num">${one.b_number }</td>
					<td class="name">&lt;${one.p_name }&gt;</td>
					<td class="subject"><a href="board_detail.do?b_number=${one.b_number }">${one.b_subject }</a>&nbsp;
						[${one.c_count }]</td>
					<td class="name">${one.b_writer }</td>
					<td class="date"><fmt:formatDate value="${one.b_regdate }" type="date" /></td>
					<td class="hit">${one.b_count }</td>
				</tr>
			</c:forEach>
			<tr>
			<td style="float: right;" colspan="6" align="right">
			<button class="board_write_btn" onclick="window.location='board_insert.do'">&nbsp;</button>
			</td>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<div align="center">${paging }</div>
	<br>
	<div class="board_searchbar" align="center">
		<form name="search" onsubmit=" return preSearch();" method="post">
			<select name="search_option">
				<option selected="selected" value="sub">제목</option>
				<option value="wri">작성자</option>
			</select> 
			<input class="search_text" size="25" maxlength="25" name="search_value" />
			<input class="btn_search" type="submit" value="&nbsp;">
		</form>
	</div>
</body>
</html>