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
<title>${pageInfo.nTitle} : 공지사항</title>
</head>
<body>
	<div id="wrap" align="center">
    <br>
		<h1>&nbsp;${pageInfo.nBno}</h1>
		<table>
			<tr>
			<th colspan="3">${pageInfo.nTitle}</th>
			</tr>
			<tr>
				<td style="border-bottom: #111111 solid 1px;
	padding: 5px 5px 25px;">${board.writeDate} &nbsp; 조회수 ${board.readCount} &nbsp; 작성자 ${pageInfo.aId}</td>
			</tr>
			<tr>
				<td colspan="3" style="border-bottom: #333333 solid 1px;
					padding: 25px 5px 15px;"><pre>${pageInfo.nContent}</pre></td>
			</tr>
		</table>
		<br><br>
    <div class="modify-button_wrap">
				<b class="modify-button" id="modify_btn">수정 </b> &nbsp; &nbsp;
				<b class="modify-button" id="delete_btn">삭제</b> &nbsp; &nbsp;
				<b class="modify-button" id="list_btn">목록 페이지</b>
    </div>
	  <form id="infoForm" action="/board/modify" method="get">
		<input type="hidden" id="nBno" name="nBno" value='<c:out value="${pageInfo.nBno}"/>'>
	  </form>
	</div>

<script>
	let form = $("#infoForm");
	
	$("#list_modify-button").on("click", function(e){
		form.find("#nBno").remove();
		form.attr("action", "/board/noticeList");
		form.submit();
	});
	
	$("#modify_modify-button").on("click", function(e){
		form.attr("action", "/board/noticeMod");
		form.submit();
	});	
	
	$("#delete_modify-button").on("click", function(e){
		form.attr("action", "/board/deleteN");
		form.attr("method", "post");
		form.submit();
	});
</script>
</body>
</html>