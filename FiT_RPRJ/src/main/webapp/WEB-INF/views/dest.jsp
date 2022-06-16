<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="header.jsp"%>  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- my css -->
<link rel="stylesheet" href="../resources/css/style.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinForm</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" 
integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
</script>


</head>


<body>


<div class="wrapper">
	<form id="memDel" method="post">
	<div class="wrap">
				<div class="subject">	
			<h1><div align="center">배송지관리</div></h1> <br>
				
				<hr>	
				</div>
				<div align="center">
				<div class="name_wrap">
					<div class="username">이름</div>
					<div class="name_input_box">
						<input class="name_input" name="adrName" placeholder="이름을 입력해주세요." />*
					</div>
				</div>
				
			
				<div class="form-group">
					<input class="form-control" placeholder="우편번호" name="delAdd1" type="text" readonly="readonly">
				 <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>  
				</div>
				<div class="form-group">
					<input class="form-control" placeholder="도로명주소" name="delAdd2" type="text" readonly="readonly">
				</div>
				<div class="form-group">
					<input class="form-control" placeholder="상세주소" name="delAdd3" type="text" >
				</div>
				
				<div class="usermail_wrap">
					<div class="usermail">핸드폰 번호</div>
					<div class="usermail_input_box">
							<input class="usermail_input" type=email name="phonNum" placeholder="핸드폰 번호" />*
					</div>
				</div>
				<br>
				<div class="message">배송메모 </div>
				<textarea id="msg" name="message" rows="4" cols="33"></textarea>
				<br>
				<div class= "save_button_wrap">
					<input type="button" class="save_button" value="저장" />
				</div>
			</div>
		</form>
		
		
		<p>
		
		<br>
		
		
		<h1>등록된 배송지</h1>
		<form action="/memberUpdate" method="GET">
	<table border=1 width=430>
	
	
			<tr>
				<td  align=center class="delName">이름 </td>
				 <c:forEach items="${list}" var="list">
				 <tr>
                <td><c:out value="${list.bno}"/></td>
				</tr>
				</c:forEach>
	
			<tr> 
				<td  align=center class="address">배송지 </td>
				<td> ${member.userId } </td>
			</tr>
			
			<tr>
				<td  align=center class="phonNum"> 핸드폰 번호 </td>
				<td> ${member.userId } </td>
			</tr>
				<tr>
			<tr>
				<td  align=center class="arsName"> 배송메모 </td>
				<td> <input  type="test"  name="test" value= ${edit.getUserPass() }> </td>
			</tr>	
		
		
		</table>
		</form>
	</div>
	</div>	
	
	
	
	
	

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>			
<script>



/* 배송지 저장 */
$(document).ready(function(){
	//저장 버튼(배송지 저장 작동)
	$(".save_button").click(function(){
		$("#memDel").attr("action", "/dest");
		$("#memDel").submit();
	});
});



	
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
                
                
                $("[name=delAdd1]").val(data.zonecode);
                $("[name=delAdd2]").val(fullRoadAddr);
                
                document.getElementById('delAdd1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('delAdd2').value = fullRoadAddr;
                document.getElementById('delAdd3').value = data.jibunAddress; 
            }
         }).open();
     }

		
    
	
	
	</script>




</body>
</html>