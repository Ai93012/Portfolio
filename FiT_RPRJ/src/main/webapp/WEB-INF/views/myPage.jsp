<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/dist/css/style.css">
<title>마이페이지</title>
</head>
<body>
  <div align=center>
<h1>마이페이지</h1>

<br><br>
<!--  <p>${member.userId}님 환영합니다! </p>-->
<h2>${member.userName}님, 환영합니다!</h2>
<br><br>
<hr style="width: 70%; height: 1px; background-color: #333333; border: 0;">
<br><br>
<a href="cart/cartView"><button class="button">주문내역 조회</button></a>
&nbsp; &nbsp; &nbsp; &nbsp; 주문하신 상품 조회내역을 확인할 수 있습니다.
<br><br>

<hr style="width: 70%; height: 1px; background-color: #111111; border: 0;">
<br><br>
<a href="/profile"><button class="button">회원정보</button></a>
&nbsp; &nbsp; &nbsp; &nbsp; 개인정보를 관리하는 곳입니다.

<br><br>
<hr style="width: 70%; height: 1px; background-color: #111111; border: 0;">
<br><br>
<a href="board/qna"><button class="button">문의게시판</button></a>
&nbsp; &nbsp; &nbsp; &nbsp; 저희 FIT는 항상 열린 마음으로 고객님의 문의를 받고 있습니다.
</body>
<br><br>
<hr style="width: 70%; height: 1px; background-color: #111111; border: 0;">
<br><br>
<a href="/memberDeleteView"><button class="d-button">회원탈퇴</button></a>
<br><br>
<hr style="width: 70%; height: 1px; background-color: #111111; border: 0;">
  </div>
</html>
