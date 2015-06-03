<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %> 
<html lang="ko">
<style>
	div{
		padding-bottom:5px;
		padding-top:5px;
		width: 75%;
		margin: auto;
	}
	hr{
		border-color: gray;
		border-style: solid;
		border: 2dp;
	}
	
	#content{
		height: 75%;
	}
</style>
<head>
	<title>han</title>
</head>
	<decorator:head />
	<div id="header" align="right">
		<a>�α���  </a> 
		<a>ȸ������  </a>
		<a>��������  </a>
		<a>�����Խ���  </a>
		<a>����Ʈ��  </a>
	</div>
	<hr/>

<body>
	<div id = "logo" align = "center">	
		<img width="150px" height = "80px" alt="�ΰ� ��ġ" src="photo/templogo.png">
	</div>
	<hr/>
	<div id = "content">
	
	</div>
	<decorator:body />
	<hr/>
	<div id="footer" align="center">
		ȸ���̸� : Kosmo <br>
		(153-759) ����Ư���� ��õ�� ���굿 ����޸���� 2�� 4��<br>
		(02) 844-1111
	</div>
	</body>
</html>
