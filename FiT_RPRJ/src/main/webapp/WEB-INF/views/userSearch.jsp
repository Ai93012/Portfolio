<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="header.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
</head>
<body>

<br><br><br><br>
<br><br>


<form action="/findId" method="POST">
<div align="center">
<a href="userSearch/idSearch" onclick="alttertest()">아이디찾기</a>
<a href="userSearch/pwSearch">비밀번호찾기</a>
</div>



</form>




<script>
function alttertest(){
	alter("테스트")
}
</script>
</body>




</html>