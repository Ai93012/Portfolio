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
<link rel="stylesheet" href="/resources/css/list.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<%@ include file="../header.jsp"%>
</head>
<body>
	<div id="wrapper">
		
	
		<div style="height: 100%">
			<div id="a">
				<select name="category" id="category">
					<option value="">카페고리<option>
					<option value="europe">유럽</option>
					<option value="asia">아시아</option>
					<option value="america">남미</option>
				</select>
			</div>
			<div id="b">
				<div>
					<h1>전체상품</h1>
					<p>최신등록순/가나다라순/가격높은순/가격낮은순</p>
				</div>
				<div id="productWrap">
					<table width="100%">
						<tr>
							<td width="25%">
							<c:if test="${!empty list[0]}">
								<c:set var="p1" value="${list[0]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품1" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)	
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[1]}">
								<c:set var="p1" value="${list[1]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품2" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[2]}">
								<c:set var="p1" value="${list[2]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품3" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[3]}">
								<c:set var="p1" value="${list[3]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품4" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
						</tr>
						<tr>
							<td width="25%">
							<c:if test="${!empty list[4]}">
								<c:set var="p1" value="${list[4]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품5" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[5]}">
								<c:set var="p1" value="${list[5]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품6" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[6]}">
								<c:set var="p1" value="${list[6]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품7" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
							<td width="25%">
							<c:if test="${!empty list[7]}">
								<c:set var="p1" value="${list[7]}"></c:set>
								<c:set var="banner" value="${p1.attachList[0]}"></c:set>
								<a href="/product/get?num=${p1.num}"><img src="/display${banner.listLink}" alt="상품8" width="300" height="300"></a><br>
								<c:out value="${p1.name}"></c:out><br>
		                  		<c:out value="${p1.price}"></c:out> | <c:out value="${p1.sale}"></c:out>(%)
							</c:if>
							</td>
						</tr>
					</table>
					<div class='pull-right'>
						<ul class="pagination">
						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous"><a href="#">previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
							<li class="paginate_button next"> <a href="#">${num}</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a href="#">Next</a><li>
						</c:if>
						</ul>
					</div>
				</div>
			</div>
			<div id="c">
				<p>홈 &gt; 전체상품</p>
			</div>
		</div>
		
		
	</div>
</body>
</html>