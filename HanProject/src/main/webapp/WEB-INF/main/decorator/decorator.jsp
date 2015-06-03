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
		<a>로그인  </a> 
		<a>회원가입  </a>
		<a>공지사항  </a>
		<a>자유게시판  </a>
		<a>사이트맵  </a>
	</div>
	<hr/>

<body>
	<div id = "logo" align = "center">	
		<img width="150px" height = "80px" alt="로고 위치" src="photo/templogo.png">
	</div>
	<hr/>
	<div id = "content">
	
	</div>
	<decorator:body />
	<hr/>
	<div id="footer" align="center">
		회사이름 : Kosmo <br>
		(153-759) 서울특별시 금천구 가산동 월드메르디앙 2차 4층<br>
		(02) 844-1111
	</div>
	</body>
</html>
