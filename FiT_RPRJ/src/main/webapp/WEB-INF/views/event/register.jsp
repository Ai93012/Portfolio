<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/regstyle.css">


<html>
<head>

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
		  <br><br>
		<section align=center>
			<h1>이벤트 등록</h1>
			<form role="form" action="/event/register" method="post" enctype="multipart/form-data">
		  	<div class="form-group">
		  	  <label>제목</label> <input class="form-control" name="title" required>
		  	</div>
		  	<div class="form-group">
		  	  <label>작성자</label> 
		  	  <input class="form-control" style= "height: 20px;"  readonly="readonly"  name="aid">
		  	  
		  	</div>
		  	<div class="form-group">
		  	<br>
		  	  <label>내용</label>
		  	    <br>
		  	  <textarea class="form-control" rows="30" cols="100" name="content"></textarea>
		  	</div>
		  	<br>
		  	<div class="form-group">
		  	  <label>배너</label>
		  	  <input type="file" name="uploadFile">
		  	</div>
		  	<br><br>
		  	<input type="hidden" align="center" name="${_csrf.parameterName}" value="${_csrf.token}" >
		  	
		  	
		  	<button type="submit" class="btn btn-default">등록</button>
		  	<button type="reset" class="btn btn-default">다시 쓰기</button>
		  </form>
			
		</section>
		<footer>
		
		</footer>
	</div>
</body>
</html>