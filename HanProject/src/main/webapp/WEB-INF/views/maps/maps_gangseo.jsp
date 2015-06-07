<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="css/maps_style.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="js/goAnotherPage.js"></script>
</head>
<body>
<div id ="view_top">
		<div align="right">
			<label> �ٸ� ���� ����</label>			
			<select id="map_pageName" name="pageName">
				<option label="����" value="1" selected="selected">���� �Ѱ�����</option>
				<option label="������" value="2">������ �Ѱ�����</option>
				<option label="����"  value="3">���� �Ѱ�����</option>
				<option label="�Ҽ�"  value="4">�Ҽ� �Ѱ�����</option>
				<option label="����" value="5">���� �Ѱ�����</option>
				<option label="����" value="6">���� �Ѱ�����</option>
				<option label="��ȭ" value="7">��ȭ �Ѱ�����</option>
				<option label="���ǵ�" value="8">���ǵ� �Ѱ�����</option>
				<option label="����" value="9">���� �Ѱ�����</option>
				<option label="���" value="10">��� �Ѱ�����</option>
				<option label="���" value="11">��� �Ѱ�����</option>
			</select>
		</div>
		<div align="right">			
			<button id="go_direction" value=${parkNum}> ���ô±氡�� </button><br>
			<button id="go_board" value=${parkNum}> �����Խ��ǰ��� </button><br>
		</div>
		<p id="direction_txt">���� �ȳ�����</p>	
	</div>
	
	<div id="view_content">
		<div id="view_maps">
			
		</div>
		
		<div id="view_btn" align="center">
			<button id="information"><img id="mapicons" src="mapIcons/information.png"></img></button>
			<button id="park_bicycle"><img id="mapicons" src="mapIcons/park_bicycle.png"></button>
			<button id="lend_bicycle"><img id="mapicons" src="mapIcons/lend_bicycle.png" ></button>
			<button id="drink_water"><img id="mapicons" src="mapIcons/drink_water.png" ></button>
			<button id="policestation"><img id="mapicons" src="mapIcons/policestation.png"></button>
		</div>
	
	</div>
	
	<div id="view_bottom">
	
	</div>
</body>
</html>