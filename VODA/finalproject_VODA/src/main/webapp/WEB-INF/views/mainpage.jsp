<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" type="text/css" href="../../CSS/Common/headerfooter.css">

    <!-- mainpage CSS-->
    <link rel="stylesheet" href="../../CSS/Main/mainpagestyle.css">
    
    <title>Document</title>
</head>
<body>

<!-- 헤더 시작 -->
<div class="container p-0">
  <nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand mr-1" href="#"><img class="logoimg" src="../../IMG/Common/VODA.png"></a>
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
                  <li><a class="dropdown-item" href="#">MOVIE</a></li>
                  <li><a class="dropdown-item" href="#">TV</a></li>
                  <li><a class="dropdown-item" href="#">BOOK</a></li>
                  <li><a class="dropdown-item" href="#">WEBTOON</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">GOODS</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">RANKING</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  COMMUNITY
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">FREE BOARD</a></li>
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

      <div class="right">
        <a class="text-nowrap" id="login" href="#">로그인</a>
        <a class="text-nowrap" id="join"href="#">회원가입</a>
      </div>

    </div>
  </nav>
</div>
<hr class="mt-1 mb-0 line">
<!-- 헤더 끝 -->
    
    <div class="videowrapper">
      <!-- autoplay 요소를 지우면 자동 재생이 되지 않음 -->
      <video loop muted controls poster="../../IMG/Main/thumbnail.png">
        <source src="../../IMG/Main/trailer.mp4" type="">
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

    <!-- 푸터 -->
    <footer class="bg-light text-center text-lg-start">
      <div style="background-color: rgb(235, 236, 240);">
          <!-- Grid container -->
          <div class="container p-4" style="background-color: rgb(235, 236, 240);">
              <!--Grid row-->
              <div class="row">
                  <!--Left Grid column-->
                  <div class="col-lg-6 col-md-12 mb-1 mb-md-0"
                      style="text-align:center; background-color: rgb(235, 236, 240);">
                      <h5 class="text-uppercase">Project</h5>
                      <div style="text-align:center;"><img id="footerlogo" src="../../IMG/Common/VODA.png" class="cul my-3"> <br><br>
                          <a class="text-dark" href="#">© 2022 Copyright: voda.com</a>
                      </div>
                  </div>
                  <!--Left Grid column-->
  
                  <!--Right Grid column-->
                  <div class="col-lg-6 col-md-12 mb-4 mb-md-0"
                      style="text-align:center; background-color: rgb(235, 236, 240);">
                      <h5 class="text-uppercase">contact us</h5>
                      <div class="cul my-4">
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                              class="bi bi-telephone-fill" viewBox="0 0 16 16">
                              <path fill-rule="evenodd"
                                  d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                          </svg> &nbsp; 02-123-4567 &nbsp;
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                              class="bi bi-envelope-fill" viewBox="0 0 16 16">
                              <path
                                  d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                          </svg> &nbsp; vodaofficial@gmail.com <br><br>
                          <p>
                              <a href="#!">이용안내</a> &nbsp;
                              <a href="#!">이용약관</a> &nbsp;
                              <a href="#!">개인정보처리방침</a>
                          </p>
                          <div>Business license : 706-20-01181 <br> Mall-order license : 2022-서울시-0334</div>
                      </div>
                  </div>
                  <!--Right Grid column-->
              </div>
              <!--Grid row-->
          </div>
          <!-- Grid container -->
    </footer>
    <!-- 푸터 끝-->
</body>
</html>