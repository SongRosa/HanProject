<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>오시는 길 안내 페이지</title>
<link href="css/directions_style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id ="view_top">
		<p id="direction_txt">오시는 길</p>
	</div>
	
	<div id="view_maps">
		<img alt="잠실 안내지도" src="directions/jamsil.jpg">
	</div>
	
	<div id="view_directions">
		<p>버스로 오실때는</p>
		<ul>
			<li>정류장 명칭 : 잠실대교 전망카페</li>
			<li>노선버스 : 302, 303, 320, 2412, 2415, 3215, 3216</li>
		</ul>
		
		<p>지하철로오실때는</p>
		<ul>
			<li>2호선 성내역 3, 4번 출구(400m) : 한강공원 연결 보행로 통행가능</li>
			<li>2, 8호선 잠실역 6번 출구 (800m) : 잠실대교(남단)방향으로 직진 후 진입로 이용</li>
			<li>2호선 신천역 7번 출구(700m) : 석촌나들목(수영장앞 한강접근보도) 이용</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">올림픽대로 하일IC방향으로 오실때 <p>
				<ul>
					<li>청담대교를 지나 900m 지점 잠실종합운동장 방향으로 진입하여 신천나들목(왼쪽 지하차도) 이용</li><p>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로 오실 때<p>
				<ul>
					<li>잠실철교를 지나 190m 지점에서 잠실역 방향으로 진입 후 540m 지점의 공원 진입로 이용 (자연학습장, 축구장 방향)</li>
					<li>잠실대교를 지나 1,500m 지점 공원로 이용(유람선 방향)</li>
				</ul>
			</li>
		</ul>
		

	</div>
</body>
</html>