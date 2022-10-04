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
<title>login</title>

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- Font CSS -->
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

    <!-- login CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/member/login.css">
    
    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


</head>

<body>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<c:if test="${ empty loginMember }">
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
	                                    <input id="userId" name="m_id" type="text" placeholder="이메일 주소 또는 아이디" required> 
	                                </div>
	                            </div>
	                            <div class="form-group py-1 pb-2"  style="margin-bottom: 15px;">
	                                <div class="input-field">
	                                    <span class="fas fa-lock px-2"></span>
	                                    <input id="userPwd" name="m_password" type="password" placeholder="비밀번호" required>
	                                    <button class="btn bg-white text-muted"> 
	                                    <span class="far fa-eye-slash"></span>
	                                    </button>
	                                </div>
	                            </div>
	                            <span class="form-inline">
	                                <input type="checkbox" name="remember" id="remember">
	                                <label for="remember" class="text-muted">아이디 저장</label> 
	                            </span>
	                            <span class="form-inline"> 
	                                <input type="checkbox" name="autoLogin" id="autoLogin"> 
	                                <label for="autoLogin" class="text-muted">자동 로그인</label>
	                            </span>
	                            <br>
	                            <button type="submit" class="btn-logoc">로그인</button>
	                            <ul class="join-find">
	                                <li>
	                                    <a  href="${path}/member/findId" id="forgotId" class="">아이디 찾기</a>
	                                    <li:after/>
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
	                    
	                    <div class="mx-3 my-2 py-2 bordert">
	                        <a id="custom-login-btn" href="javascript:loginWithKakao()">
	                            <img id="kakao"
	                                src="http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg"
	                                width="222"
	                                alt="카카오 로그인 버튼"
	                                />
	                            </a>
	                            <script type="text/javascript">
	                                function loginWithKakao() {
	                                Kakao.Auth.login({
	                                    success: function(authObj) {
	                                    alert(JSON.stringify(authObj))
	                                    },
	                                    fail: function(err) {
	                                    alert(JSON.stringify(err))
	                                    },
	                                })
	                                }
	                            </script>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
</c:if>
<c:if test="${ !empty loginMember }">
	
	
	
</c:if>                      
   
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>	
</body>
</html>