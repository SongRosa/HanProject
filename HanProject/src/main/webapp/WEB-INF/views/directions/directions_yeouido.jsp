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
		<h5>버스로 오실 때는</h5>
		<ul>
			<li>여의나루역 2번출구 하차
				<ul>
					<li>7613, 7611, 5713, 5633, 5618, 5615, 5534, 1008, 753, 261, 61번, 10번</li>
				</ul>
			</li>
			<li>여의나루역 1번출구 하차
				<ul>
					<li>7611, 6623, 5713, 5633, 5534, 753, 360, 261, 262, 662, 7007-1</li>
				</ul>
			</li>
		</ul>
		
		<h5>지하철로 오실 때는</h5>
		<ul>
			<li><a href="http://www.smrt.co.kr/program/Train/Station/Station_info.jsp?station=2528&amp;menuID=001011002001" target="_blank" title="새창(도시철도공사 사이버스테이션)">여의도한강공원 5호선 여의나루역 2,3번출구, 샛강생태공원 9호선 샛강역 4번출구, 9호선 여의도역 1번 출구</a></li>
		</ul>
		
		<h5>승용차를 이용하여 오실 때는</h5>
		<ul>
			<li>올림픽대로 잠실방향으로 오실 때
				<ul>
					<li>여의도 밑으로 진입하여 노량진수산시장 방향으로 들어온 후 주차장 이용</li>
				</ul>
			</li>
			<li>올림픽대로 공항방향으로 오실 때
				<ul>
					<li>한강철교를 지나 63빌딩앞 진입로 이용</li>
				</ul>
			</li>
			<li>강변북로(강북방면)로 오실 때
				<ul>
					<li>원효대교 건너 남단에서 우회전 진입</li>
				</ul>
			</li>
		</ul>

		<h5><버스정류소별 경유노선 번호> - 샛강</h5>
		
		<table summary="버스정류소별 경유노선 번호표. 샛강역앙카라공원, 지적공사_남측, 지적공사_북측, 여의도역_남측, 여의도역_북측, 전경련회관, KBS정류소를 경유하는 노선 안내">
			<caption>버스정류소별 경유노선 번호</caption>
			<colgroup>
				<col />
				<col />
				<col />
				<col />
				<col />
				<col />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">
						샛강역앙카라공원<br />
						(8개노선)
					</th>
					<th scope="col">
						지적공사_남측<br />
						(10개노선)
					</th>
					<th scope="col">
						지적공사_북측<br />
						(13개노선)
					</th>
					<th scope="col">
						여의도역_남측<br />
						(14개노선)
					</th>
					<th scope="col">
						여의도역_북측<br />
						(15개노선)
					</th>
					<th scope="col">
						전경련회관<br />
						(27개노선)
					</th>
					<th scope="col">
						KBS<br />
						(6개노선)
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>162번</td>
					<td>153번</td>
					<td>153번</td>
					<td>153번</td>
					<td>153번</td>
					<td>160번</td>
					<td>162번</td>
				</tr>
				<tr>
					<td>362번</td>
					<td>162번</td>
					<td>162번</td>
					<td>162번</td>
					<td>162번</td>
					<td>162번</td>
					<td>261번</td>
				</tr>
				<tr>
					<td>5012번</td>
					<td>362번</td>
					<td>261번</td>
					<td>362번</td>
					<td>261번</td>
					<td>260번</td>
					<td>262번</td>
				</tr>
				<tr>
					<td>503번</td>
					<td>461번</td>
					<td>262번</td>
					<td>461번</td>
					<td>262번</td>
					<td>261번</td>
					<td>5615번</td>
				</tr>
				<tr>
					<td>505번</td>
					<td>5012번</td>
					<td>461번</td>
					<td>5012번</td>
					<td>461번</td>
					<td>262번</td>
					<td>5618번</td>
				</tr>
				<tr>
					<td>5534번</td>
					<td>503번</td>
					<td>5012번</td>
					<td>503번</td>
					<td>5012번</td>
					<td>360번</td>
					<td>10 부천</td>
				</tr>
				<tr>
					<td>5633번</td>
					<td>5618번</td>
					<td>503번</td>
					<td>5618번</td>
					<td>503번</td>
					<td>2012번</td>
					<td>70-2 부천</td>
				</tr>
				<tr>
					<td>61번</td>
					<td>61번</td>
					<td>5623번</td>
					<td>5623번</td>
					<td>5623번</td>
					<td>503번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>753번</td>
					<td>62번</td>
					<td>61번</td>
					<td>62번</td>
					<td>5615번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>5623번</td>
					<td>6513번</td>
					<td>6513번</td>
					<td>6513번</td>
					<td>5618번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>753번</td>
					<td>753번</td>
					<td>753번</td>
					<td>5713번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>8153번</td>
					<td>108 고양</td>
					<td>8153번(맞춤)</td>
					<td>600번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>5601번</td>
					<td>5601 안산</td>
					<td>5601 안산</td>
					<td>6513번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>7007-1 광주</td>
					<td>7007-1 광주</td>
					<td>661번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>700 부천</td>
					<td>6628번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>5012번</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>10 부천</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>11-1 광명</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>11-2 광명</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>300 인천</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>301 안산</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>320 안산</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>510 시흥</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>700 부천</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>83 부천</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>871 고양</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>88 부천</td>
					<td>&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>