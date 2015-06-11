<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
<link type="text/css" rel="stylesheet" href="css/board/insert_style.css" >
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	if(${!empty p_number}){
		$("option:first").removeAttr("selected");
		$("option:nth-child(${p_number+1})").attr("selected","selected");
	}
	
});

function checkBlank(){
	if(document.insertForm.b_subject.value==""){
		alert("제목을 입력해 주세요.");
		document.insertForm.b_subject.focus();
		return false;
	}
	if(document.insertForm.b_content.value==""){
		alert("내용을 입력해 주세요.");
		document.insertForm.b_content.focus();
		return false;
	}
}
</script>
</head>
<body>
	<div id="insert_div" align="center" width="1000">
		<form name="insertForm" method="post" onsubmit="return checkBlank();">
			<table class="insert_table" >
				<tr>
				<td>작성자</td>
					<td>${sessionScope.user.nick }
					<input type="hidden" name="b_writer" value="${sessionScope.user.nick }"></td>
					<td>제목</td>
					<td>
					<select class="p_number" name="p_number">
					<option selected="selected" value="12">자유글</option>
					<option value="1">강서</option>
					<option value="2">광나루</option>
					<option value="3">난지</option>
					<option value="4">뚝섬</option>
					<option value="5">망원</option>
					<option value="6">반포</option>
					<option value="7">양화</option>
					<option value="8">여의도</option>
					<option value="9">이촌</option>
					<option value="10">잠실</option>
					<option value="11">잠원</option>
					</select>
					<input class="table_subject" name="b_subject" size="50" maxlength="100" /></td>
				<tr>
				
					<td colspan="4">
					<br>
					<textarea class="table_content" name="b_content" rows="15" cols="100"  ></textarea>
					</td>
				</tr>
				<tr>
				<td colspan="4">
				<p class="btnGroup_p" align="right">
				<input type="hidden" name="b_id" value="${sessionScope.user.id }">
				<input class="submitBtn" type="submit" value="&nbsp;" />
				<input class="resetBtn" type="reset" value="&nbsp;" />
				<input class="goListBtn" type="button" value="&nbsp;" onclick="window.location='board_list.do?parkNum=${param.parkNum}'" />
				</p>
				</td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>