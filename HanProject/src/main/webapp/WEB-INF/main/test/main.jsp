<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/main_style.css" rel="stylesheet" type="text/css">
<link href="css/swiper.min.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="js/jquery.xdomainajax.js"></script>
<script src="js/cast.js"></script>
<script src="js/swiper.jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		for(var i=0;i<11;i++){
			xmlLoader(i);
		}
		
		var a=0;
		var b=0;
		
		function display(i){
			$("#main_picture").css("display", "none");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			
			$("#park_container").show("clip",700);
			$('.'+i).css("display", "block");
			$("#park_img").attr("src", "river_picture/river"+i+".jpg");
		}
		
		$("#park_icon li").click(function(){
			var i = $(this).val();
			c=Number(i);
			b+=c;
			
			for(d=1;d<12;d++){
				$("#park_icon").find('.'+d).attr("src", "icon_complete/parkIcon"+d+".png");
				if(d==i){
					$("#park_icon").find('.'+i).attr("src", "icon_complete/parkIcon"+i+"_1.png");
				}
			}
			
			if(b==(c*2)) {
				//display(i);
				b-=c;
			} else {
				b=0;
				b+=c;
				
				$("#park_container").css("display", "none");
				display(i);
			}
		});
		
		$("#park_icon li").mouseenter(function(){
			var i = $(this).val();
			
			$(this).find("img").attr("src", "icon_complete/parkIcon"+i+"_1.png");
		});
		
		$("#park_icon li").mouseleave(function(){
			var i = $(this).val();
			var m = $("#park_name").find('.'+i).css("display");
			
			if(m == "none"){
				$(this).find("img").attr("src", "icon_complete/parkIcon"+i+".png");
			} else if(m == "block") {
				
			}
		});
		
		$("#park_btn li").mouseenter(function(){
			var i = $(this).val();
			var j = i-1;
			var a = "";
			
			if(i==1){
				a = "parkIcon/marker_clicked.png";
			} else if(i==2){
				a = "parkIcon/parkmap_clicked.png";
			} else if(i==3){
				a = "parkIcon/board_clicked.png";
			}
			
			$("#park_btn ul").find("img:eq("+j+")").attr("src", a);
		});
		
		$("#park_btn li").mouseleave(function(){
			var i = $(this).val();
			var j = i-1;
			var a = "";
			
			if(i==1){
				a = "parkIcon/marker.png";
			} else if(i==2){
				a = "parkIcon/parkmap.png";
			} else if(i==3){
				a = "parkIcon/board.png";
			}
			
			$("#park_btn ul").find("img:eq("+j+")").attr("src", a);
		});
		
		
		
		$("#close").click(function(){
			a=0;
			
			for(d=1;d<12;d++){
				$("#park_icon").find('.'+d).attr("src", "icon_complete/parkIcon"+d+".png");
			}
			
			$("#park_container").fadeOut(300,function(){
				$("#main_picture").fadeIn(300);
			});
			
		});
	});
