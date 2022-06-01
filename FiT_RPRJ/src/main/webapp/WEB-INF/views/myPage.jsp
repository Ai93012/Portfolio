<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h1>마이페이지</h1>


<!--  <p>${member.userId}님 환영합니다! </p>-->
<h5>${member.userName}님, 환영합니다!</h5>
<hr>
<button type="button"><a href="cart/cartView">주문내역 조회</a></button>
주문하신 상품 조회내역을 확인할 수 있습니다.

<hr>
<button type="button"><a href="/profile">회원정보</a></button>
개인정보를 관리하는 곳입니다.

<hr>
<button type="button"><a href="board/qna">문의게시판</a></button>
저희 FIT는 항상 열린 마음으로 고객님의 문의를 받고 있습니다.
</body>
<hr>
<button type="button"><a href="/memberDelete">회원탈퇴</a></button>
<hr>
</html>