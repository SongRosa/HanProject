<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<title>정보수정</title>
<link href="css/mem/mypage.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
var pwdBtn = 0;
var telBtn = 0;
var nameBtn = 0;

var option = "toolbar=no,width=500,height=250,directories=no,status=no,scrollbars=no,menubar=no,resizable=no,top=500,left=500";
var option1 = "toolbar=no,width=700,height=500,directories=no,status=no,scrollbars=no,menubar=no,resizable=no,top=500,left=500";
var option2 = "toolbar=no,width=600,height=250,directories=no,status=no,scrollbars=no,menubar=no,resizable=no,top=500,left=500";

function nickCheck() {
	if (updatenickform.nick.value == 0) {
		alert("닉네임을 입력하세요")
	} else {
		url = "update_nickCheck.do?nick=" + updatenickform.nick.value;
		window.open(url,"post",option);
	}
}

function emailCheck() {

	if(updateemailform.email1.value != 0 && !(updateemailform.email2.value =="naver.com"||updateemailform.email2.value =="daum.net"||updateemailform.email2.value =="gmail.com"||updateemailform.email2.value =="yahoo.com"||updateemailform.email2.value =="nate.com")){
		alert("이메일 형식을 확인하세요")
	}
	
	if (updateemailform.email1.value == 0) {
		alert("이메일을 입력하세요")
	} 
	
	if(updateemailform.email1.value != 0 && (updateemailform.email2.value =="naver.com"||updateemailform.email2.value =="daum.net"||updateemailform.email2.value =="gmail.com"||updateemailform.email2.value =="yahoo.com"||updateemailform.email2.value =="nate.com")){
		url = "update_emailCheck.do?email1=" + updateemailform.email1.value + "&email2="+ updateemailform.email2.value;
		window.open(url,"post",option2);
	}
}

function zipCheck() {
	url = "update_zipCheck.do";
	window.open(url,"post",option1);
}

	
$(function(){ 
	$("#updatePwdbtn").click(function(){
		if(pwdBtn == 0){
			$("#updatePwddiv").css("display","block");	
			pwdBtn = 1;
		}else if(pwdBtn == 1){
			$("#updatePwddiv").css("display","none");
			pwdBtn = 0;
		}
	});
	
	$("#updatenamebtn").click(function(){
		if(nameBtn == 0){
			$("#updateNamediv").css("display","block");	
			nameBtn = 1;
		}else if(nameBtn == 1){
			$("#updateNamediv").css("display","none");
			nameBtn = 0;
		}
	});
	
	$("#updatetelbtn").click(function(){		
		if(telBtn == 0){
		$("#updateTeldiv").css("display","block");	
		telBtn = 1;
	}else if(telBtn == 1){
		$("#updateTeldiv").css("display","none");
		telBtn = 0;
	}
	});
	
	$("#sel").change(function() {
		var d = $("#sel").val();
		$("#email2").val(d);
	});
});

</script>
</head>

