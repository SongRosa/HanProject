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
			<button id="go_maps" value=${parkNum}> 공원안내가기 </button><br>
			<button id="go_board" value=${parkNum}> 자유게시판가기 </button><br>
		</div>
		<p id="direction_txt">오시는 길</p>	
	</div>
	
	<div id="view_maps" align="center">
		<img alt="강서 안내지도" src="directions/gangseo.jpg">
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
					<th scope="row">생태공원</th>
					<td >강서07</td>
					<td>
						정곡나들목 <br> (양천로27길)
					</td>
					<td>811m</td>
				</tr>						
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">5호선 방화역(2번 출구) <p>
				<ul>
					<li> 강서07번 마을버스 탑승 &rarr; 약 5분 소요 &rarr; 생태공원 정류장하차 &rarr; 50m앞 올림픽도로 아래 정곡나들목 통과 &rarr; 강서한강공원
					</li>
				</ul>
			</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">잠실, 강북방면에서 오실 때 <p>
				<ul>
					<li>잠실, 강북방면에서 김포공항방향 올림픽대로 진행 &rarr; 가양대교를 지나면 4차선으로 진행 &rarr; 
						방화대교 100m 전방에서 오른쪽 공원진입로(내리막길)로 진입</li>
				</ul>
			</li>
			 <p>
			<li id="car_maps">김포, 부천, 공항, 행주대교방면에서 오실 때  <p>
				<ul>
					<li>김포, 부천, 공항, 행주대교방면에서 잠실방향 올림픽대로 4차선을 진행 &rarr; 방화대교 300m 전방에서 오른쪽 공원진입로 진입(내리막길) &rarr; 
					좌측 생태공원 육갑문(개화나들목)을 통과하여 강서생태습지공원 진입</li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>