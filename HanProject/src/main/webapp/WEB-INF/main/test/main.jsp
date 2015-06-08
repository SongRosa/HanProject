<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/main_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">

	$(function(){
		var a=0;
		var b=0;
		
		function display(i){
			$("#main_picture").css("display", "none");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			
			$("#park_container").show("clip");
			$('.'+i).css("display", "block");
			$("#park_img").attr("src", "river_picture/river"+i+".jpg");
		}
		
		$("#park_icon button").click(function(){
			a=1;
			var i = $(this).val();
			c=Number(i);
			b+=c;
			
			if(b==(c*2)) {
				//display(i);
				b-=c;
			} else {
				b=0;
				b+=c;
				
				if(a==1) {
					$("#park_container").css("display", "none");
					display(i);
				}
			}
		});
		
		$("#close").click(function(){
			a=0;
			$("#park_container").fadeOut(300,function(){
				$("#main_picture").fadeIn(300);
			});
			
			
			//$("#park_container").css("display", "none"); 
		});
	});
</script>
</head>
<body>
	<div id="container">
	
		<div id="home">
		
			<div id="main_picture">
				<img src="picture/hanrivermap.jpg" width="980" height="380">
			</div>
			
			<div id="park_container">
			
				<div id="park_picture">
					<img id="park_img" src="" width="500" height="380">
				</div>
				
				<div id="park_introduce">
				
					<div align="right" ><button id="close">X</button></div>
					
					<div class="0" id="park_name" align="center" style="width: 200">
						<div class="1"><img src="park_name/name1.png" width="200" height="70"></div>
						<div class="2"><img src="park_name/name2.png" width="200" height="70"></div>
						<div class="3"><img src="park_name/name3.png" width="200" height="70"></div>
						<div class="4"><img src="park_name/name4.png" width="200" height="70"></div>
						<div class="5"><img src="park_name/name5.png" width="200" height="70"></div>
						<div class="6"><img src="park_name/name6.png" width="200" height="70"></div>
						<div class="7"><img src="park_name/name7.png" width="200" height="70"></div>
						<div class="8"><img src="park_name/name8.png" width="200" height="70"></div>
						<div class="9"><img src="park_name/name9.png" width="200" height="70"></div>
						<div class="10"><img src="park_name/name10.png" width="200" height="70"></div>
						<div class="11"><img src="park_name/name11.png" width="200" height="70"></div>
					</div>
					
					
					
					<div class="0" id="park_info">
					
					<div class="1">
				 		<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 강서구 양천로27길 <br/>279-23 (방화동 47)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0621~3</td>
							</tr>
						</table>
					</div>
					
					<div class="2">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 강동구 선사로 <br/>83-66 (암사동 637-6)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0501~4</td>
							</tr>
						</table>
					</div>
					
					<div class="3">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 마포구 한강난지로 <br/>162 (상암동 487-116)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0611~3</td>
							</tr>
						</table>
					</div>
					
					<div class="4">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 광진구 강변북로 <br/>139 (자양동 704-1)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0521~4</td>
							</tr>
						</table>
					</div>
					
					<div class="5">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 마포구 마포나루길 <br/>467 (망원동 205-4)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0601~4</td>
							</tr>
						</table>
					</div>
					
					<div class="6">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 서초구 신반포로11길 <br/>40 (반포동 115-5)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0541</td>
							</tr>
						</table>
					</div>
					
					<div class="7">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 영등포구 노들로 <br/>221(당산동 98-1)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0581~3</td>
							</tr>
						</table>
					</div>
					
					<div class="8">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 영등포구 여의동로 <br/>330 (여의도동 8)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0561~5</td>
							</tr>
						</table>
					</div>
					
					<div class="9">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 용산구 이촌로72길 <br/>62 (이촌동 302-17)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0551~4</td>
							</tr>
						</table>
					</div>
					
					<div class="10">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 송파구 한가람로 <br/>65 (잠실동1-1)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0511~4</td>
							</tr>
						</table>
					</div>
					
					<div class="11">
						<table>
							<tr>
								<td width="120">주소</td>
								<td width="320">서울시 서초구 잠원로 <br/>221-124 (잠원동 121)</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>3780 - 0531~3, 534 - 3263</td>
							</tr>
						</table>
					</div>				
				</div>
				
				<div id="no_mean" style="width: 0;height: 0;margin: 0;padding: 0;"></div>
				
				<div class="0" id="park_btn">
				
						<div class="1">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=1'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=1'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="2">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=2'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=2'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="3">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=3'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=3'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="4">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=4'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=4'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="5">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=5'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=5'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="6">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=6'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=6'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="7">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=7'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=7'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="8">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=8'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=8'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="9">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=9'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=9'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="10">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=10'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=10'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
						<div class="11">
					 		<ul>
								<li id="way" style="float: left;"><button onClick="javascript:window.location='directionPage.do?parkNum=11'">오시는길</button></li>
								<li id="map" style="float: left;"><button onClick="javascript:window.location='mapPage.do?parkNum=11'">안내지도</button></li>
								<li id="bd" style="float: left;"><button>자유 게시판</button></li>
							</ul>
						</div>
						
					</div>

				</div>
				
			</div>

			<div id="park_icon">
				<ul >
					<li><button value="1"><img id="rm1" src="icon/icon1.png" width="57" height="70"></button></li>
					<li><button value="2"><img id="rm2" src="icon/icon2.png" width="57" height="70"></button></li>
					<li><button value="3"><img id="rm3" src="icon/icon3.png" width="57" height="70"></button></li>
					<li><button value="4"><img id="rm4" src="icon/icon4.png" width="57" height="70"></button></li>
					<li><button value="5"><img id="rm5" src="icon/icon5.png" width="57" height="70"></button></li>
					<li><button value="6"><img id="rm6" src="icon/icon6.png" width="57" height="70"></button></li>
					<li><button value="7"><img id="rm7" src="icon/icon7.png" width="57" height="70"></button></li>
					<li><button value="8"><img id="rm8" src="icon/icon8.png" width="57" height="70"></button></li>
					<li><button value="9"><img id="rm9" src="icon/icon9.png" width="57" height="70"></button></li>
					<li><button value="10"><img id="rm10" src="icon/icon10.png" width="57" height="70"></button></li>
					<li><button value="11"><img id="rm11" src="icon/icon11.png" width="57" height="70"></button></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div style="margin: auto; margin-top:20; margin-bottom:20; width: 1000; height: 300;">
		<div id="weather" style="display:inline-block; width: 390; height: 300; border: 1px black solid; margin-right: 10;">
			날씨
		</div>
		
		<div id="notify" style="display:inline-block; width: 590;height: 300; border: 1px black solid;">
			공지사항
		</div>
	</div>
</body>
</html>
