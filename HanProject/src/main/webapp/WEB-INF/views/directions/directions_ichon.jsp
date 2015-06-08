<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>오시는 길 안내 페이지</title>
<link href="css/directions_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="js/goAnotherPage.js"></script>
</head>
<body>
	<div id ="view_top">
		<div align="right">
			<label> 다른 공원 가기</label>			
			<select id="pageName" name="pageName">
				<option label="강서" value="1">강서 한강공원</option>
				<option label="광나루" value="2">광나루 한강공원</option>
				<option label="난지"  value="3">난지 한강공원</option>
				<option label="뚝섬"  value="4">뚝섬 한강공원</option>
				<option label="망원" value="5">망원 한강공원</option>
				<option label="반포" value="6">반포 한강공원</option>
				<option label="양화" value="7">양화 한강공원</option>
				<option label="여의도" value="8">여의도 한강공원</option>
				<option label="이촌" value="9"  selected="selected">이촌 한강공원</option>
				<option label="잠실" value="10">잠실 한강공원</option>
				<option label="잠원" value="11">잠원 한강공원</option>
			</select>
		</div>
		<div align="right">			
			<button id="go_maps" value=${parkNum}> 공원안내가기 </button><br>
			<button id="go_board" value=${parkNum}> 자유게시판가기 </button><br>
		</div>
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