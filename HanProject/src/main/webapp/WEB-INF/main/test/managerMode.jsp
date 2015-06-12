<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Insert title here</title>
<link href="css/manager_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

$(function() {
	$(".deleteBtn").click(function() {
		alert("클릭됬음!!");
		var id = $(this).find("img").attr("title");
		alert(id);
		
		window:location="managerDeleteMember.do?id="+id;
	});
});

</script>
</head>
<body>
	<div id="view_top">	
		<p>회원 관리 페이지</p>
	</div>
	<div id="view_content">
		<table>
			<colgroup>
				<col width="13%">
				<col width="13%">
				<col width="13%">
				<col width="15%">
				<col width="20%">
				<col width="24%">
				<col width="2%">
			</colgroup>
			<thead>
				<tr id="table_header">
					<th>아이디</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>전화번호</th>
					<th>이메일주소</th>
					<th>주소</th>					
				</tr>
			</thead>
				<c:forEach var="manager" items="${manager}">
					<tr>
						<td>${manager.id}</td>
						<td>${manager.name}</td>
						<td>${manager.nick}</td>
						<td>${manager.tel}</td>
						<td>${manager.email}</td>
						<td>${manager.address}</td>
						<td class="deleteBtn"><img alt="삭제" src="parkIcon/x_button.png" title="${manager.id}"></td>
					</tr>
				</c:forEach>		
		</table>
	</div>
	<div id ="paging" align="center">${paging}</div>
</body>
</html>