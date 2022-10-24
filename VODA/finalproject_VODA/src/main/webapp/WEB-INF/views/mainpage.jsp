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
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
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
	                  <li><a class="dropdown-item" href="${path}/contents/contents?type=movie&sort=new">MOVIE</a></li>
	                  <li><a class="dropdown-item" href="${path}/contents/contents?type=tv&sort=new">TV</a></li>
	                  <li><a class="dropdown-item" href="${path}/contents/contents?type=book&sort=new">BOOK</a></li>
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
	                <li><a class="dropdown-item" href="#" onclick="location.href='${path}/ranking/ranking'">MOVIE</a></li>
	                <li><a class="dropdown-item" href="#" onclick="location.href='${path}/ranking/ranking'">TV</a></li>
	                <li><a class="dropdown-item" href="#" onclick="location.href='${path}/ranking/ranking'">BOOK</a></li>
	                <li><a class="dropdown-item" href="#" onclick="location.href='${path}/ranking/ranking'">WEBTOON</a></li>
	              </ul>
	            </li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
	                  aria-expanded="false">
	                  COMMUNITY
	              </a>
	              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                  <li><a class="dropdown-item" href="#" onclick="location.href='${path}/board/free_board_list'">FREE BOARD</a></li>
	                  <li><a class="dropdown-item" href="#" onclick="location.href='${path}/board/question_board_list'">Q&A</a></li>
	                  <li><a class="dropdown-item" href="#">CONTENT REQUEST</a></li>
	              </ul>
	            </li>
	          </ul>
	        </div>
	
	      <div class="search">
	        <form class="d-flex" id="frm-foo">
	          <input class="form-control me-sm-2" type="text" name="keyword" id="searchInput">
	        	<button type="button" id="searchBtn" >검색</button> 
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
		        <a href="${ path }/admin/admin_dashboard" class="text-nowrap">
					관리자페이지
				</a>
			</c:if>
	        <a class="text-nowrap" href="${ path }/member/logout"
	        	style="margin-left: 16px;">
				로그아웃
			</a>
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
      
  
  <div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false"
                        data-interval="false">
	<!--carousel-->
	<div class="carousel-inner" style="height:500px; width:1200px; margin:auto;">
	    <div class="carousel-item active">
  		<!--carousel page 1 start-->
  		
      <div class="container" style="padding: 0px;" id="rankcontainer">
        <div class="row rank-boxes">
  		<c:forEach var="contents" items="${ list }" begin="0" end="0">
          <div class="col mainrank ml-0">
            <div class="rankingnumber">1</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		 </c:forEach>
  		
  		<c:forEach var="contents" items="${ list }" begin="1" end="1">
          <div class="col mainrank">
            <div class="rankingnumber">2</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
               	  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		</c:forEach>
  		
  		
  		<c:forEach var="contents" items="${ list }" begin="2" end="2">
          <div class="col mainrank">
            <div class="rankingnumber">3</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		</c:forEach>
  		
  		<c:forEach var="contents" items="${ list }" begin="3" end="3">
          <div class="col mainrank">
            <div class="rankingnumber">4</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		 </c:forEach>
  		 
  		 <c:forEach var="contents" items="${ list }" begin="4" end="4">
          <div class="col mainrank mr-0">
            <div class="rankingnumber">5</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
       	 </c:forEach>
        
        </div>
       
      <div class="carousel-item">
  		
	<div class="container" style="padding: 0px;" id="rankcontainer">
        <div class="row rank-boxes">
  		<c:forEach var="contents" items="${ list }" begin="5" end="5">
          <div class="col mainrank ml-0">
            <div class="rankingnumber">1</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		 </c:forEach>
  		
  		<c:forEach var="contents" items="${ list }" begin="6" end="6">
          <div class="col mainrank">
            <div class="rankingnumber">2</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
               	  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		</c:forEach>
  		
  		
  		<c:forEach var="contents" items="${ list }" begin="7" end="7">
          <div class="col mainrank">
            <div class="rankingnumber">3</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		</c:forEach>
  		
  		<c:forEach var="contents" items="${ list }" begin="8" end="8">
          <div class="col mainrank">
            <div class="rankingnumber">4</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
  		 </c:forEach>
  		 
  		 <c:forEach var="contents" items="${ list }" begin="9" end="9">
          <div class="col mainrank mr-0">
            <div class="rankingnumber">5</div>
              <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg" class="poster" alt="">
                <div class="rankinginfo">
                  <p>제목 ${ contents.c_title }</p>
                  분류 ${ contents.c_type }<br>
                  장르 ${ contents.c_genre }<br>
                  등급 ${ contents.c_age }세 이용가<br>
                </div>
          </div>
       	 </c:forEach>
         </div>
	</div>
       <!--carousel page 2 end-->
     
      
        </div> <!-- 랭크 박스 끝 -->
   </div>
   
   
   <!--carousel-inner end-->
   <c:if test="${fn:length(list) > 5}">
	   <div style="width: 5%;" class="my-5">
	       <button style="width: 5%; height:100px; margin-top:135px; margin-left:-7px; z-index: 6;"
	           class="carousel-control-prev" type="button"
	           data-target="#carouselExampleControlsNoTouching" data-slide="prev">
	           <img src="${path}/resources/img/ranking/slide-left.png" alt="" class="slide-button"
	               style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
	           <span class="sr-only">Previous</span>
	       </button>
	       <button style="width: 5%; height:100px; margin-top:135px; margin-right:-7px; z-index: 6;"
	           class="carousel-control-next" type="button"
	           data-target="#carouselExampleControlsNoTouching" data-slide="next">
	           <img src="${path}/resources/img/ranking/slide-right.png" alt="" class="slide-button"
	               style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
	            <span class="sr-only">Next</span>
	        </button>
	    </div>
	</c:if>
	
   		</div> <!-- 컨테이너 끝 -->
    </div> <!-- 비디오래퍼 끝 -->
</div>
<!--carousel-->
        
        
      

<div style="height: 300px;"></div>
 
<script>
$(document).ready(() => {
	$("#searchBtn").on("click", () => {

		var searchVal = $("#searchInput").val();
		
		location.href="${path}/contents/contents_search?keyword="+searchVal+"";
	});
 });
</script> 
 
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>