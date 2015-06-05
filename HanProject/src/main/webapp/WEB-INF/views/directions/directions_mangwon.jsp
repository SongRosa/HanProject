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
		<img alt="망원 안내지도" src="directions/mangwon.jpg">
	</div>
	
	<div id="view_directions">
		<p>버스로 오실 때는</p>
		<ul>
			<li>마을버스 9번(지하철6호선 <a href="http://www.smrt.co.kr/Train/Station/Station_info.jsp?station=2622" target="_blank" title="새창으로 열립니다.">☞망원역</a> 1번출구)</li>
			<li>마을버스 16번(지하철2호선 합정역 1번 출구)</li>
		</ul>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li>지하철6호선 망원역 1번출구에서 9번 마을버스</li>
			<li>지하철2호선 합정역 1번 출구에서 16번 마을버스</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">일산방향<p>
				<ul>
					<li>양화대교 300m 지나 우측으로 빠져나가 좌측 500m지점 진입로(토끼굴)이용</li> <p>
				</ul>
			</li>
			<li id="car_maps">구리방향<p>
				<ul>
					<li>성산대교 지나 700m 지점 우측 진입로 이용</li><p>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>