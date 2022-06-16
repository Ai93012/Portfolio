<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>  




<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style3.css"> 
<!DOCTYPE html>   
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/home.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>${event.title} : 이벤트</title>	
</head>
<body>
	<div id="wrapper">
		<header>
		
		</header>
		<section align = center;>
		
	         <input class="form-control" name='bno'
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
	
		</footer>
	</div>
</body>
</html>