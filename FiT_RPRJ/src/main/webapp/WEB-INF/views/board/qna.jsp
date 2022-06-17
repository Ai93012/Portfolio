<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ include file="../header.jsp"%>  

    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style3.css">    
<!DOCTYPE html>
<html>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
<head>
<meta charset="UTF-8">
<title>${pageInfo.qTitle} : 문의사항</title>
</head>
<body>
	<div id="wrap" align="center">
    <br>
		<h1>&nbsp;${pageInfo.qBno}</h1>
		<table>
			<tr>
			<th colspan="3">${pageInfo.qTitle}</th>
			</tr>
			<tr>
				<td style="border-bottom: #111111 solid 1px;
	padding: 5px 5px 25px;">${pageInfo.qReg} &nbsp; 조회수 ${pageInfo.qHit} &nbsp; 작성자 ${pageInfo.qWrt}</td>
			</tr>
			<tr>
				<td colspan="3" style="border-bottom: #333333 solid 1px;
					padding: 35px 5px 25px;"><pre>${pageInfo.qContent}</pre></td>
			</tr>
		</table>
		<br><br>
    <div class="modify-button_wrap">
				<a class="underline-button" id="modify_btn">수정</a> &nbsp; &nbsp;
				<a class="underline-button" id="delete_btn">삭제</a> &nbsp; &nbsp;
				<a class="underline-button" id="list_btn">목록 페이지</a>
    </div>
    <div class="reply_subject">
    <br><br><br>
    <h2>답변</h2>
    </div>
    <br>
    <br>
    
    <c:if test="${member != null}">
    <div class="reply_button_wrap">
    	<button>답변 등록</button>
    </div>
    </c:if>
    
    
	  <form id="infoForm" action="/board/modifyQ" method="get">
		<input type="hidden" id="qBno" name="qBno" value='<c:out value="${pageInfo.qBno}"/>'>
	  </form>
	</div>

<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#qBno").remove();
		form.attr("action", "/board/qnaList");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/qnaMod");
		form.submit();
	});	
	
	$("#delete_btn").on("click", function(e){
		form.attr("action", "/board/deleteQ");
		form.attr("method", "post");
		form.submit();
	});
	
	
	/*답변 달기 */
	$(".reply_button_wrap").on("click", function(e){
		e.preventDefault();
		
		const aId = '${member.userId}';
		
		let popUrl = "/regReply/" + userId;
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		windows.open(popUrl, "리뷰 쓰기", popOption);
		
		
	});
	
</script>
</body>
</html>
