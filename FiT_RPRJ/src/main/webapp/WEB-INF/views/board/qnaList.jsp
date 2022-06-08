<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>문의사항 목록 페이지</title>
<!-- web font -->

</head>
<body>

<h1>문의사항 목록 페이지</h1>
	<div id="wrap" align="center">
		<h6>문의사항</h6>
		<table>
			<thead>
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<a class="modify-button" href="/board/qnaReg">게시글 등록</b></td>
			</tr>
			<tr>
				<th class="qBno_width">번호</th>
				<th class="qTitle_width">제목</th>
				<th class="userName_width" >작성자</th>
				<th class="aReg_width" >작성일</th>
				<th class="aHit_width">조회수</th>
			</tr>
		   </thead>	
			  <c:forEach items="${list}" var="list">
            <tr align = "center">
                <td><c:out value="${list.qBno}"/></td>
                <td>
                	<a class="move" href='/board/qna?qBno=<c:out value="${list.qBno}"/>'>
                	<c:out value="${list.qTitle}"/>
                	</a>
                </td>
                
                <td><c:out value="${list.userName}"/></td>
                <td><c:out value="${list.qReg}"/></td>
                <td><c:out value="${list.qHit}"/></td>
            </tr>
        </c:forEach>
        </table>
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
						<a href="<c:url value="/board/qna.do?&p=${paging.prevPageNo}"/>">이전</a>
					</c:if>
					<c:forEach var="pno" begin="${paging.startPageNo}" end="${paging.endPageNo}">
						<a href="<c:url value="/board/qna.do?&p=${pno}" />">[${pno}]</a>
					</c:forEach>
					<c:if test="${paging.endPageNo < paging.finalPageNo}">
						<a href="<c:url value="/board/qna.do?&p=${paging.nextPageNo}"/>">다음</a>
					</c:if>
				</td>
			</tr>
		</c:otherwise>
	</c:choose>
		</table>
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