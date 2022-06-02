<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/home.js"></script>
<link rel="stylesheet" href="/resources/css/home.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<header>
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
		<section>
			<h1>이벤트</h1>
			<button id="regBtn" type="button" onclick="location.href='/event/register'">
			이벤트 등록</button>
			<table width="100%">
				<thead>
					<tr>
						<th>#번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="ev">
					<tr>
						<td colspan="5">${ev.bno}</td>
						<td><a class="move" href='${ev.bno}'>${ev.title}</a></td>
						<td><fmt:formatDate value="${ev.reg}" pattern="yyyy-MM-dd" /></td>
						<td>${ev.aid}</td>
						<td>${ev.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</section>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>