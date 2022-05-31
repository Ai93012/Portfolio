<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinForm</title>
<!-- web font -->


  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/joinform.css">



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>



<style>

</style>


</head>


<body>


<p> 적용되는지 확인 </p>

<div class="wrapper">
	<form id="join_form" method="post">

				
			<div align="center"><h5>회원가입</h5></div> <br>
				
				<hr>	
				
				<div align="center">
				<div class="name_wrap">
					<div class="username">이름</div>
					<div class="name_input_box">
						<input class="name_input" name="userName" placeholder="이름을 입력해주세요." required />*
					</div>
					<span class="final_name_ck">이름을 입력해주세요.</span>
				</div>
			
				
				<br>
				
				<div class="id_wrap">
					<div class="userid">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="userId"  placeholder="아이디를 입력해주세요.(영문, 소문자, 숫자만 입력 가능)" />*
					
					<input type="button" id="j_button" class="idCk_button" value="중복검사">
					</div>
					<span class="final_id_ck">아이디를 입력해주세요.</span>
				<br>
				</div>
				<div class="pw_wrap">
					<div class="userpass">비밀번호</div>
					<div class="pw_input_box">
							<input class="pw_input" type="password" name="userPass" placeholder="비밀번호를 입력해주세요.(영문 대/소문자, 숫자를 모두 포함)" />*
					</div>
					<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
				</div>
				<div class="pwck_wrap">
					<div class=pwck_wrap">비밀번호 확인</div>
					<div class="pwck_input_box">
							<input class="pwck_input" type="password" placeholder="비밀번호를 확인해주세요."  />
					</div>
					<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				</div>
				
				<br>
			<div class="address_wrap">
				<div class="form-group">
					<input class="form-control" placeholder="우편번호" name="address1" type="text" readonly="readonly">
				 <button type="button" class="button" onclick="execPostCode();"><i class="add-search"></i> 우편번호 찾기</button>  
				</div>
				<div class="form-group">
					<input class="form-control" placeholder="도로명주소" name="address2" type="text" readonly="readonly">
				</div>
				<div class="form-group">
					<input class="form-control" placeholder="상세주소" name="address3" type="text" >
				</div>
				<span class="final_addr_ck">주소를 입력해주세요.</span>
			</div>
				
				
				<div class="usermail_wrap">
					<div class="usermail">이메일</div>
					<div class="usermail_input_box">
							<input class="usermail_input" type=email name="userMail" placeholder="이메일을 입력해주세요." />*
					</div>
					<span class="final_mail_ck">이메일을 입력해주세요.</span>
				</div>
				
				<p>
				<div class= "join_button_wrap">
					<input type="button" class="join_button" id="j_button" value="회원가입" />
				</div>
			</div>
		</form>
	</div>

	
	

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>			
<script>



$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		
		
		//$("#join_form").attr("action", "/member/joinForm");
		//$("#join_form").submit();
	});
});





	//아이디 중복검사
	$('.idCk_button').click(function(){
		
		//console.log("keyup 테스트");
		
	var userId = $('.id_input').val();
	var data = {userId : userId}
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			/*console.log("성공 여부" + result);*/
		if(result != 'fail'){
			alert("사용가능한 아이디입니다.")
		} else {
			alert("중복된 아이디입니다.")
		}	
	
			
		}	//success 종료
		}); //ajax 종료
	});	//function 종료

	/*비밀번호 확인*/
	
	

	$('.pwck_input').on("keyup", function(){ 
		alert ('호출');
	});
	
	
		/*
		
		$.ajax({
		//현재 비밀번호(pw_input)와 비밀번호 확인(pwck_input)의 입력사항이 같으면
		if('.pw_input'== '.pwck_input'){ 
			$('.pw_input_re_1'); // '비밀번호가 일치합니다' 문구가 '비밀번호 확인' 입력창 아래에 뜸
		} else {
			$('.pw_input_re_2'); // 같지 않으면 '비밀번호가 일치하지 않습니다' 문구가 '비밀번호 확인' 입력창 아래에 뜸
		}
  }); 
	*/
	
	
	/* 다음 주소 연동 */
	function execPostCode() {
         new daum.Postcode({
             oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
                
                $("[name=address1]").val(data.zonecode);
                $("[name=address2]").val(fullRoadAddr);
                
                document.getElementById('address1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address2').value = fullRoadAddr;
                document.getElementById('address3').value = data.jibunAddress; 
            }
         }).open();
     }

		
    
	
	
	</script>




</body>
</html>