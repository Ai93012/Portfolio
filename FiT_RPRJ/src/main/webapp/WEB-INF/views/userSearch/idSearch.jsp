<%@page import="com.fit.service.MemberService"%>
<%@page import="com.fit.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ include file="../header.jsp"%> 

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>아이디, 비밀번호 찾기</title>
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
										<div class="section text-center">
											<h4 class="mb-4 pb-3">아이디 찾기</h4>
											<div class="login_wrap">
												<input name="userId" class="form-style" placeholder="이메일을 입력해주세요." id="logid" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>
											</div>
											<div class="login_button_wrap">
											<input type="button" class="btn mt-4" value="찾기">
											<input type="button" class="btn mt-4" value="취소">
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
	    </div>
	</div>
</body>
</html>