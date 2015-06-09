<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/maps_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="js/goAnotherPage.js"></script>
</head>

<body>
<div id ="view_top">
		<div align="right">
			<label> 다른 공원 가기</label>			
			<select id="map_pageName" name="pageName">
				<option label="강서" value="1" >강서 한강공원</option>
				<option label="광나루" value="2" selected="selected">광나루 한강공원</option>
				<option label="난지"  value="3">난지 한강공원</option>
				<option label="뚝섬"  value="4">뚝섬 한강공원</option>
				<option label="망원" value="5">망원 한강공원</option>
				<option label="반포" value="6">반포 한강공원</option>
				<option label="양화" value="7">양화 한강공원</option>
				<option label="여의도" value="8">여의도 한강공원</option>
				<option label="이촌" value="9">이촌 한강공원</option>
				<option label="잠실" value="10">잠실 한강공원</option>
				<option label="잠원" value="11">잠원 한강공원</option>
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
			
		</div>
		
		<div id="view_btn" align="center">
			<ul >
				<li id="information"><img id="mapicons" src="mapIcons/information.png"></img></li>
				<li>
					<input type="hidden" id="information_d" value = "37.5178442">
					<input type="hidden" id="information_r" value = "127.0818811">
				</li>
				<li id="parking"><img id="mapicons" src="mapIcons/bicycle_parking.png"></img></li>
				<li id="lending"><img id="mapicons" src="mapIcons/bicycle.png" ></img></li>
				<li id="drinking"><img id="mapicons" src="mapIcons/drinking.png" ></img></li>
				<li id="p"><img id="mapicons" src="mapIcons/police.png"></img></li>
			</ul>
		</div>
	
	</div>
	
	<div id="view_bottom">
	
	</div>
</body>
</html>