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
  <br><br><br>
<form action="/board/noticeReg" method="POST">
	<div class="input_wrap" align=center>
		<label>제목</label>
    <br><br>
		<input name="nTitle" style="width: 550px">
	</div>
  <br>
	<div class="input_wrap" align=center>
		<label>내용</label>
    <br><br>
		<textarea rows="30" cols="100" name="nContent"></textarea>
	</div>
  <br>
	<div class="input_wrap" align=center>
		<label>작성자</label>
    <br><br>
		<input name="aId">
	
	</div>
  <br><br>
  <div class="btn_wrap" align=center>
	<div class="btn" href="#">등록</div>

</form>

</head>
<body>

</body>
</html>