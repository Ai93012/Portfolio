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
			<h1>이벤트 상세보기</h1>
			<div class="form-group">
	        	<label>Bno</label> <input class="form-control" name='bno'
	            	value='<c:out value="${event.bno}"/>' readonly="readonly">
	      	</div>
	      	<div class="form-group">
	        	<label>제목</label> <input class="form-control" name='title'
	          		value='<c:out value="${event.title }"/>' readonly="readonly">
	      	</div>
	      	<div class="form-group">
	        	<label>내용</label>
	        	<textarea class="form-control" rows="3" name='content'
	          		readonly="readonly"><c:out value="${event.content}" /></textarea>
	      	</div>
	      	<div class="form-group">
	        	<label>작성자</label> <input class="form-control" name='writer'
	          		value='<c:out value="${event.aid}"/>' readonly="readonly">
	      	</div>
		  	<div class="form-group">
		  	  <label>배너</label>
		  	  <c:set var="banner" value="${event.bannerList[0]}"></c:set>
		  	  <img src="/display${banner.listLink}" alt="이벤트1" width="300" height="300">
		  	</div>
		</section>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>