</script>
</head>
<body>
	<div id="container">
	
		<div id="home">
		
			<div id="main_picture">
				<img src="picture/hanrivermap.jpg" width="999" height="380">
			</div>
			
			<div id="park_container">
			
				<div id="park_picture">
					<img id="park_img" src="" width="580" height="380">
				</div>
				
				<div id="park_introduce">
				
					
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
					<div id="x" align="right" ><img id="close" src="parkIcon/x_button.png" width="30" height="30"></div>
					
					
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
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=1"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=1"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=1"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="2">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=2"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=2"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=2"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="3">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=3"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=3"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=3"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="4">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=4"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=4"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=4"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="5">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=5"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=5"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=5"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="6">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=6"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=6"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=6"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="7">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=7"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=7"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=7"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="8">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=8"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=8"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=8"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="9">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=9"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=9"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=9"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="10">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=10"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=10"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=10"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
						
						<div class="11">
					 		<ul>
								<li value="1" id="way" style="float: left;">
									<a href="directionPage.do?parkNum=11"><img src="parkIcon/marker.png"></a>
								</li>
								<li value="2" id="map" style="float: left;">
									<a href="facility_search.do?parkNum=11"><img src="parkIcon/parkmap.png"></a>
								</li>
								<li value="3" id="bd" style="float: left;">
									<a href="board_list.do?parkNum=11"><img src="parkIcon/board.png"></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div id="park_icon">
				<ul>
					<li value="1"><img class="1" id="rm1" src="icon_complete/parkIcon1.png" width="90.9" height="80"></li>
					<li value="2"><img class="2" id="rm2" src="icon_complete/parkIcon2.png" width="90.9" height="80"></li>
					<li value="3"><img class="3" id="rm3" src="icon_complete/parkIcon3.png" width="90.9" height="80"></li>
					<li value="4"><img class="4" id="rm4" src="icon_complete/parkIcon4.png" width="90.9" height="80"></li>
					<li value="5"><img class="5" id="rm5" src="icon_complete/parkIcon5.png" width="90.9" height="80"></li>
					<li value="6"><img class="6" id="rm6" src="icon_complete/parkIcon6.png" width="90.9" height="80"></li>
					<li value="7"><img class="7" id="rm7" src="icon_complete/parkIcon7.png" width="90.9" height="80"></li>
					<li value="8"><img class="8" id="rm8" src="icon_complete/parkIcon8.png" width="90.9" height="80"></li>
					<li value="9"><img class="9" id="rm9" src="icon_complete/parkIcon9.png" width="90.9" height="80"></li>
					<li value="10"><img class="10" id="rm10" src="icon_complete/parkIcon10.png" width="90.9" height="80"></li>
					<li value="11"><img class="11" id="rm11" src="icon_complete/parkIcon11.png" width="90.9" height="80"></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div style="margin: auto; margin-top:20; margin-bottom:20; width: 1000; height: 300;">
				<div class="swiper-container" id="weather"
			style=" display: inline-block; width: 390; height: 300; border: 1px black solid; margin-right: 10;">
			<div class="swiper-wrapper" id="weather_pagewrap">
				<div class="swiper-slide" id="page0">
				<p> 강서 한강공원<br></p>
					<table>
					
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>
							
						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>
							
						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>
						</tr>
					</table>

				</div>
				<div class="swiper-slide" id="page1">
				<p>광나루 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>
				
						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>
						
						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>
					
						</tr>
					</table>
				</div>
				<div class="swiper-slide" id="page2">
				<p>난지 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>
	
						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page3">
				<p>뚝섬 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
	
				</div>
				<div class="swiper-slide" id="page4">
				<p>망원 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page5">
				<P>반포 한강공원<br></P>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page6">
				<p>양화 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page7">
				<p>여의도 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>
						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>
						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page8">
				<p>이촌 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>

				</div>
				<div class="swiper-slide" id="page9">
				<p>잠실 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>

						</tr>
					</table>
					
				</div>
				<div class="swiper-slide" id="page10">
				<p>잠원 한강공원<br></p>
					<table>
						<tr>
							<td class="td0_0"></td>
							<td class="td0_1"></td>
							<td class="td0_2"></td>
							<td class="td0_3"></td>

						</tr>
						<tr>
							<td class="td1_0"></td>
							<td class="td1_1"></td>
							<td class="td1_2"></td>
							<td class="td1_3"></td>

						</tr>
						<tr>
							<td class="td2_0"></td>
							<td class="td2_1"></td>
							<td class="td2_2"></td>
							<td class="td2_3"></td>
						</tr>
					</table>
		
		
				</div>

			</div>
			<div class="swiper-pagination"></div>
       		 <!-- Add Arrows -->
       		 <div class="swiper-button-next"></div>
       	 	 <div class="swiper-button-prev"></div>
		</div>
		
		<div id="notify" style="display:inline-block; width: 590;height: 300; border: 1px black solid;">
			공지사항
		</div>
	</div>
		<script>
	var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30
    });
</script>
</body>
</html>
