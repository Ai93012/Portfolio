<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/dist/css/style.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 목록 페이지</title>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
</head>
<body>

	<div id="wrap" align="center">
		<h6>이벤트</h6>
		<table class="list">
		<c:set var="paging" value="${listModel.paging}" />
		<c:if test="${paging.numberOfRecords > 0}">
		</c:if>
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<a href="/board/eventReg"><b class="modify-button" >게시글 등록</b></td></a>
			</tr>
		
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				
			</tr>

	
		<c:forEach items="${list}" var="list">
				<td><c:out value="${list.eBno}"/></td>
				<td>
					<a class="move" href='/board/event?eBno=<c:out value="${list.eBno}"/>'>
						<c:out value="${list.eTitle}"/>
					</a>
				</td>
				<td><c:out value="${list.aId}"/></td> 
				<td><c:out value="${list.eReg}"/></td>	
				<td><c:out value="${list.eHit }"/></td>			
			</tr>
		</c:forEach>
		</div>
			
	<c:choose>
		<c:when test="${paging.numberOfRecords == 0}">
			<tr>
				<td colspan="5">
					게시글이 없습니다.
				</td>
			</tr>
		</c:when>
		<c:otherwise>
	
		
			<tr>
				<td colspan="5" style="text-align: center">
					<c:if test="${paging.startPageNo > paging.sizeOfPage}">
						<c class="page-button" href="<c:url value="/board/event.do?&p=${paging.prevPageNo}"/>">이전</c>
					</c:if>
					<c:forEach var="pno" begin="${paging.startPageNo}" end="${paging.endPageNo}">
						<c class="page-button" href="<c:url value="/board/event.do?&p=${pno}" />">[${pno}]</c>
					</c:forEach>
					<c:if test="${paging.endPageNo < paging.finalPageNo}">
						<c class="page-button" href="<c:url value="/board/event.do?&p=${paging.nextPageNo}"/>">다음</c>
					</c:if>
				</td>
			</tr>
		</c:otherwise>
	</c:choose>
		</table>
		
		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">
				
				
				</ul>
			</div>
		</div>
		
		<form id="moveForm" method="get">
		  <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">    
		</form>
	</div>
<script>

	$(document).ready(function(){
		let result = '<c:out value="${result}"/>';
		
		checkAlert(result);
		
		function checkAlert(result){
			
			if(result === ''){
				return;
				
			}
			
			if(result === "register success"){
				alert("등록 완료");
			}
			
			
			if(result === "modify success"){
				alert("수정 완료")
			}
			
			if(result === "delete success"){
				alert("삭제 완료")
			}
			
			
		}
		
	});
	
	
</script>	
</body>
</html>
