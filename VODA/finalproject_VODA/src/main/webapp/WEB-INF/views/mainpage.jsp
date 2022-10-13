<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!--BootStrap CSS-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	
	<!--BootStrap JS-->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
 	<!-- common CSS-->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/common/headerfooter.css">
    
    <!-- goods_all_list CSS-->
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/main/mainpage.css">
	
	<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 시작 -->
	<div class="container p-0">
	  <nav class="navbar navbar-expand-lg navbar-light">
	    <div class="container-fluid">
	        <a class="navbar-brand mr-1" href="#"><img class="logoimg" src="${path}/resources/img/common/VODA.png"></a>
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	        <div class="collapse navbar-collapse" id="navbarColor03">
	          <ul class="navbar-nav me-auto mt-1">
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                  aria-expanded="false" onclick="location.href='${path}/test'">
	                  CONTENTS
	              </a>
	              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                  <li><a class="dropdown-item" href="${path}/contents/contents_movie">MOVIE</a></li>
	                  <li><a class="dropdown-item" href="#">TV</a></li>
	                  <li><a class="dropdown-item" href="#">BOOK</a></li>
	                  <li><a class="dropdown-item" href="${path}/contents/contents_webtoon">WEBTOON</a></li>
	              </ul>
	            </li>
	            <li class="nav-item dropdown">
	                <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                    aria-expanded="false" onclick="location.href='${path}/product/product_all_list'">
	                    GOODS
	                </a>
	                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                    <li><a class="dropdown-item" href="#" onclick="location.href='${path}/product/product_all_list'">ALL GOODS</a></li>
	                    <li><a class="dropdown-item" href="#" onclick="location.href='${path}/product/product_popular_list'">POPULAR GOODS</a></li>
	                    <li><a class="dropdown-item" href="#" onclick="location.href='${path}/product/product_cart'">CART</a></li>
	                </ul>
            	</li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                  aria-expanded="false">
	                  RANKING
	              </a>
	              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="#">MOVIE</a></li>
	                <li><a class="dropdown-item" href="#">TV</a></li>
	                <li><a class="dropdown-item" href="#">BOOK</a></li>
	                <li><a class="dropdown-item" href="#">WEBTOON</a></li>
	              </ul>
	            </li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                  aria-expanded="false">
	                  COMMUNITY
	              </a>
	              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                  <li><a class="dropdown-item" href="#" onclick="location.href='${path}/board/free_board_list'">FREE BOARD</a></li>
	                  <li><a class="dropdown-item" href="#">CONTENT REQUEST</a></li>
	              </ul>
	            </li>
	          </ul>
	        </div>
	
	      <div class="search">
	        <form class="d-flex">
	          <input class="form-control me-sm-2" type="text">
	        </form>
	      </div>
	
        <c:if test="${ empty loginMember }">
	      <div class="right">
	        <a class="text-nowrap" id="login" href="#"
	        onclick="location.href='${path}/member/login'">로그인</a>
	        <a class="text-nowrap" id="join" href="#"
	        onclick="location.href='${path}/member/enroll'">회원가입</a>
	      </div>
		</c:if>
		<c:if test="${ !empty loginMember }">
		  <div class="right">
		  	<c:if test="${ loginMember.m_authorization == 'U' }">
		        <a href="${ path }/mypage/main" class="text-nowrap">
					마이페이지
				</a>
			</c:if>
		  	<c:if test="${ loginMember.m_authorization == 'M' }">
		        <a href="#" class="text-nowrap">
					관리자페이지
				</a>
			</c:if>
	        <button onclick="location.replace('${ path }/member/logout')" class="text-nowrap" >로그아웃</button>
	      </div>	
		</c:if>
	
	    </div>
	  </nav>
	</div>
	<!-- 헤더 끝 -->
    
 <div class="videowrapper">
      <!-- autoplay 요소를 지우면 자동 재생이 되지 않음 -->
      <video loop muted controls poster="${path}/resources/img/main/thumbnail.png">
        <source src="${path}/resources/img/main/trailer.mp4" type="">
      </video>
  
      <div class="container p-0">
        <div class="info">
          <p class="title">블레이드 러너 2049</p>
          <div class="outline d-none d-lg-block">
            핵전쟁 이후 혼돈으로 무질서로 휩싸인 2019년, 복제인간 ‘로이’를 포함한 <br>
            ‘넥서스 6’이 오프월드에서 반란을 일으킨 후 지구로 잠입한다... <br>
          </div>
          <br>
          <button type="button" class="btn btn-outline-light">리뷰 보러가기</button>
        </div>
      </div>
      
      <div class="container" style="padding: 0px;" id="rankcontainer">
        <div class="row rank-boxes">
  
          <div class="col mainrank ml-0">
            <div class="rankingnumber">1</div>
              <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>사랑의 불시착</p>
                  분류 드라마<br>
                  장르 로맨스<br>
                  등급 15세 이용가<br>
                </div>
          </div>
  
          <div class="col mainrank">
            <div class="rankingnumber">2</div>
              <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>사랑의 불시착</p>
                  분류 드라마<br>
                  장르 로맨스<br>
                  등급 15세 이용가<br>
                </div>
          </div>
  
          <div class="col mainrank">
            <div class="rankingnumber">3</div>
              <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 사랑의 불시착</p>
                  분류 드라마<br>
                  장르 로맨스<br>
                  등급 15세 이용가<br>
                </div>
          </div>
  
          <div class="col mainrank">
            <div class="rankingnumber">4</div>
              <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>사랑의 불시착</p>
                  분류 드라마<br>
                  장르 로맨스<br>
                  등급 15세 이용가<br>
                </div>
          </div>
  
          <div class="col mainrank mr-0">
            <div class="rankingnumber">5</div>
              <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>사랑의 불시착</p>
                  분류 드라마<br>
                  장르 로맨스<br>
                  등급 15세 이용가<br>
                </div>
          </div>
        
        </div> <!-- 랭크 박스 끝 -->
      </div> <!-- 컨테이너 끝 -->
    </div> <!-- 비디오래퍼 끝 -->

 <div style="height: 150px;"></div>
 
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>