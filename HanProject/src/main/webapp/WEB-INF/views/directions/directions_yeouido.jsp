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
		<img alt="광나루 안내지도" src="directions/yeouido.jpg">
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
					<th scope="row">여의도중학교</th>
					<td >261, 5534, 5618, 5633, 7611, 108</td>
					<td>
						여의나루로
					</td>
					<td>255m</td>
				</tr>	
				<tr>
					<th scope="row">여의나루역(2번 출구)</th>
					<td >7613, 7611, 5713, 5633, 5618, 5615, 5534, 1008, 753, 261, 61, 10</td>
					<td>
						여의나루로
					</td>
					<td>340m</td>
				</tr>
				<tr>
					<th scope="row">여의나루역(1번 출구)</th>
					<td >7611, 6623, 5713, 5633, 5534, 753, 360, 261, 262, 662, 7007-1</td>
					<td>
						여의나루로
					</td>
					<td>340m</td>
				</tr>
				<tr>
					<th scope="row">KBS</th>
					<td >162, 261, 262, 5615, 5618,<br> 10(부천), 70-2(부천)</td>
					<td>
						여의공원로
					</td>
					<td>500m</td>
				</tr>				
				<tr>
					<th scope="row">지적공사(남측)</th>
					<td >153, 162, 362, 461, 5012,<br> 503, 5618, 61, 753, 5623</td>
					<td>
						의사당대로
					</td>
					<td>890m</td>
				</tr>	
				<tr>
					<th scope="row">지적공사(북측)</th>
					<td >153, 162, 261, 262, 461, 5012, 503, <br>5623, 62, 6513, 753, 8153, 5601</td>
					<td>
						의사당대로
					</td>
					<td>1.09km</td>
				</tr>	
				<tr>
					<th scope="row">샛강역. 앙카라공원</th>
					<td >162, 362, 5012, 503, 505, 5534, <br>5633, 61</td>
					<td>
						의사당대로
					</td>
					<td>1.4km</td>
				</tr>										
				<tr>
					<th scope="row">전경련회관</th>
					<td >160, 162, 260, 261, 262, 360, 2012, <br>503, 5615, 5618, 5713, 600, 6513,<br> 661, 6628, 5012, 10(부천),<br> 11-1(광명), 11-2(광명), 300(인천), <br>301(안산)
						 302(안산), 510(시흥), <br>700(부천), 83(부천), 871(고양),<br> 88(부천)</td>
					<td>
						여의대로
					</td>
					<td>515m</td>
				</tr>
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
			<li id="subway">여의도한강공원 5호선 여의나루역 2,3번출구</li> <p>
			<li id="subway">샛강생태공원 9호선 샛강역 4번출구</li><p>
			<li id="subway">9호선 여의도역 1번 출구</li><p>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
			<li id="car_maps">올림픽대로 잠실방향으로 오실 때 <p>
				<ul>
					<li>여의도 밑으로 진입하여 노량진수산시장 방향으로 들어온 후 주차장 이용</li> <p>
				</ul>
			</li>
			<li id="car_maps">올림픽대로 공항방향으로 오실 때 <p>
				<ul>
					<li>한강철교를 지나 63빌딩앞 진입로 이용</li> <p>
				</ul>
			</li>
			<li id="car_maps">강변북로(강북방면)로 오실 때 <p>
				<ul>
					<li>원효대교 건너 남단에서 우회전 진입</li> <p>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>