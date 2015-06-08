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
				<option label="이촌" value="9">이촌 한강공원</option>
				<option label="잠실" value="10">잠실 한강공원</option>
				<option label="잠원" value="11" selected="selected">잠원 한강공원</option>
			</select>
		</div>
		<div align="right">			
			<button id="go_maps" value=${parkNum}> 공원안내가기 </button><br>
			<button id="go_board" value=${parkNum}> 자유게시판가기 </button><br>
		</div>
		<p id="direction_txt">오시는 길</p>	
	</div>
	
	<div id="view_maps">
		<img alt="잠원 안내지도" src="directions/jamwon.jpg">
	</div>
	
	<div id="view_directions" >
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
					<th scope="row">신사중학교</th>
					<td >143, 351, 362, 440,  472, 3011,<br/> 4318, 4412, 4419, 6010</td>
					<td>
						강남나들목<br />
						(강남육갑문)
					</td>
					<td>500m</td>
				</tr>
				<tr>
					<th scope="row">롯데캐슬아파트 앞</th>
					<td>143</td>
					<td>
						잠원나들목<br />
						(서초 제2육갑문)
					</td>
					<td>900m</td>
				</tr>
				<tr>
					<th scope="row">신반포18차 아파트 앞</th>
					<td>351, 362, 4318</td>
					<td>
						잠원나들목<br />
						(서초 제2육갑문)
					</td>
					<td>200m</td>
				</tr>
				<tr>
					<th scope="row">
						한남대교 전망카페 앞<br />
						(강남쪽 방향에서 타실때)
					</th>
					<td>140, 142, 144, 241A, 241B, 402,  <br/>407, 408,  420, 421, 470, 471, <br/> 472, 3011</td>
					<td>계단 및 엘리베이터</td>
					<td>50m</td>
				</tr>
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li >3호선 신사역(5번 출구)</li>
			<li >3호선 압구정역(1번 출구)</li>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">올림픽대로 잠실방향으로 오실때 (신잠원나들목 이용)<p/>
				<ul>
					<li>
						반포대교→ 한남대교에서 경부고속도로(부산) 가는 방향→고속터미널 방향으로 우회전 → 570m지점에서&nbsp;우회전 → 신잠원나들목 진입<br />
						(신반포 16차 잠원한신아파트 119동과 반포변전소 사이로 진입)<p/>
					</li>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 잠실방향으로 오실때 (신사나들목 이용)<p/>
				<ul>
					<li>
						한남대교→ 동호대교 앞에서 압구정역 방향 진출로→ 압구정사거리에서 우회전→ 50m진행중 우측 신사 나들목으로 진입.<br />
						(현대고등학교와 신사중학교 사잇길)<p/>
					</li>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로 (신잠원나들목 이용)<p/>
				<ul>
					<li>
						한남대교 남단램프→경부고속도로(부산)가는 방향으로 우측차선으로 진입해서 우회전 → 터미널 방향으로 약 570m지점에서 우회전 → 신잠원나들목 진입<br />
						(신반포 16차 잠원한신 119동과 반포변전소 사이로 진입)<p/>
					</li>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로 (신사나들목 이용)<p/>
				<ul>
					<li>
						동호대교를 지나 우측차선으로 부산, 강남대로 방향으로 진입 → 고가램프따라 진행 → 한남대교 남단 밑 교차로에서 좌회전 압구정방향으로 진행 → 신사중학교 앞에서 좌회전 → 신사나들목 진입.<br />
						(현대고등학교와 신사중학교 사잇길)<p/>
					</li>
				</ul>
			</li>
		</ul>

	</div>
</body>
</html>