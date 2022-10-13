<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


    <!-- Font CSS -->
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

    <!-- login CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/member/login.css">   

	    <div class="container">
	        <div class="row">
	            <div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
	                <div class="panel border bg-white">
	                    <div class="panel-heading">
	                        <br>
	                        <h3 class="pt-3 font-weight-bold">로그인</h3>
	                        <br>
	                        <h2 tabindex="0" class="login-box-hd">VODA 계정으로 로그인</h2>
	                    </div>
	                    <div class="panel-body p-3">
	                    	 <form action="${path}/member/login" method="POST">
	                            <div class="form-group py-2"  style="margin-bottom: 0px;">
	                                <div class="input-field">
	                                    <span class="far fa-user p-2"></span> 
	                                    <input id="userId" name="m_id" type="text" placeholder="이메일 주소 또는 아이디"  autocomplete="off" required> 
	                                </div>
	                            </div>
	                            <div class="form-group py-1 pb-2"  style="margin-bottom: 15px;">
	                                <div class="input-field">
	                                    <span class="fas fa-lock px-2"></span>
	                                    <input id="userPwd" name="m_password" type="password" placeholder="비밀번호"  autocomplete="off" required>
	                                    <button class="btn bg-white text-muted"> 
	                                    <span class="far fa-eye-slash"></span>
	                                    </button>
	                                </div>
	                            </div>
	                            <span class="form-inline">
	                                <input type="checkbox" name="saveId" id="saveId">
	                                <label for="saveId" class="text-muted" id="idSaveCheck">아이디 저장</label> 
	                            </span>
	                            <span class="form-inline"> 
	                                <input type="checkbox" name="autoLogin" id="autoLogin"> 
	                                <label for="autoLogin" class="text-muted">자동 로그인</label>
	                            </span>
	                            <br>
	                            <button type="submit" class="btn-logoc" id="login_submit">로그인</button>
	                            <ul class="join-find">
	                                <li>
	                                    <a  href="${path}/member/findId" id="forgotId" class="">아이디 찾기</a>
	                                </li>
	                                <li>
	                                    <a href="${path}/member/findPwd" id="forgotPwd" class="">비밀번호 찾기</a>
	                                </li>
	                                <li>
	                                    <a href="${path}/member/enroll" id="enroll" class="">회원가입</a>
	                                </li>
	                            </ul>
	                        </form>
	                    </div>
	                    
	                    <!-- 카카오 로그인 -->
	                    <div class="mx-3 my-2 py-2 bordert">
	                        <a onclick="location.href='${urlKakao}'">
	                            <img id="kakao"
	                                src="http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg"
	                                width="222"
	                                alt="카카오 로그인 버튼"
	                                />
	                            </a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	   
	   

 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!--  아이디 저장 -->
<script type="text/javascript">
$(document).ready(function(){
	 
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var key = getCookie("key");
    $("#userId").val(key); 
     
    if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
    
</script>

                
   
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>	
