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
		<img alt="양화 안내지도" src="directions/yanghwa.jpg">
	</div>
	
	<div id="view_directions">
		<h5>버스로 오실 때는</h5>
		<ul>
		    <li>당산역(500m)
		        <ul>
		            <li>
						760, 603, 605, 660, 661,6620, 6632, 5714, 6514, 6623, 6633, 6631,
		                69, 631, 8600, 60, 60-3, 2, 88, 300, 70, 70-1
					</li>
		        </ul>
		    </li>
		    <li>해태육교노들길
		        <ul>
		            <li>
						602, 604, 605, 642, 660, 661, 6633, 5712, 6623, 6631, 6632, 6712,
		                6716, 70, 70-1, 70-2
					</li>
		        </ul>
		    </li>
		</ul>
		
		<h5>지하철로 오실 때는</h5>
		<ul>
		    <li>지하철 2호선 당산역 4번 출구로 나와서 &rarr; 노들길나들목 &rarr; 공원 (걸어서 5분)</li>
		    <li>지하철 2호선 당산역 4번 출구에서 보행교(200m)를 통과하여 엘리베이터 이용 &rarr; 공원 (걸어서 5분)</li>
		    <li>지하철 9호선 선유도역 2번 출구로 나와서 &rarr; 선유교에서 공원진입(걸어서10분)</li>
		</ul>
		
		<h5>승용차를 이용하여 오실 때는</h5>
		<ul>
		    <li>올림픽대로 공항방향으로
		        <ul>
		            <li>당산철교 지나 300m 지점에서 진입로 이용</li>
		            <li>양화대교를 지나 1,500m 지점에서 진입로 이용</li>
		        </ul>
		    </li>
		    <li>올림픽대로 잠실방향으로
		        <ul>
		            <li>성산대교 밑 지점에서 우측도로 진출 후 성산지하차도 이용</li>
		            <li>당산역 4번출구 당산나들목 진입</li>
		        </ul>
		    </li>
		</ul>
	</div>
</body>
</html>