<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<script type="text/javascript" src="/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style4.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 페이지</title>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
</head>
<body>

<h1>수정 페이지</h1>

<br><br><br><br>
<form id="modifyForm" action ="/board/noticeMod" method="post">
	<div class="input_wrap" align=center>
		<label>제목</label>
    <br><br>
		<input name="nTitle" style="width: 550px; height: 20px;">
	</div>
  <br><br>
  <div class="input_wrap" align=center>
		<label>작성자</label>
    <br><br>
		<input name="aId" style="height: 20px;">
	
	</div>
  <br><br>
	<div class="input_wrap" align=center>
		<label>내용</label>
    <br><br>
		<textarea rows="30" cols="100" name="nContent"></textarea>
	</div>
  <br><br><br>
	<div class="btn_wrap" align=center>
		<button class="btn" id="modify_btn">수정</button>
		
	</div>
	</form>
	
	
	<form id="infoForm" action="/board/noticeMdo" method="get">
		<input type="hidden" id="nBno" name="nBno" value='<c:out value="${pageInfo.nBno}"/>'>
	
</form>




<script>
	let form = $("#infoForm");
	let mForm = $("#modifyForm")
	
	$("#list_btn").on("click", function(e){
		form.find("#nBno").remove();
		form.attr("action", "/board/noticeList");
		form.submit();
	});
	
	
	//수정 하기
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/noticeMod");
		mForm.submit();
	});	
	
	
	//수정 취소
	$("#cancel_btn").on("click", function(e){
		form.attr("action", "/board/notice");
		form.submit();
	});	

	$("#delete_btn").on("click", function(e){
		form.attr("action", "/board/deleteN");
		form.attr("method", "post");
		form.submit();
	});

</script>	
</body>
</html>