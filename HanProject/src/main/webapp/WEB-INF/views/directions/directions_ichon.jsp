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
		<img alt="이촌 안내지도" src="directions/ichon.jpg">
	</div>
	
	<div id="view_directions">
		<p>버스로 오실 때는</p>
		<table summary="버스로 오실 때 하차하는 정류장을 안내하는 표. 하차정류장명, 버스번호, 도보로 이용 가능한 접근로명, 정류장~접근로거리로 구성.">
			<colgroup>
				<col width="23%" />
				<col width="32%" />
				<col width="25%" />
				<col width="20%" />
			</colgroup>
			<thead>
			<tr id="table_header">
			<th scope="col">하차 정류장명</th>
			<th scope="col">버스번호</th>
			<th scope="col">도보로 이용 가능한<br />접근로명</th>
			<th scope="col">정류장~접근로 거리</th>
			</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">한강대교전망카페</th>
					<td>6211</td>
					<td>
						양녕로
					</td>
					<td>100m</td>
				</tr>
				<tr>
					<th scope="row">이촌동 한강맨션. 이촌역</th>
					<td >100, 2016, 3012, 6211</td>
					<td>
						이촌나들목
					</td>
					<td>1.8km</td>
				</tr>				
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">
				1, 4호선 이촌역(4번 출구) </li> <p>
			<li id="subway">
				중앙선 서빙고역(2번 출구)<br />
				<ul>
					<li> ※ 노들섬 : 1호선 용산역 및 신용산역 한강대교 쪽 1km</li>
				</ul>				
			</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">강변북로 워커힐방향으로 오실 때 <p>
				<ul>
					<li>한강철교를 지나 20m 지점의 진입로 이용</li>
					<li>한강대교를 지나 1,500m지점의 진입로 이용</li> <p>
				</ul>
				
			</li>
			<li id="car_maps">강변북로 난지방향으로 오실 때 <p>
				<ul>
					<li>동작대교 전방 200m 지점 서빙고나들목(신동아 쇼핑 앞 지하보차도) 이용</li> <p>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>