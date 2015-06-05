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
		<img alt="광나루 안내지도" src="directions/kwangnaru.jpg">
	</div>
	
	<div id="view_directions">
		<p>버스로 오실 때는</p>
		<table summary="버스로 오실 때 하차하는 정류장을 안내하는 표. 하차정류장명, 버스번호, 도보로 이용 가능한 접근로명, 정류장~접근로거리로 구성.">
			<thead>
				<tr id="table_header">
					<th scope="col">하차 정류장명</th>
					<th scope="col">버스번호</th>
					<th scope="col">도보로 이용 가능한 접근로명</th>
					<th scope="col">정류장~접근로 거리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">삼성광나루아파트</th>
					<td>340, 3411, 3318</td>
					<td>암사나들목<br />(천호2육갑문)</td>
					<td>500m</td>
				</tr>
				<tr>
					<th rowspan="2" scope="row">천호동공원</th>
					<td rowspan="2">340, 3411, 3318</td>
					<td>나루터길나들목<br />(어린이놀이터 앞 한강접근보도)</td>
					<td>600m</td>
				</tr>
				<tr>
					<td>즈믄길나들목<br />(광나루 한강접근보도)</td>
					<td>400m</td>
				</tr>
				<tr>
					<th scope="row">갑을,미성아파트</th>
					<td>4318</td>
					<td>몽촌나들목<br />(올림픽대교 상류 한강접근보도)</td>
					<td>50m</td>
				</tr>
				<tr>
					<th scope="row">아산병원 앞</th>
					<td>4318</td>
					<td>풍납나들목<br />(올림픽대교 하류 한강접근보도)</td>
					<td>300m</td>
				</tr>
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">5, 8호선 천호역(1번 출구) <p>
				<ul>
					<li>  천호대교 쪽으로 직진하여 진입계단 이용(500m) </li> <p>
				</ul>
			</li>
				
			<li id="subway">8호선 암사역(4번 출구)	<p>
				<ul>
					<li>암사나들목 이용(700m)</li><p>
				</ul>
			</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps" >올림픽대로 하일IC방향으로<p>
				<ul>
					<li>천호대교를 지나 2,000m지점 현대아파트 방향으로 나와 암사토끼굴 우측차로(올림픽대로 지하보차도) 이용</li>
				</ul><p>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로<p>
				<ul>
					<li>암사선사주거지를 지나 400m 지점 진입로 이용</li><p>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>