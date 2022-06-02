<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style3.css">    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.title} : 문의사항</title>
</head>
<body>
	<div id="wrap" align="center">
		<h1>번호 ${board.bno}</h1>
		<table>
			<tr>
			<th colspan="3">${board.title}</th>
			</tr>
			<tr>
				<td>${board.regDate} &nbsp; 조회수 ${board.readCount} &nbsp; 작성자 ${board.writer}</td>
			</tr>
			<tr>
				<td colspan="3"><pre>${board.content}</pre></td>
			</tr>
		</table>
		<br><br>
				<b class="modify-button" href="modify.do">게시글 수정 </b> &nbsp; &nbsp;
				<b class="modify-button" href="write.do">게시글 삭제</b> &nbsp; &nbsp;
				<b class="modify-button" href="write.do">게시글 리스트</b> &nbsp; &nbsp;
				<b class="modify-button" href="write.do">게시글 등록</b>
	</div>
</body>
</html>