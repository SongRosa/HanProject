<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
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
	<div id="board_insertTable" align="center" width="1000">
		<form name="insertForm" method="post" onsubmit="return checkBlank();">
			<table >
				<tr>
				<td>작성자</td>
					<td><input name="b_writer" size="5" maxlength="25"></td>
					<td>제목</td>
					<td>
					<select name="p_number">
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
					<input name="b_subject" size="20" maxlength="100" /></td>
				<tr>
				<tr>
					<td colspan="4"><textarea name="b_content" rows="15" cols="100"  ></textarea>
			</table>
			<div id="board_btnGroup" align="right">
				<input type="submit" value="글쓰기" /> <input type="reset" value="초기화" />
				<input type="button" value="목록" onclick="window.location='list.do'" />
			</div>
		</form>

	</div>
</body>
</html>