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
		<a href="log/loginForm.do">로그인  </a> &nbsp;
		<a href="join/input.do">회원가입  </a>&nbsp;
		<a href="">공지사항  </a>&nbsp;
		<a href="board/list.do">자유게시판  </a>&nbsp;
		<a href="">사이트맵  </a>&nbsp;&nbsp;&nbsp;
	</div>
	<hr/>

<body>
	<div id = "logo" align = "center">	
		<a href="test.do"><img width="150px" height = "80px" alt="로고 위치" src="/HanProject/photo/templogo.png"></a>
	</div>
	<hr/>
	<decorator:body />
	
	<div id="content"></div>
	
	<hr id="clear"/>
	<div id="footer" align="center">
		회사이름 : Kosmo <br>
		(153-759) 서울특별시 금천구 가산동 월드메르디앙 2차 4층<br>
		(02) 844-1111
	</div>
	</body>
</html>
