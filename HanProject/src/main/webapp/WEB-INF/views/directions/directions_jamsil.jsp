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
				<option label="망원" value="5" >망원 한강공원</option>
				<option label="반포" value="6">반포 한강공원</option>
				<option label="양화" value="7">양화 한강공원</option>
				<option label="여의도" value="8">여의도 한강공원</option>
				<option label="이촌" value="9">이촌 한강공원</option>
				<option label="잠실" value="10" selected="selected">잠실 한강공원</option>
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
		<img alt="잠실 안내지도" src="directions/jamsil.jpg">
	</div>
	
	<div id="view_directions">
		<p>버스로 오실때는</p>
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
					<th scope="row">잠실대교 전망카페</th>
					<td >302, 303, 320, 2412, 2415, <br>3215, 3216</td>
					<td>
						잠실나들목 <br> (송파대로)
					</td>
					<td>284m</td>
				</tr>							
			</tbody>
		</table>
		
		<p>지하철로오실때는</p>
		<ul>
			<li id="subway">2호선 성내역(3, 4번 출구) <p>
				<ul>
					<li> 한강공원 연결 보행로 통행가능(400m)</li><p>
				</ul>
			</li>
			<li id="subway">2, 8호선 잠실역(6번 출구)<p>
				<ul>
					<li>잠실대교(남단)방향으로 직진 후 진입로 이용(800m)</li>		<p>		
				</ul>
			</li>
			<li id="subway">2호선 신천역(7번 출구)<p>
				<ul>
					<li>석촌나들목(수영장앞 한강접근보도)이용(700m)</li><p>
				</ul>
			</li>
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