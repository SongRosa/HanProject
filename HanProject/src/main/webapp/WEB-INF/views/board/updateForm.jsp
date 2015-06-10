<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>글쓰기</title>
<link type="text/css" rel="stylesheet" href="css/board/insert_style.css" >
<script src="http://code.jquery.com/jquery.js"></script>
<script>

$(function(){
	var p_num = ${detail.p_number};
	
		$("option:last").removeAttr("selected");
		$("option:nth-child(${detail.p_number+1})").attr("selected","selected");
		
});

</script>
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
					<td><input class="table_writer" name="b_writer" size="5" maxlength="25" value="${detail.b_writer }"></td>
					<td>제목</td>
					<td>
					<select class="p_number" name="p_number">
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
					<option selected="selected" value="12">자유글</option>
					</select>
					<input class="table_subject" name="b_subject" size="20" maxlength="100" value="${detail.b_subject }"/></td>
				
				<tr>
					<td colspan="4"><textarea class="update_table_content" name="b_content" rows="15" cols="100" >${detail.b_content }</textarea>
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