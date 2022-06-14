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

		</header>
		<section>
			<h1>상품 등록</h1>
			<form role="form" action="/product/register" method="post" enctype="multipart/form-data">
		  	<div class="form-group">
		  	  <label>상품명</label> <input class="form-control" name="name">
		  	</div>
		  	<div class="form-group">
		  	  <label>판매가격</label>
		  	  <input class="form-control" name="price">
		  	</div>
		  	<div class="form-group">
		  	  <label>할인가격</label>
		  	  <input class="form-control" name="sale">
		  	</div>
		  	<div class="form-group">
		  	  <label>상품설명</label>
		  	  <textarea class="form-control" col="10" name="detail"></textarea>
		  	</div>
		  	<div class="form-group">
		  	  <label>배송정보</label>
		  	  <textarea class="form-control" col="5" name="delivery"></textarea>
		  	</div>
		  	<div class="form-group">
		  	  <label>작성자</label>
		  	  <input class="form-control" name="writer">
		  	</div>
		  	<div class="form-group">
		  	  <label>재고수량</label>
		  	  <input class="form-control" name="inventory">
		  	</div>
		  	<div class="form-group">
		  	  <label>카테고리</label>
		  	  <input class="form-control" name="category">
		  	</div>
		  	<div class="form-group">
		  	  <label>썸네일 이미지</label>
		  	  <input type="file" name="image1">
		  	</div>
		  	<div class="form-group">
		  	  <label>상세 이미지</label>
		  	  <input type="file" name="image2">
		  	</div>
		  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >

		  	<button type="submit" class="btn btn-default">Submit Button</button>
		  	<button type="reset" class="btn btn-default">Reset Button</button>
		  </form>
			
		</section>
		<footer>
			
		</footer>
	</div>
</body>
</html>