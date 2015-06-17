<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>han</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	$("#manager").click(function() {
		window.location = "managerPage.do";
	});
});
	
</script>
<style>
	a:link, a:visited, a:active{
		text-decoration:none;
		color:black;
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
</head>
	<decorator:head />
	<div id="header" align="right" style="font-family: 'Nanum Gothic', sans-serif;">
		<c:if test="${sessionScope.user.id=='manager'}">
			<img id="manager" alt="������" src="./board_img/btn_admin.gif">
		</c:if>
		<a href="test.do">HOME </a>&nbsp;
		<c:if test="${empty sessionScope.user}">			
			<a href="log_loginForm.do">�α���  </a> &nbsp;
			<a href="join_input.do">ȸ������  </a>&nbsp;
		</c:if>
		<c:if test="${!empty sessionScope.user}">			
			<a href="log_logout.do">�α׾ƿ�  </a> &nbsp;
			<a href="confirmPwd.do">����������  </a>&nbsp;
		</c:if>
		<a href="">��������  </a>&nbsp;
		<a href="board_list.do?parkNum=0">�����Խ���  </a>&nbsp;
		<a href="sitemap.do">����Ʈ��  </a>&nbsp;&nbsp;&nbsp;
	</div>
	<hr/>

<body>
	<div id = "logo" align = "center">	
		<a href="test.do"><img width="270px" height = "90px" alt="�ΰ� ��ġ" src="photo/logo.png"></a>
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
