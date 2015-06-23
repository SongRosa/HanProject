<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
<link type="text/css" rel="stylesheet" href="css/board/insert_style.css" >
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
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
					<input type="hidden" name="n_writer" value="${sessionScope.user.nick }"></td>
					<td>제목</td>
					<td>
					<input class="table_subject" name="n_subject" size="50" maxlength="100" /></td>
				<tr>
				
					<td colspan="4">
					<br>
					<textarea class="table_content" name="n_content" rows="15" cols="100"  ></textarea>
					</td>
				</tr>
				<tr>
				<td colspan="4">
				<p class="btnGroup_p" align="right">
				<input class="submitBtn" type="submit" value="&nbsp;" />
				<input class="resetBtn" type="reset" value="&nbsp;" />
				<input class="goListBtn" type="button" value="&nbsp;" onclick="window.location='notice_list.do'" />
				</p>
				</td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>