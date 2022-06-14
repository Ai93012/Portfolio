<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
<div align = "center">
<h2>아이디 찾기</h2>
<input type="email" id="email" name="userMail" placeholder="이메일을 입력하세요." />
<input type="button" onclick="sayHi()" id="fd_Id_button"  class="fd_Id_button" value="아이디 찾기">
					</div>



<input type="button" id="fd_Id_button" class="idCk_button" value="중복검사">


</form>





</body>
<script>


function sayHi(){
	
	
	 if($("#email").val() == ""){
	      alert("이메일을 입력해주세요");
	      $("#email").focus();
	      return false;
	    }
	 
	 $('.fd_Id_button').click(function(){
	
		 var userMail = $('.fd_Id_button').val();
		 var data = {userMail : userId}
		 
		 $.ajax({
			type : "post",
			url : "/findId",
			data : data.
			success : function(result){
			
			if("#email").val() == 	
			}
			 
		 })
		 
	 })
	 
	 
	 
}


</script>
</html>