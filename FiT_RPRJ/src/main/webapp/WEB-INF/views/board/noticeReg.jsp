<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글 작성</title>
<h1>공지사항 글 작성</h1>
<form action="/board/noticeReg" method="POST">
	<div class="input_wrap">
		<label>Title</label>
		<input name="nTitle">
	</div>
	<div class="input_wrap">
		<label>Content</label>
		<textarea rows="3" name="nContent"></textarea>
	</div>
	<div class="input_wrap">
		<label>Writer</label>
		<input name="aId">
	
	</div>
	<button class="btn">등록</button>

</form>

</head>
<body>

</body>
</html>