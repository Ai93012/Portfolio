<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%> 
<html>
<head>

<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/pget.js"></script>
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		
		<section>
			<h1>상품 상세 보기</h1>
			<p>홈>전체상품>카테고리이용</p>
			<div id="s1">
				<div id="s2">
					<div class="left">
						<c:set var="banner" value="${product.attachList[0]}"></c:set>
						<img src="/display${banner.listLink}" alt="상품3" width="300" height="300">
					</div>
					<div class="right">
					상품명: <c:out value="${product.name}"></c:out><br>
					가격: <c:out value="${product.price}"></c:out><br>
					할인가: <c:out value="${product.sale}"></c:out><br>
					배송비: <c:out value="${product.delivery}"></c:out><br>
					구매수량: <input type="number" name="count" value="1"개><br>
					<button id="cartBtn">장바구니</button> <button id="pursuitBtn">구매하기</button>
					
					
					</div>
				</div>
				<div id="s3">
					<div class="left">
					<c:out value="${product.detail}"></c:out>
					</div>
					<div class="right">
					<button id="foodBtn">푸드스토리</button>
					</div>
				</div>
				<div id="s4">
				
				</div>
			</div>	
		</section>
		
	</div>
</body>
</html>
</html>
