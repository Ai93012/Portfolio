<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>로그인 및 회원가입 페이지</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'><link rel="stylesheet" href="../resources/dist/css/style2.css">
<style>
	body{
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<a href="https://front.codes/" class="logo" target="_blank">
	</a>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
									<form id ="login_form" method="post">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">로그인</h4>
											<div class="login_wrap">
												<input name="userId" class="form-style" placeholder="아이디를 입력해주세요." id="logid" autocomplete="off">
												<i class="input-icon uil uil-user-circle"></i>
											</div>
											<br>
											<div class="pw_wrap">
												<input type="password" name="userPass" class="form-style" placeholder="비밀번호를 입력해주세요." id="logpass" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="login_button_wrap">
											<input type="button" class="btn mt-4" value="로그인" onclick="checkLogin()">
											</div>
                            				<p class="mb-0 mt-4 text-center"><a href="/userSearch" class="link">아이디, 비밀번호 찾기</a></p>
				      					</div>
				      					</form>
			      					</div>
			      				</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
<!-- partial -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
<script>
/* 로그인 버튼 클릭 메서드 */
 
$(".login_button").click(function(){
	/*alert("로그인 버튼 작동");*/
	/*로그인 메서드 서버 요청 */
	$("#login_form").attr("action", "/member/loginForm");
	$("#login_form").submit();	
}); 
 
</script>
  <script  src="./script.js"></script>

</body>
</html>