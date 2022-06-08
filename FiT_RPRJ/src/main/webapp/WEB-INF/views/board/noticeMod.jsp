<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style.css">
    
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

<form id="modifyForm" action ="/board/noticeMod" method="post">
	<div class="input_wrap" align=center>
		<label>제목</label>
		<input name="nTitle" style="width: 550px"  value='<c:out value="${pageInfo.nTitle}"/>' >
	</div>
	<br><br>
	
	<div class="input_wrap" align=center>
		
		<textarea rows="30" cols="100" name="nContent" ><c:out value="${pageInfo.nContent}"/></textarea>
	</div>
	<br><br>
	<div class="input_wrap" align=center>
		<label>작성자</label>
		<input name="aId" readonly="readonly" value='<c:out value="${pageInfo.aId}"/>' >
	</div>	
	  <br><br><br>
	<div class="btn_wrap" align=center>
		<a class="btn" id="modify_btn">수정 완료</a>&nbsp; &nbsp;
		<a class="btn" id="cancel_btn">수정 취소</a>&nbsp; &nbsp;
		<a class="btn" id="delete_btn">삭제</a>
		
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