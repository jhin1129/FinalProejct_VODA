<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwdReset</title>

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- login CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/member/login.css">
</head>
<body>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

   <div class="container">
        <div class="member_tit">
            비밀번호 재설정
        </div>    
        <div class="find_id_wrap">

            <form class="find_id_form">
                <div class="find_id_name1">
                    <div class="find_id_name2">
                        <label for="newPwd" class="find_id_name3">새 비밀번호 등록</label>
                        <div class="find_id_name4">
                            <input type="password" data-testid="input-box" name="newPwd" id="newPwd" 
                            placeholder="새 비밀번호를 입력해주세요." class="find_id_name5" required>
                        </div>
                        <div class="check_font" id="password_check"></div>
                    </div>
                    <p id="requiredPassword">10자 이상 입력</p>
                    <p id="requiredPassword">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</p>
                </div>
                <div class="find_id_email1">
                    <div class="find_id_email2">
                        <label for="newPwd2" class="find_id_email3">새 비밀번호 확인</label>
                        <div class="find_id_email4">
                            <input type="password" data-testid="input-box" name="newPwd2" id="newPwd2" 
                            placeholder="새 비밀번호를 한 번 더 입력해주세요." class="find_id_email5" required>
                        </div>
                    </div>
                    <div class="mismatch-message" style="color: red;"></div>
                </div>
                <div class="verification_code1">
                    <button class="verification_code2" type="submit" disabled radius="4">
                        <span class="verification_code3">확인</span>
                        <!-- 비밀번호 변경 완료 팝업이 뜨고 로그인 화면으로 이동! -->
                    </button>
                </div>
            </form>
        </div> 
    </div>

<br><br><br><br><br><br>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>	

<!--  유효성 검사 -->
<script>
    
    $('.find_id_name5').on('input', checkInput);
    $('.find_id_email5').on('input', checkInput);

    // input 입력 시에 checkInput 함수실행
    function checkInput() {
        var nameCheck = $('.find_id_name5').val();   
        var emailCheck = $('.find_id_email5').val();  
        var btnCheck = $('.verification_code2');

        if (nameCheck === '' || emailCheck === '') {
        // // 기본 버튼 색상
        // btnCheck.removeClass('on');
        // } else {
        // // 입력 시에 버튼 배경색 변경
        // btnCheck.addClass('on');
        // }
        
            btnCheck.css('background-color', '#ddd');
        } else {
            btnCheck.css('background-color', '#007bff');
            btnCheck.css('cursor', 'pointer');
        }
    }

</script>

<script >
var pwJ = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{10,}$/; 

// 비밀번호
$('#newPwd').blur(function(){
	if(pwJ.test($(this).val())){
		console.log(pwJ.test($(this).val()));
		$("#password_check").text('');
	} else {
		$('#password_check').text('비밀번호를 확인해 주세요');
		$('#password_check').css('color', 'red');
	}
});

</script>


<!-- 비밀번호 재확인 -->

<script>
$(document).ready(function () {
    $("#newPwd2").change(function(){
		var p1 = $("#newPwd");
		var p2 = $("#newPwd2");
		
		if(p1.val() != p2.val()){
			$(".mismatch-message").text("동일한 비밀번호를 입력해 주세요.");
			$(".mismatch-message").attr('style', 'visibility:visible;');
            $(".mismatch-message").attr('style', 'color: red');

		}else{
			$(".mismatch-message").text("");
			$(".mismatch-message").attr('style', 'visibility:hidden;');
		}
	});
});

</script>


</body>
</html>