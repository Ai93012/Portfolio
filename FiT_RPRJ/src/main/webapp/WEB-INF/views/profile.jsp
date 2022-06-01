<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>


</head>

<body>
<section>
<div align="center"><font size=5>회원정보 수정</font></div> <br>
<div align="center">
<br><br>
	<form id="modifyForm" action="/profile" method="post">
	<table border=1 width=430>
	
	  
			<tr>
				<td  align=center class="userId">아이디 </td>
				<td>  ${member.userId }  </td>
			</tr>
	
			<tr>
				<td  align=center class="username">이름 </td>
				<td>  <input  type=text  name="userName"  value=  ${member.userName }  ></td>
			</tr>
			<tr>
				<td  align=center class="userPass">비밀번호 </td>
				<td> <input  type="password"  name="userPass" > </td>
			</tr>
			
			<!-- 
			<tr>
				<td  align=center class="npw">새로운 비밀번호 </td>
				<td> <input  type="password"  name="npwCk" value= ${edit.getUserPass() } ></td>
			</tr>
			<tr>
				<td  align=center class="userPass"> 비밀번호 확인 </td>
				<td> <input  type="password"  name="npwCk" value= ${edit.getUserPass() } ></td>
			</tr>
		 -->
		 
		 
			<tr>
				<td  align=center class="userMail"> 이메일 </td>
				<td> <input  type="userMail"  name="email" value= ${member.userMail } ></td>
			</tr>
			<tr>
				<td  align=center class="arsName"> 배송지 </td>
				<td> <a href= "/dest"><input type="button" class="button" value="배송지관리" /></a></td>
			</tr>
				<tr>
			
		</tr>
		<td colspan=2  align=center> 
        <a class="btn" id="modify_btn">수정 완료</a>
        <a class="btn" id="cancel_btn">수정 취소</a>
					</div>
					
					
				&emsp;
				<div class="wrap">
			  <button class="button">다시입력</button>
				</div>
			</td>
		
		
		</table>
		</form>
		
	</div>
	</section>
	
	
	<script>
	 let form = $("#infoForm");        // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
	    let mForm = $("#modifyForm");    // 페이지 데이터 수정 from
	    
	 
	    
	    /* 수정 하기 버튼 */
	    $("#modify_btn").on("click", function(e){
	        mForm.submit();
	    });
	    
	    /* 취소 버튼 */
	    $("#cancel_btn").on("click", function(e){
	        form.attr("action", "/board/get");
	        form.submit();
	    });    
	    
	 
	    
	    
	    
	</script>
</body>

</html>