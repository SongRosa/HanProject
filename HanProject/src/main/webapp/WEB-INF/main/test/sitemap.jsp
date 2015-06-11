<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
<link href="css/sitemap_style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="top">
		<p id = "siteMap"> 사이트 전체보기 </p>
		<table>			
			<colgroup>
				<col width="21.25%" />
				<col width="5%"/>
				<col width="21.25%" />
				<col width="5%"/>
				<col width="21.25%" />
			</colgroup>
			<thead>
				<tr id = "header">
					<th id = "line"> HOME</th>
					<th></th>
					<th id = "line"> 나눔공간 </th>
					<th></th>
					<th id = "line"> 내서비스 </th>
				</tr>
			</thead>
				<tr id = "item">
					<td>
						<a href="test.do">전체 공원안내</a>
					</td>
					<td></td>
					<td>
						<a href="">공지사항</a>
					</td>
					<td></td>
					<td>
						<a href="log_loginForm.do">로그인</a>
					</td>
				</tr>
				<tr id = "item">
					<td></td>
					<td></td>
					<td><a href="board_list.do?parkNum=0">자유게시판</a></td>
					<td></td>
					<td><a href="">마이페이지</a></td>
				</tr>
		</table>
	</div>
	
	<div>
		<p id="hangang">한강공원안내</p>
		<table id= "tableLine_top">			
			<colgroup>
				<col width="10%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
			</colgroup>
			<thead>			
				<tr height=15>			
					<td><input type="hidden"/></td>
				</tr>
				<tr id = "header">
					<th></th>
					<th>강서</th>
					<th>광나루</th>
					<th>난지</th>
					<th>뚝섬</th>
				</tr>
			</thead>
			<tr>
				<td></td>
				<% int i=1; %>
				<c:forEach var="location" begin="1" end="4">			
					<td><a href="directionPage.do?parkNum=<%=i%>">오시는길</a></td>
					<% i++; %>
				</c:forEach>
			</tr>		
			<tr>
				<td></td>
				<% int j=1; %>
				<c:forEach var="location" begin="1" end="4">
					<td><a href="facility_search.do?parkNum=<%=j%>">공원안내</a></td>
					<%j++; %>
				</c:forEach>
			</tr>
			<tr>
				<td></td>
				<% int k=1; %>
				<c:forEach var="location" begin="1" end="4">
					<td><a href="board_list.do?parkNum=<%=k%>">자유게시판</a></td>
					<% k++; %>
				</c:forEach>
			</tr>
		</table>		
		
		<table>			
			<colgroup>
				<col width="10%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
			</colgroup>
			<thead>
				<tr id = "header">
					<th></th>
					<th>망원</th>
					<th>반포</th>
					<th>양화</th>
					<th>여의도</th>
				</tr>
			</thead>
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="4" >	
					<td><a href="directionPage.do?parkNum=<%=i%>">오시는길</a></td>
					<% i++; %>
				</c:forEach>
			</tr>		
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="4">
					<td><a href="facility_search.do?parkNum=<%=j%>">공원안내</a></td>
					<%j++; %>
				</c:forEach>
			</tr>
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="4">
					<td><a href="board_list.do?parkNum=<%=k%>">자유게시판</a></td>
					<% k++; %>
				</c:forEach>
			</tr>
		</table>
		<table id = "tableLine_bottom">			
			<colgroup>
				<col width="10%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
				<col width="22.5%" />
			</colgroup>
			<thead>
				<tr id = "header">
					<th></th>
					<th>이촌</th>
					<th>잠실</th>
					<th>잠원</th>
					<th></th>
				</tr>
			</thead>
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="3">	
					<td><a href="directionPage.do?parkNum=<%=i%>">오시는길</a></td>
					<% i++; %>
				</c:forEach>
			</tr>		
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="3">
					<td><a href="facility_search.do?parkNum=<%=j%>">공원안내</a></td>
					<%j++; %>
				</c:forEach>
			</tr>
			<tr>
				<td></td>
				<c:forEach var="location" begin="1" end="3">
					<td><a href="board_list.do?parkNum=<%=k%>">자유게시판</a></td>
					<% k++; %>
				</c:forEach>
			</tr>
			<tr height=30>			
				<td><input type="hidden"/></td>
			</tr>
		</table>
	</div>
</body>
</html>