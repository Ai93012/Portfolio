<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style.css">


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
<link rel="stylesheet" href="../resources/css/loginform.css">
</head>
<body>
<div class="wrap">

<form id ="login_form" method="post">
		<div class="login_wrap">
			<div align="center"><h5>로그인</h5>
		</div>
		
		
		<div class="login_wrap" align="center"> 
			아이디
			<div class="userid_wrap">
					<div class="userid_input_box">
					<input class="userid_input" name="userId">
				</div>
					<c:if test = "${result == none }">
                <div class = "login_warn2">ID를 입력해주세요</div>
               		 </c:if>
			</div>
			<br>
			<div class="pw_wrap">
			비밀번호
				<div class="pw_input_box">
					<input type="password" class="pw_input" name="userPass">
				</div>
				<c:if test = "${result == none }">
                <div class = "login_warn2">PassWord를 입력해주세요</div>
               		 </c:if>
			</div>
			
			<c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
			<div class="login_button_wrap">
			<br>
				<input type="button" class="login_button" value="로그인" onclick="checkLogin()">
			</div>			
		</div>
		</div>
			<p>
			<div class="login_wrap" align="center"> 
			<div class="findId_button_wrap">
				<a href= "/userSearch"><input type="button" class="button" value="아이디, 비밀번호 찾기"></a>
			</div>
			<br>
			<div class="login_button_wrap">
				<a href="/member/joinForm"><input type="button" class="button" value="회원가입">
			</a></div>
			</div>
			
	</div>
</form>



<script>
/* 로그인 버튼 클릭 메서드 */
 
$(".login_button").click(function(){
	/*alert("로그인 버튼 작동");*/

	/*로그인 메서드 서버 요청 */
	$("#login_form").attr("action", "/member/loginForm");
	$("#login_form").submit();	
}); 
 
</script>

</body>
</html>