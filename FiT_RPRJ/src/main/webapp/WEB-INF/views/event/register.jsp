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
			<h1>이벤트 등록</h1>
			<form role="form" action="/event/register" method="post" enctype="multipart/form-data">
		  	<div class="form-group">
		  	  <label>제목</label> <input class="form-control" name="title">
		  	</div>
		  	<div class="form-group">
		  	  <label>내용</label>
		  	  <textarea class="form-control" rows="3" name="content"></textarea>
		  	</div>
		  	<div class="form-group">
		  	  <label>배너</label>
		  	  <input type="file" name="uploadFile">
		  	</div>
		  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
		  	
		  	<div class="form-group">
		  	  <label>작성자</label> <input class="form-control" name="aid">
		  	  
		  	</div>
		  	<button type="submit" class="btn btn-default">Submit Button</button>
		  	<button type="reset" class="btn btn-default">Reset Button</button>
		  </form>
			
		</section>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>