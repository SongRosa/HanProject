<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/main_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

	$(function(){
		$("#park_icon button").click(function(){
			$("#main_picture").css("display", "none");
			$("#park_container").css("display", "block"); 
		});
		
		$("#rm1").click(function(){
			$("#park_img").attr("src", "river_picture/����1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".1").css("display", "block");
		});
		
		$("#rm2").click(function(){
			$("#park_img").attr("src", "river_picture/������1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".2").css("display", "block");
		});
		
		$("#rm3").click(function(){
			$("#park_img").attr("src", "river_picture/����1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".3").css("display", "block");
		});
		
		$("#rm4").click(function(){
			$("#park_img").attr("src", "river_picture/�Ҽ�1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".4").css("display", "block");
		});
		
		$("#rm5").click(function(){
			$("#park_img").attr("src", "river_picture/����1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".5").css("display", "block");
		});
		
		$("#rm6").click(function(){
			$("#park_img").attr("src", "river_picture/����1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".6").css("display", "block");
		});
		
		$("#rm7").click(function(){
			$("#park_img").attr("src", "river_picture/��ȭ1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".7").css("display", "block");
		});
		
		$("#rm8").click(function(){
			$("#park_img").attr("src", "river_picture/���ǵ�1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".8").css("display", "block");
		});
		
		$("#rm9").click(function(){
			$("#park_img").attr("src", "river_picture/����1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".9").css("display", "block");
		});
		
		$("#rm10").click(function(){
			$("#park_img").attr("src", "river_picture/���1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".10").css("display", "block");
		});
		
		$("#rm11").click(function(){
			$("#park_img").attr("src", "river_picture/���1.jpg");
			$("#park_name div").css("display", "none");
			$("#park_info div").css("display", "none");
			$("#park_btn div").css("display", "none");
			$(".11").css("display", "block");
		});
		
		
		$("#close").click(function(){
			$("#main_picture").css("display", "block");
			$("#park_container").css("display", "none"); 
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
					<img id="park_img" src="" width="450" height="380">
				</div>
				
				<div id="park_introduce">
					<div align="right"><button id="close" >X</button></div>	
					
					<div class="0" id="park_name" align="center" style="width: 200">
						<div class="1">����</div>
						<div class="2">������</div>
						<div class="3">����</div>
						<div class="4">�Ҽ�</div>
						<div class="5">����</div>
						<div class="6">����</div>
						<div class="7">��ȭ</div>
						<div class="8">���ǵ�</div>
						<div class="9">����</div>
						<div class="10">���</div>
						<div class="11">���</div>
						
					</div>
					<div class="0" id="park_info">
					
					<div class="1">
				 		<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ������ ��õ��27�� 279-23 (��ȭ�� 47)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0621~3</td>
							</tr>
						</table>
					</div>
					
					<div class="2">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ������ �����83-66 (�ϻ絿 637-6)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0501~4</td>
							</tr>
						</table>
					</div>
					
					<div class="3">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ������ �Ѱ������� 162 (��ϵ� 487-116)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0611~3</td>
							</tr>
						</table>
					</div>
					
					<div class="4">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ������ �����Ϸ� 139 (�ھ絿 704-1)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0521~4</td>
							</tr>
						</table>
					</div>
					
					<div class="5">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ������ ��������� 467 (������ 205-4)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0601~4</td>
							</tr>
						</table>
					</div>
					
					<div class="6">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ���ʱ� �Ź�����11�� 40 (������ 115-5)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0541</td>
							</tr>
						</table>
					</div>
					
					<div class="7">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� �������� ���� 221(��굿 98-1)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0581~3</td>
							</tr>
						</table>
					</div>
					
					<div class="8">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� �������� ���ǵ��� 330 (���ǵ��� 8)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0561~5</td>
							</tr>
						</table>
					</div>
					
					<div class="9">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ��걸 ���̷�72�� 62 (���̵� 302-17)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0551~4</td>
							</tr>
						</table>
					</div>
					
					<div class="10">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ���ı� �Ѱ�����65 (��ǵ�1-1)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0511~4</td>
							</tr>
						</table>
					</div>
					
					<div class="11">
						<table>
							<tr>
								<td width="100">�ּ�</td>
								<td width="320">����� ���ʱ� ����� 221-124 (����� 121)</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td>3780 - 0531~3, 534 - 3263</td>
							</tr>
						</table>
					</div>				
				</div>
				
				<div id="no_mean" style="width: 0;height: 0;margin: 0;padding: 0;"></div>
				
				<div class="0" id="park_btn">
				
						<div class="1">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="2">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="3">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="4">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="5">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="6">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="7">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="8">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="9">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="10">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
						<div class="11">
					 		<ul>
								<li id="way" style="float: left;"><button>���ô±�</button></li>
								<li id="map" style="float: left;"><button>�ȳ�����</button></li>
								<li id="bd" style="float: left;"><button>���� �Խ���</button></li>
							</ul>
						</div>
						
					</div>

				</div>
				
			</div>

			<div id="park_icon">
				<ul >
					<li><button><img id="rm1" src="icon/icon1.png" width="57" height="70"></button></li>
					<li><button><img id="rm2" src="icon/icon2.png" width="57" height="70"></button></li>
					<li><button><img id="rm3" src="icon/icon3.png" width="57" height="70"></button></li>
					<li><button><img id="rm4" src="icon/icon4.png" width="57" height="70"></button></li>
					<li><button><img id="rm5" src="icon/icon5.png" width="57" height="70"></button></li>
					<li><button><img id="rm6" src="icon/icon6.png" width="57" height="70"></button></li>
					<li><button><img id="rm7" src="icon/icon7.png" width="57" height="70"></button></li>
					<li><button><img id="rm8" src="icon/icon8.png" width="57" height="70"></button></li>
					<li><button><img id="rm9" src="icon/icon9.png" width="57" height="70"></button></li>
					<li><button><img id="rm10" src="icon/icon10.png" width="57" height="70"></button></li>
					<li><button><img id="rm11" src="icon/icon11.png" width="57" height="70"></button></li>
				</ul>
			</div>
			
			
		</div>
	</div>
</body>
</html>
