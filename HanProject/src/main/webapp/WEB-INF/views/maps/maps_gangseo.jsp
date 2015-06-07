<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
				<option label="강서" value="1" selected="selected">강서 한강공원</option>
				<option label="광나루" value="2">광나루 한강공원</option>
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
			<button id="information"><img id="mapicons" src="mapIcons/information.png"></img></button>
			<button id="park_bicycle"><img id="mapicons" src="mapIcons/park_bicycle.png"></button>
			<button id="lend_bicycle"><img id="mapicons" src="mapIcons/lend_bicycle.png" ></button>
			<button id="drink_water"><img id="mapicons" src="mapIcons/drink_water.png" ></button>
			<button id="policestation"><img id="mapicons" src="mapIcons/policestation.png"></button>
		</div>
	
	</div>
	
	<div id="view_bottom">
	
	</div>
</body>
</html>