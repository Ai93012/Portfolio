<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>  
<link rel="stylesheet" href="../resources/css/style.css">



<html>
<head>
<meta charset="UTF-8">
<title>이벤트 목록 페이지</title>
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
		
		<header>
	
		</header>
		<section>
		<div id="wrap" align="center">
		<h6>이벤트</h6>
			
	
			<table width="100%">
				<thead>
				
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<a href="/event/register"><b class="underline-button" id=regBtn>이벤트 등록</b></td> </a>
			</tr>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="ev">
						<td>${ev.bno}</td>
						<td>
						<a class="underline" href='/event/get?bno=<c:out value="${ev.bno}"/>'>
								<c:out value="${ev.title}"/>
						</a>
						</td>
						<td><fmt:formatDate value="${ev.reg}" pattern="yyyy-MM-dd" /></td>
						
						<td>${ev.aid}</td>
						<td>${ev.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</section>
		<footer>
		
		</footer>
	</div>
</body>
</html>