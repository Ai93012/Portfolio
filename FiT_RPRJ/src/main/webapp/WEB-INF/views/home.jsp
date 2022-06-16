<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	
</head>
<body>
<div id="wrapper">
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<section>
		<div>
			<select name="category" id="category">
				<option value="category">카테고리
				<option>
				<option value="europe">유럽</option>
			<option value="europe">유럽</option>
				<option value="asia">아시아</option>
				<option value="america">남미</option>
			</select>
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
		</div>
		
		<!-- 최근 이벤트 3개를 보여주기  -->
		<div id="eventWrap" align="center">
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
	
</div>

<br><br>
<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>