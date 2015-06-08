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
				<option label="난지"  value="3" selected="selected">난지 한강공원</option>
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

	<div id="view_maps">
		<img alt="난지 안내지도" src="directions/nanji.jpg">
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
					<th scope="row">마포구청역</th>
					<td >163, 601, 606, 672, 673, 6714</td>
					<td>
						증산로
					</td>
					<td>1.5km</td>
				</tr>							
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">6호선 마포구청역(7번 출구)<p>
				<ul>
					<li>
						버스정거장 → 오른쪽 내리막길 홍제천변 산책로 → 홍제천 보행교 → 불광천 보행교- 한강합류부에서 오른쪽방면으로 직진 1,300m (도보 25분) <p>
					</li>
				</ul>
			</li>
			<li id="subway">6호선 월드컵경기장역(3번 출구) <p>
				<ul>
					<li>
						사거리에서 횡단보도 2개 건너고 → 월드컵대교 방향 직진 → 월드컵대교 보도끝 계단이용 → 주차장옆길 → 난지안내센터(도보 30분) <p>
					</li>
				</ul>
			</li>
			<li id="subway">6호선 월드컵경기장역(1번 출구) <p>
				<ul>
					<li>
						주차장옆 산책로 → 계단이용 불광천변 산책로 진입 → 하천합류부 오른쪽 한강방향 → 한강합류부에서 오른쪽 → 난지안내센터(도보 35분) <p>
					</li>
				</ul>
			</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">강변북로를 이용하여 오실 때 <p>
				<ul>
					<li>
						일산 방향으로 성산대교 북단을 지나 1km지점에 복합연결통로(난지나들목)으로 진입하여 성산대교 방향으로 100m 직진 후 공원 진입로 진입 <p>
					</li>
				</ul> 
			</li>			
			
			<li id="car_maps">올림픽대로를 이용하여 오실 때 <p>
				<ul>
					<li>
						김포공항 방향으로 진행하다가 가양대교를 건너 <strong>성산대교 방향으로 200m 직진후 공원 진입로 진입 
					</li>
					
					<li>월드컵 경기장 사거리에서 강변북로 성산대교 방향으로 P턴 후 진입</li> <p>
				</ul>
			</li>
			<li id="car_maps">네비게이션 주소 : 서울 마포구 한강난지로 162(상암동 487-116) ☎ 안내전화 : 02)3780-0611~2( 한강공원 난지안내센터)
			</li>
		</ul>
	</div>
</body>
</html>