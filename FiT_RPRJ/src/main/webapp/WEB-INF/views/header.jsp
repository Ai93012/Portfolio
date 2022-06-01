<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- web font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="/resources/css/style.css">
<style>
div#wrap{
height:500px;
backgroud-color:silver;

}

div.d1{
	width: 100px;
	height: 100px;
	float: right;
}

div.d2{
	width: 200px;
	height: 100px;
	float: left;
}

</style>
<div id="header_wrap">


<header>
<!-- align="center" -->
	<div id="logo_wrap" align="center">
		<a href="/main"><img src="/resources/images/logo.png" width="180px" height="150px"></a>
	</div>
	<div id="submenu">
		<ul>
			<dic id="wrap">
			<h1>
				<div class="d1">
					
					
					<a href="member/loginForm"><img src="/resources/images/login.png" width="49px" height="48px"></a><br>
					<span>로그인</span>
				</div>
			</h1>
			<h2>
				<div class="d1">
					<a href="/member/joinForm"><img src="/resources/images/sign.png" width="47px" height="46px"></a><br>
					<span>회원가입</span>	
				</div>
			</h2>
			<h3>
				<div class="d1">
					<a href="/board/qnaList"><img src="/resources/images/qna.png" width="48px" height="47px"></a><br>
					<span>문의사항</span>
				</div>
			</h3>
			<h4>
				<div class="d1">
					<a href="/cart/cartView"><img src="/resources/images/order.png" width="50px" height="50px"></a><br>
					<span>주문조회</span>
				</div>
			</h4>
		</ul>
	</div>
</div>

<br><br><br><br>
<div>
<nav id="gnb">
	<ul>
	<div class="d2">
		<h5><a href="#"> 전체상품</a></h5>
	</div>	
	<div class="d2">	
		<h5><a href="/board/noticeList"> 공지사항</a></h5>
	</div>
	<div class="d2">
		<h5><a href="/board/eventList">이벤트</a></h5>
	</div>
	<div class="d2">
		<h5><a href="/board/foodStoryList">푸드스토리</a></h5>
	</div>
	</ul>
</nav>
</div>

</header>