<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
<script type="text/javascript">
function checkBlank(){
	if(document.updateForm.b_subject.value==""){
		alert("제목을 입력해 주세요.");
		document.updateForm.b_subject.focus();
		return false;
	}
	if(document.updateForm.b_content.value==""){
		alert("내용을 입력해 주세요.");
		document.updateForm.b_content.focus();
		return false;
	}
}
</script>
</head>
<body>
	<div id="board_updateTable" align="center" width="1000">
		<form name="updateForm" method="post" onsubmit="return checkBlank();">
			<table >
				<tr>
				<td>작성자</td>
					<td><input name="b_writer" size="5" maxlength="25" value="${detail.b_writer }"></td>
					<td>제목</td>
					<td>
					<select name="b_subTab">
					<option selected="selected" value="99">자유글</option>
					</select>
					<input name="b_subject" size="20" maxlength="100" value="${detail.b_subject }"/></td>
				<tr>
				<tr>
					<td colspan="4"><textarea name="b_content" rows="15" cols="100" >${detail.b_content }</textarea>
			</table>
			<div id="board_btnGroup" align="right">
				<input type="submit" value="글쓰기" /> <input type="reset" value="초기화" />
				<input type="button" value="목록" onclick="window.location='list.do'" />
			</div>
		</form>

	</div>
</body>
</html>