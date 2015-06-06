<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<style>
	a:link, a:visited, a:active{
		text-decoration:none;
		test-color:black;
	}
	
	div#logo, div#header, div#footer{
		padding-bottom:5px;
		padding-top:5px;
		width: 1100px;
		margin: auto;
	}
	hr{
		border-color: gray;
		border-style: solid;
		border: 2dp;
	}
	#clear{
		clear: both;
	}
	
</style>
<head>
<title>han</title>
</head>


	<decorator:head />
	<div id="header" align="right">
		<a href="log/loginForm.do">�α���  </a> &nbsp;
		<a href="join/input.do">ȸ������  </a>&nbsp;
		<a href="">��������  </a>&nbsp;
		<a href="board/list.do">�����Խ���  </a>&nbsp;
		<a href="">����Ʈ��  </a>&nbsp;&nbsp;&nbsp;
	</div>
	<hr/>

<body>
	<div id = "logo" align = "center">	
		<a href="test.do"><img width="150px" height = "80px" alt="�ΰ� ��ġ" src="/HanProject/photo/templogo.png"></a>
	</div>
	<hr/>
	<decorator:body />
	
	<div id="content"></div>
	
	<hr id="clear"/>
	<div id="footer" align="center">
		ȸ���̸� : Kosmo <br>
		(153-759) ����Ư���� ��õ�� ���굿 ����޸���� 2�� 4��<br>
		(02) 844-1111
	</div>
	</body>
</html>
