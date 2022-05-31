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
<title>공지사항 목록 페이지</title>
<!-- web font -->

</head>
<body>

<h1>Notice</h1>
	<div id="wrap" align="center">
		<h6>NOTICE</h6>
		<table class="list">
		<c:set var="paging" value="${listModel.paging}" />
		<c:if test="${paging.numberOfRecords > 0}">
		</c:if>
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<b class="modify-button" href="/board/noticeReg">게시글 등록</b></td>
			</tr>
			<tr>
				<th>#번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
	<c:choose>
		<c:when test="${paging.numberOfRecords == 0}">
			<tr>
				<td colspan="5">
					게시글이 없습니다.
				</td>
			</tr>
		</c:when>
		<c:otherwise>
		<c:forEach var="board" items="${listModel.boardList}">
			<tr class="record">
				<td>${board.num}</td>
				<td><a href="view.do?num=${board.num}">${board.title}</a></td>
				<td>${board.name}</td>
				<td><fmt:formatDate value="${board.writeDate}" /></td>
				<td>${board.readCount}</td>
			</tr>
		</c:forEach>
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
</body>
</html>