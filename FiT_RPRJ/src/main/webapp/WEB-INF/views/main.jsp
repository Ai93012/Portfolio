<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>







<br><br><br>


<div class="wrapper">
	<div class="wrap">
	
			</div>
			<div class="login_area">
			<c:if test = "${member == null }">
			<a href="member/loginForm"><img src="/resources/images/login.png" width="49px" height="48px"></a><br>
				<div class="login_button"><a href="/member/loginForm">로그인</a></div>
				<a href="/member/joinForm"><img src="/resources/images/sign.png" width="47px" height="46px"></a><br>
				<span><a href="/member/joinForm">회원가입</a></span>
				</c:if>  
				<!-- 로그인한 상태 -->
                <c:if test="${ member != null }">
                <div class="login_success_area">
                        <span>회원 : ${member.userName}님</span><br>
                     <a href="/member/joinForm"><img src="/resources/images/sign.png" width="47px" height="46px"></a><br>
                        <span><a href="/myPage">마이페이지</a></span>
                        <div class="logout_button_wrap">
				<a href="/member/logout.do"> <input type="button"value="로그아웃"></a>
			</div>	
                    </div>
                </c:if>
               
	
		</div>
		
		
	</div>
</div>

</body>
</html>