<body>
<div id ="view_top">
<div id="empty"></div>
				<fieldset>
					<legend>마이페이지</legend>
				</fieldset>
				<div id="empty"></div>
		<table width="750" cellspacing="0" cellpadding="3" align="center" style= "border-top: 1px solid #7AA3EB ; border-bottom: 1px solid #7AA3EB">

			<tr>
				<td colspan="2" height="39" >비밀번호 수정
				<input id="updatePwdbtn" type="button" value="수정"></td>
			</tr>
		</table>

		<div id="updatePwddiv" style="display: none;">
		<form:form  commandName="loginform" method="post" action="updatePwd.do"	name="updatepwdform">
		
		<table width="750"  cellspacing="0" cellpadding="3" align="center">
			<tr>
				<td width="129">비밀번호</td>
				<td width="500">
  				<form:password path="pwd" size="20" maxlength="16" value="${user.pwd }" />
				<form:errors path="pwd" /></td>
			</tr>
			
			<tr>
				<td width="129">비밀번호 확인</td>
				<td width="500">
  				<form:password path="pwd2" size="20" maxlength="16"/>
				<input type="submit" name="confirm" value="등   록">
				<form:errors path="pwd2" /></td>
			</tr>

		</table>
		
		</form:form>
		</div>
		
		<table width="750"  cellspacing="0" cellpadding="3" align="center" style= "border-top: 1px solid #7AA3EB ; border-bottom: 1px solid #7AA3EB">
		
			<tr>
				<td colspan="2" height="39" >프로필 수정(이름 / 닉네임)
				<input id="updatenamebtn" type="button" value="수정"></td>
			</tr>
			
		</table>
		
		<div id="updateNamediv" style="display: none;">
		<form:form  commandName="loginform" method="post" action="updateName.do"	name="updatenameform">
		
			<table width="750"  cellspacing="0" cellpadding="3" align="center">
				<tr>
				<td width="129">이름</td>
				<td width="500">
  				<form:input path="name" size="20" maxlength="10" value="${user.name }" />
				<input type="submit" name="confirm" value="등   록">
				<form:errors path="name" /></td>
				</tr>
			</table>
		</form:form>
			
			
		<form:form  commandName="loginform" method="post" action="updateNick.do"	name="updatenickform">
		<table width="750"  cellspacing="0" cellpadding="3" align="center">	
				
			<tr>
				<td width="129">닉네임</td>
				<td width="500">
				<form:input path="nick" size="20" maxlength="10" value="${user.nick }"/>
				<input type="button" name="confirm_nick" value="중복확인" OnClick="nickCheck()" />
				<form:input	path="checknick" size="10" maxlength="12" value="${checknick }" hidden="true"/>
				<input type="submit" name="confirm" value="등   록">
				<form:errors path="nick" />
				<form:errors path="checknick" /></td>
			</tr>

		</table>
		</form:form>
		</div>
		
		<table width="750"  cellspacing="0" cellpadding="3" align="center" style= "border-top: 1px solid #7AA3EB ; border-bottom: 1px solid #7AA3EB">
			<tr>
				<td colspan="2" height="39" >연락처 수정(Email / 전화번호/ 주소)
				<input id="updatetelbtn" type="button" value="수정"></td>
			</tr>
		</table>
			
			
		<div id="updateTeldiv" style="display: none;">
		<form:form  commandName="loginform" method="post" action="updateEmail.do"	name="updateemailform">
		<table width="750"  cellspacing="0" cellpadding="3" align="center">
				<tr>
				<td width="129">이메일</td>
				<td width="500"><form:input path="email1" size="15" maxlength="12" value="${email1 }" /> @ 
				<form:input path="email2" size="15" maxlength="9" value="${email2 }"/>
						<select class="select" id="sel">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
				</select>
				<form:input path="checkemail" size="5" maxlength="12" value="${checkemail }" hidden="true"/>
				<input type="button" name="confirm_email" value="중복확인" OnClick="emailCheck()" />
					<input type="submit" name="confirm" value="등   록"><br>
					<form:errors path="email2" />
					<form:errors path="checkemail" /></td>
				</tr>
			</table>
			</form:form>
				
			<form:form  commandName="loginform" method="post" action="updateTel.do"	name="updatetelform">
		
			<table width="750"  cellspacing="0" cellpadding="3" align="center">
			<tr>
				<td width="129">전화번호</td>
				<td width="500">
				<form:input path="tel1" size="4" maxlength="3" value="${tel1 }"/>
				- <form:input path="tel2" size="5" maxlength="4" value="${tel2 }"/> - <form:input path="tel3" size="5" maxlength="4" value="${tel3 }"/>
			<input type="submit" name="confirm" value="등   록">	
			<form:errors path="tel"/></td>
			</tr>
			</table>
			</form:form>
			
			
			<form:form  commandName="loginform" method="post" action="updateAddress.do"	name="updateaddressform">
		
			<table width="750"  cellspacing="0" cellpadding="3" align="center">
			<tr>
				<td width="150">우편번호</td>
				<td width="500"><form:input path="zipcode" size="10" readonly="true" value="${user.zipcode }"/>
				<input type="button" value="우편번호찾기" onClick="zipCheck()"></td>
			</tr>

			<tr>
				<td>주소</td>
				<td><form:input path="address" size="70" value="${user.address }"/>
						
			<input type="submit" name="confirm" value="등   록">
			<form:errors path="address" />
			</td></tr>
			</table>
			</form:form>
		</div>
		
		<table width="750"  cellspacing="0" cellpadding="3" align="center" style= "border-top: 1px solid #7AA3EB ; border-bottom: 1px solid #7AA3EB">
			<tr>
			<td colspan="2" height="39" >회원탈퇴
			<input type="button" value="탈퇴" onclick="javascript:window.location='byePwd.do'"></td>
			</tr>
		</table>
		
		<div>
			<form:form  commandName="loginform" method="post" name="btnform">
			<table width="750"cellspacing="0" cellpadding="3" align="center">
			<td align="right">
			<input type="button" value="완료" onclick="javascript:window.location='test.do'"></td>
			</table>
			<div id="empty"></div>
			</form:form>
		</div>
				<fieldset></fieldset>
				<div id="empty"></div>
</div>
</body>
</html>