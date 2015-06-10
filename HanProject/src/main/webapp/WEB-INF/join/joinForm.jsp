<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<title>회원가입</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	function idCheck() {
		if (join.id.value == 0) {
			alert("ID를 입력하세요")
		} else {
			url = "join_idCheck.do?id=" + join.id.value;
			window.open(url,"post","toolbar=no,width=500,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
		}
	}

	function nickCheck() {
		if (join.nick.value == 0) {
			alert("닉네임을 입력하세요")
		} else {
			url = "join_nickCheck.do?nick=" + join.nick.value;
			window.open(url,"post","toolbar=no,width=500,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
		}
	}
	
	function emailCheck() {

		if(join.email1.value != 0 && !(join.email2.value =="naver.com"||join.email2.value =="daum.net"||join.email2.value =="gmail.com"||join.email2.value =="yahoo.com"||join.email2.value =="nate.com")){
			alert("이메일 형식을 확인하세요")
		}
		
		if (join.email1.value == 0) {
			alert("이메일을 입력하세요")
		} 
		
		if(join.email1.value != 0 && (join.email2.value =="naver.com"||join.email2.value =="daum.net"||join.email2.value =="gmail.com"||join.email2.value =="yahoo.com"||join.email2.value =="nate.com")){
			url = "join_emailCheck.do?email1=" + join.email1.value + "&email2="+ join.email2.value;
			window.open(url,"post","toolbar=no,width=500,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
		}
	}

	function zipCheck() {
		url = "join_zipCheck.do";
		window.open(url,"post","toolbar=no,width=500,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
	}

	$(function() {

		$("#sel").change(function() {
			var d = $("#sel").val();
			$("#email2").val(d);
		});
	});
</script>

</head>




<body>
	<form:form commandName="join" method="post" action="join_memsub.do"	name="join">
		<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
			<tr>
				<td colspan="2" height="39" align="center"><font size="+1"><b>회원가입</b></font></td>
			</tr>

			<tr>
				<td width="200">사용자 ID</td>
				<td width="400"><form:input path="id" size="10" maxlength="12" />
					<input type="button" name="confirm_id" value="ID중복확인" OnClick="idCheck()" /> 
					<form:errors path="id" /> 
					<form:input	path="checkid" size="10" maxlength="12" value="노확인" hidden="true" />
					<form:errors path="checkid" /></td>
			</tr>
			<tr>
				<td width="200">비밀번호</td>
				<td width="400">
				<form:input path="pwd" size="15" maxlength="16" />
				<form:errors path="pwd" /></td>
			</tr>

			<tr>
				<td width="200">사용자 이름</td>
				<td width="400">
				<form:input path="name" size="15" maxlength="10" />
			</tr>
			<tr>


				<td width="200">닉네임</td>
				<td width="400">
				<form:input path="nick" size="15" maxlength="10" />
				<input type="button" name="confirm_nick" value="중복확인" OnClick="nickCheck()" />
				<form:input	path="checknick" size="10" maxlength="12" value="노확인" hidden="true" />
				<form:errors path="nick" />
				<form:errors path="checknick" /></td>
			</tr>


			<tr>
				<td width="200">이메일</td>
				<td width="400"><form:input path="email1" size="7"
						maxlength="12" /> @ <form:input path="email2" size="7"
						maxlength="9" /> <select class="select" id="sel">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
				</select>
				<form:input path="checkemail" size="10" maxlength="12" value="노확인"	hidden="true" />
				<input type="button" name="confirm_email" value="중복확인" OnClick="emailCheck()" />
					<form:errors path="email2" />
					<form:errors path="checkemail" /></td>
			</tr>

			<tr>
				<td width="200">전화번호</td>
				<td width="400">
				<form:input path="tel1" size="3" maxlength="3" />
				- <form:input path="tel2" size="4" maxlength="4" /> - <form:input path="tel3" size="4" maxlength="4" />
			</tr>
			<tr>
				<td width="200">우편번호</td>
				<td><form:input path="zipcode" size="7" readonly="true" />
				<input type="button" value="우편번호찾기" onClick="zipCheck()"></td>
			</tr>

			<tr>
				<td>주소</td>
				<td><form:input path="address" size="70" />
				<form:errors path="address" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit" name="confirm" value="등   록"> 
					<input type="reset"	name="reset" value="다시입력"> 
					<input type="button" value="취소" 	onclick="javascript:window.location='log_loginForm.do'">
				</td>
			</tr>
		</table>
	</form:form>
</body>





</html>