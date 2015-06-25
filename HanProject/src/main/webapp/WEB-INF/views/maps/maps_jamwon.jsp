<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html lang="ko" xmlns:v="urn:schemas-microsoft-com:vml">
<head>
	<title>잠원한강공원 편의시설 지도</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/maps_style.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="js/goAnotherPage.js"></script>
	<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=fdd0d443a0b9440e2ac92cffa0fcf77b"></script>
</head>
<body>
<div id ="view_top">
		<input id="parkNum" type="hidden" value = ${parkNum}> 
		<input id="tempNum" type="hidden" value = ${tempNum}>
		<div align="right">
			<label> 다른 공원 가기</label>			
			<select id="map_pageName" name="pageName">
				<option label="강서" value="1">강서 한강공원</option>
				<option label="광나루" value="2">광나루 한강공원</option>
				<option label="난지"  value="3">난지 한강공원</option>
				<option label="뚝섬"  value="4">뚝섬 한강공원</option>
				<option label="망원" value="5">망원 한강공원</option>
				<option label="반포" value="6">반포 한강공원</option>
				<option label="양화" value="7">양화 한강공원</option>
				<option label="여의도" value="8">여의도 한강공원</option>
				<option label="이촌" value="9">이촌 한강공원</option>
				<option label="잠실" value="10">잠실 한강공원</option>
				<option label="잠원" value="11" selected="selected">잠원 한강공원</option>
			</select>
		</div>
		<div align="right">			
			<button id="go_direction" value=${parkNum}> 오시는길가기 </button><br>
			<button id="go_board" value=${parkNum}> 자유게시판가기 </button><br>
		</div>
		<p id="direction_txt">공원 안내지도</p>	
	</div>
	
	<div id="view_content">
		<div id="view_maps">				
			<!--<script type="text/javascript" src="js/TestParkMap.js"></script> -->
			 	<script type="text/javascript" src="js/parkMap.js"></script>
		</div>
		
		<div id="view_btn" align="center">
			<ul >
				<li id="information" value="1"><img id="mapicons1" src="mapIcons/mapIcons1.png"></img></li>
				<li id="parking" value="2"> <img id="mapicons2" src="mapIcons/mapIcons2.png"></img></li>
				<li id="lending" value="3"><img id="mapicons3" src="mapIcons/mapIcons3.png" ></img></li>
				<li id="drinking" value="4"><img id="mapicons4" src="mapIcons/mapIcons4.png" ></img></li>
				<li id="police" value="5"><img id="mapicons5" src="mapIcons/mapIcons5.png"></img></li>
			</ul>
		</div>
	</div>
	
	<div id="view_bottom">
		<c:forEach var="location" items="${location}">
			<input type="hidden" class="${location.f_number}" value="${location.lat}" title="${location.lon}">
		</c:forEach>
	</div>
	
</body>
</html>