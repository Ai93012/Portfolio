<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp"%> 
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