<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/home.js"></script>
<link rel="stylesheet" href="/resources/css/home.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrapper">
	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<section>
		<h1>Hello world!</h1>
		<select name="category" id="category">
			<option value="cafe ring">카페고리
			<option>
			<option value="europe">유럽</option>
			<option value="southeast asia">동남아시아</option>
			<option value="japan">일본</option>
			<option value="china">중국</option>
			<option value="mexico">멕시코</option>
		</select>
		<!-- 최근 이벤트 3개를 보여주기  -->
		<div id="eventWrap">
			<ul>
			<c:forEach var="ev" items="${eventList}">
				<!-- BoardAttachVO : 이미지 정보 -->
				<c:set var="banner" value="${ev.bannerList[0]}"></c:set>
				<li>
					<a href="/event/get?bno=${ev.bno}"><img src="/display${banner.listLink}" alt="이벤트1" width="300" height="300"></a>
				</li>
			</c:forEach>
			</ul>
		</div>
	</section>
	<footer>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</div>

	
</body>
</html>
