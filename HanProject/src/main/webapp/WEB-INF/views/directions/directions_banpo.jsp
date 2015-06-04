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
		<img alt="반포 안내지도" src="directions/banpo.jpg">
	</div>
	
	<div id="view_directions">
	
	<p>버스로 오실 때는</p>
		<ul>
			<li id="header">간선버스 <p>
			<ul>
				<li id="bus_number">740번 간선버스(신촌교통 02-3158-3222)<p>
					<ul>
						<li>첫차 덕은동 04:00 삼성역 05:10</li>
						<li>막차 덕은동 22:40 삼성역 23:50</li>
						<li>정류장안내 : 덕은동종점-수색역앞-모래내시장가좌역-신촌로타리-서강대학교-반포한강공원플로팅아일랜드-서초역-강남역-무역센터삼성역</li>
					</ul>
				</li><p>
				<li id="bus_number">405번 간선버스(삼성여객 02-793-8181)<p>
					<ul>
						<li>첫차 염곡동 04:00 원효로2가 05:15</li>
						<li>막차 염곡동 22:50 원효로2가 24:10</li>
						<li>정류장안내 : 염곡동구룡사-양재역-서초구청-서초역-서빙고역-한강진역-시청앞-서울역-숙대정문-숭례문-동빙고동-반포한강공원플로팅아일랜드-서울지방조달청-남부터미널-시민의숲-AT센터양재꽃시장</li>
					</ul>
				</li>
			</ul>
			</li>
			<p>
			<li id="header">정거장<p> 
				<ul>
					<li id="bus_number">고속터미널역 정거장(신반포로 정거장번호 22020, 잠원로 정거장번호 22211) : 고속터미널역 8-1번, 8-2번 출구</li>
					<li id="bus_number">센트럴시티 정거장(사평로 정거장번호 22213) : 고속터미널역 3번 출구</li>
					<li id="bus_number">녹사평역 정거장(이태원로 정거장번호 03187) : 6호선 녹사평역 4번 출구</li>
					<li id="bus_number">전쟁기념관앞 정거장(정거장번호 03185) : 6호선 삼각지역 13번 출구에서 230미터, 4호선 삼각지역 1번출구에서 370미터</li>
				</ul>
			</li>
		</ul>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">3,7,9호선 고속터미널역<p>
				<ul>
					<li>
						8-1, 8-2번 출구로 나와 우성아파트 방향에서 테니스장이 나올때까지 직진한 후 테니스장에서 우측 반포 나들목으로 공원 진입
					</li>
				</ul><p>
			</li>
			
			<li id="subway">9호선 신반포역<p>
				<ul>
					<li>
						1번 출구로 나와 반포2동 주민센터 방향으로 직진하여 어린이 놀이터가 나오면 끼고 돌아 올림픽대로 방음벽이 있는 곳에서 좌측으로 30m 지점의 반포 안내센터 나들목 이용</li>
				</ul><p>
			</li>
			
			<li id="subway">1, 9호선 동작역<p>
				<ul>
					<li>
						1, 2번 출구로 나와 반포천과 한강합류지점에서 우측인 반포대교 방향으로 거슬러 올라오면 10여분후 서래섬 도착	
					</li>
				</ul><p>
			</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">올림픽대로 잠실방향으로 오실 때 <p>
				<ul>
					<li>한남대교 남단램프에서 다시 김포공항 방향 올림픽대로를 진입하여 500m 지점 진입(상류주차장), 반포대교 통과하여 150m 지점 진입(하류주차장)</li>
					<p>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로 오실 때<p>
				<ul>
					<li>한남대교 지나 500m 지점 진입(상류주차장), 반포대교 통과하여 150m 지점 진입 (하류주차장) <span class="ps">네비게이션 안내 : 서초구 반포2동</span></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>