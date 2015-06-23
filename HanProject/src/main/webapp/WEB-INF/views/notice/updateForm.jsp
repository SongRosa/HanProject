<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
<link type="text/css" rel="stylesheet" href="css/board/insert_style.css" >
<script src="http://code.jquery.com/jquery.js"></script>
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
	<div id="board_Table_div" align="center" width="1000">
		<form name="updateForm" method="post" onsubmit="return checkBlank();">
			<table class="update_table" >
				<tr>
				<td>작성자</td>
					<td><input class="table_writer" name="n_writer" type="hidden" size="5" maxlength="25" value="${detail.n_writer }">${detail.n_writer }</td>
					<td>제목</td>
					<td>
					<input class="table_subject" name="n_subject" size="40" maxlength="100" value="${detail.n_subject }"/></td>
				
				<tr>
					<td colspan="4"><textarea class="update_table_content" name="n_content" rows="15" cols="100" >${detail.n_content }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<p id="btnGroup_p" align="right">
							<input class="updateBtn" type="submit" alt="수정" value="&nbsp;" />
							<input class="resetBtn" type="reset" alt="초기화" value="&nbsp;" />
							<input class="cancelBtn" type="button" alt="취소" value="&nbsp;" onclick="javascript:history.go(-1)" />
						</p>
					</td>
				</tr>
			</table>
			
		</form>

	</div>
</body>
</html>