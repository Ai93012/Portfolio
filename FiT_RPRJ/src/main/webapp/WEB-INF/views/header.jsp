<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- web font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<!-- my css -->
<link rel="stylesheet" href="/resources/css/header.css">
<div id="header_wrap" align=center>
	<div id="logo_wrap">
		<a href="/"><img src="/resources/images/logo.png" width="168px" height="168px"></a>
	</div>
	<div id="submenu">
	
		<c:if test = "${member == null }">
		<ul>
			<li>
				<!-- 로그인 안 한 상태 -->
				<div>
					<a href="/member/loginForm"><img src="/resources/images/login.png" width="49px" height="49px"></a><br>
					<span>로그인</span>
				</div>
			</li>
			<li>
				<div>
					<a href="/member/joinForm"><img src="/resources/images/sign.png" width="47px" height="49px"></a><br>
					<span>회원가입</span>
				</div>
			</li>
			<li>
				<div>
					<a href="/board/qnaList"><img src="/resources/images/qna.png" width="48px" height="49px"></a><br>
					<span>문의사항</span>
				</div>
			</li>
		</ul>
		</c:if>
		<c:if test="${ member != null }">
                <div class="login_success_area">
                       <ul>
			<li>
				<!-- 로그인 안 한 상태 -->
				<div>
					<a href="/member/logout.do"><img src="/resources/images/logout.png" width="49px" height="49px"></a><br>
					<span>로그아웃</span>
				</div>
			</li>
			<li>
				<div>
					<a href="/myPage"><img src="/resources/images/mypage.png" width="47px" height="49px"></a><br>
					<span>마이페이지</span>
				</div>
			</li>
			<li>
				<div>
					<a href="/board/qnaList"><img src="/resources/images/qna.png" width="48px" height="49px"></a><br>
					<span>문의사항</span>
				</div>
			</li>
		</ul>
			</div>	
                  </div>
               </c:if>
	</div>
</div>
<nav id="gnb">
	<ul>
		<h5><a class="none" href="/product/list"> 전체상품</a></h5>
		<h5><a class="none" href="/board/noticeList"> 공지사항</a></h5>
		<h5><a class="none" href="/event/list">이벤트</a></h5>
		<h5><a class="none" href="/board/foodStoryList">푸드스토리</a></h5>
	</ul>
</nav>
<br><br><br><br><br>