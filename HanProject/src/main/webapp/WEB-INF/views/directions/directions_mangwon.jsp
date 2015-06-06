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
				<option label="망원" value="5" selected="selected">망원 한강공원</option>
				<option label="반포" value="6">반포 한강공원</option>
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
		<img alt="망원 안내지도" src="directions/mangwon.jpg">
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
					<th scope="row">망원유수지.<br> 망원한강공원</th>
					<td>마포16</td>
					<td>
						망원로
					</td>
					<td>431m</td>
				</tr>
				<tr>
					<th scope="row">망원유수지.<br> 망원한강공원</th>
					<td >마포09</td>
					<td>
						합정나들목<br>(망원로)
					</td>
					<td>500m</td>
				</tr>				
			</tbody>
		</table>
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">6호선 망원역(1번출구) <p>
				<ul>
					<li>마포 09번 버스 이용</li><p>
				</ul>
			</li>			
			<li id="subway">2호선 합정역(1번출구)<p>
				<ul>
					<li>마포 16번 버스 이용</li><p>
				</ul>
			</li>
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