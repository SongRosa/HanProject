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
		<img alt="양화 안내지도" src="directions/yanghwa.jpg">
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
					<th scope="row">당산역</th>
					<td >760, 603, 605, 660, 661,6620,<br> 6632, 5714, 6514, 6623, 6633, <br>6631, 69, 631, 8600,60, 60-3,<br>  2, 88, 300, 70, 70-1</td>
					<td>
						노유나들목
					</td>
					<td>500m</td>
				</tr>
				<tr>
					<th scope="row">양평동한솔아파트</th>
					<td>602, 604, 605, 642, 660, 661,<br> 6633, 5712, 6623, 6631, 6632, <br>6712, 6716, 70, 70-1, 70-2</td>
					<td>
						노들로
					</td>
					<td>700m</td>
				</tr>				
			</tbody>
		</table>
		
		<p>지하철로 오실 때는</p>
		<ul>
		    <li id="subway">2호선 당산역(4번 출구) <p>
		    	<ul>
		    		<li>노들길나들목쪽으로 공원진입 (걸어서 5분)</li><p>
		    	</ul>
		    </li>
		    
		    <li id="subway">2호선 당산역(4번 출구) <p>
		    	<ul>
		    		<li>보행교(200m)를 통과하여 엘리베이터 이용 &rarr; 공원 (걸어서 5분)</li>
		    	</ul>
		    </li><p>
		    <li id="subway">9호선 선유도역(2번 출구)<p>
		    	<ul>
		    		<li>선유교에서 공원진입(걸어서10분)</li>
		    	</ul>
		    </li><p>
		</ul>
		
		<p>승용차를 이용하여 오실 때는</p>
		<ul>
		    <li id="car_maps">올림픽대로 공항방향으로 <p>
		        <ul>
		            <li>당산철교 지나 300m 지점에서 진입로 이용</li>
		            <li>양화대교를 지나 1,500m 지점에서 진입로 이용</li> <p>
		        </ul>
		    </li>
		    <li id="car_maps">올림픽대로 잠실방향으로 <p>
		        <ul>
		            <li>성산대교 밑 지점에서 우측도로 진출 후 성산지하차도 이용</li>
		            <li>당산역 4번출구 당산나들목 진입</li> <p>
		        </ul>
		    </li>
		</ul>
	</div>
</body>
</html>