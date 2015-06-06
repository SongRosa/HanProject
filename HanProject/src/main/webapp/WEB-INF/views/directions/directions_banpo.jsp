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
				<option label="반포" value="6"  selected="selected">반포 한강공원</option>
				<option label="양화" value="7">양화 한강공원</option>
				<option label="여의도" value="8">여의도 한강공원</option>
				<option label="이촌" value="9">이촌 한강공원</option>
				<option label="잠실" value="10">잠실 한강공원</option>
				<option label="잠원" value="11">잠원 한강공원</option>
			</select>
		</div>
		<p id="direction_txt">오시는 길</p>	
	</div>

	<div id="view_maps">
		<img alt="반포 안내지도" src="directions/banpo.jpg">
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
					<th scope="row">반포한강공원. 세빛섬</th>
					<td >740, 405</td>
					<td>
						잠수교나들목 <br> (반포대로)
					</td>
					<td>709m</td>
				</tr>							
			</tbody>
		</table>
		
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