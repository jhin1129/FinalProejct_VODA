<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
	
  <!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <!-- star rating CSS-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/contents/contents_detail.css">

  <!-- commentplus CSS-->
  <link rel="stylesheet"type="text/css" href="${path}/resources/css/contents/contents_comments.css">
  
  <!--BootStrap CSS-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

  <!--BootStrap JS-->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <div class="row" id="posterbg">
      <div class="col-2 d-none d-lg-block LeftGradient p-0">
      </div>
      <div class="col p-0">
          <img id="graposter" src="https://i.pinimg.com/736x/14/90/6a/14906a3dbc5cae4d1f3a6a1f582936ae.jpg" class="" alt="..." />
      </div>
      <div class="col-2 d-none d-lg-block RightGradient p-0">
      </div>
  </div>
        
  <div class="container" id="profilecontainer">
    <div class="profile">
        <img src="https://blog.kakaocdn.net/dn/bVWNXg/btqBs0rlmaO/7z3GiCy6IS0HydFtKUKxMk/img.jpg" alt="">
    </div>
    <div class="contentsdetail">
      <div class="profiletitle"> 알라딘</div>
        <span class="profiledetailnum"> 2019 &nbsp;</span> 
        <span class="profiledetail">•&nbsp; 판타지 &nbsp;•</span>  
        <span class="profiledetail">&nbsp; 미국 &nbsp;</span>       
        <hr>
      <div class="profileavr">평균 ★ 3.5 (5134명)</div>
        <hr>
        <div class="row">
          <!-- partial:index.partials.html -->
          <div class="col">
            <div id="half-stars-example">
              <div class="rating-group">
                  <input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">
                  <label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>
                  <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">
                  <label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">
                  <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">
                  <label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">
                  <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>
                  <label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">
                  <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">
                  <label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">
                  <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">
                  <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                  <input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">
              </div>
              <!-- partial -->
            </div>
          </div>
          <div class="col" style="margin-top: 23px;">
            <button class="bookmark">
              <svg viewBox="0 0 36 36">
              <path class="filled" d="M26 6H10V18V30C10 30 17.9746 23.5 18 23.5C18.0254 23.5 26 30 26 30V18V6Z" />
              <path class="default" d="M26 6H10V18V30C10 30 17.9746 23.5 18 23.5C18.0254 23.5 26 30 26 30V18V6Z" />
              <path class="corner" d="M10 6C10 6 14.8758 6 18 6C21.1242 6 26 6 26 6C26 6 26 6 26 6H10C10 6 10 6 10 6Z" />
            </button>
            <span id="bookmarktext">북마크</span>
            <!-- bookmark Js-->
            <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/3.4.0/gsap.min.js'></script>
            <script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/MorphSVGPlugin3.min.js'></script><script  src="script.js"></script>
          </div>   
          
          <div class="col">   
            <a id="comment" href="#popup1">
              <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
              </svg>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;코멘트
            </a>
          </div>

    <!--popup1-->
  <div id="popup1" class="popup-container">
    <div class="popup-content">
      <a href="#" class="close">&times;</a>
      <div class="gamsang">COMMENT</div>
      <form action="">
        <div class="staraverage" style="text-align: center;">
          <fieldset class="rate">
            <input type="radio" id="rating10" name="rating" value="10" /><label for="rating10" title="5 stars"></label>
            <input type="radio" id="rating9" name="rating" value="9" /><label class="half" for="rating9" title="4 1/2 stars"></label>
            <input type="radio" id="rating8" name="rating" value="8" /><label for="rating8" title="4 stars"></label>
            <input type="radio" id="rating7" name="rating" value="7" /><label class="half" for="rating7" title="3 1/2 stars"></label>
            <input type="radio" id="rating6" name="rating" value="6" /><label for="rating6" title="3 stars"></label>
            <input type="radio" id="rating5" name="rating" value="5" /><label class="half" for="rating5" title="2 1/2 stars"></label>
            <input type="radio" id="rating4" name="rating" value="4" /><label for="rating4" title="2 stars"></label>
            <input type="radio" id="rating3" name="rating" value="3" /><label class="half" for="rating3" title="1 1/2 stars"></label>
            <input type="radio" id="rating2" name="rating" value="2" /><label for="rating2" title="1 star"></label>
            <input type="radio" id="rating1" name="rating" value="1" /><label class="half" for="rating1" title="1/2 star"></label>
          </fieldset>
        </div>
        <div id="commentinputbox">
                <textarea name="commentinput" id="commentinput" type="text" placeholder="당신의 감상을 적어보세요"></textarea> <br>
                <button class="commentsubmit">
                    평가하기
                </button>
            </div>  
        </form>
        <div class="commenttypecount">1/1000</div>
    </div>
  </div>

        </div>
    </div>
  </div>
<hr style="margin-top: 20px;">
      
  <div class="container bg-light" id="basicinformation-container"> <!--회색 박스 시작 -->
    <div id="gibonjungbo" class="mt-0"> 기본 정보 </div>
      <div id="gibonjungbotext">
        <div class="row">
          <div class="col-3" id="contentinfo">
            6/45 <br>
            2022 · 한국 · 코미디 <br>
            1시간 53분 · 12세 <br><br>
          </div>
          <div class="col-7" id="julgury">
            <div id="julguryline">
            “45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리, 내가 주웠지 말입니다” <br>
            우연히 1등 당첨 로또를 주운 말년 병장 ‘천우’. <br>
            심장이 터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또. <br>
            바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다!...
            </div>
          </div>
        </div>
      </div>

    <div id="gibonjungbo"> 관련 영상 </div>
    <!-- 16:9 aspect ratio -->
    <div class="embed-responsive embed-responsive-16by9">
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/XN_T_nKCtm0?controls=0"></iframe>
    </div>

    <div id="gibonjungbo" style="margin-bottom: 5px;"> 출연 제작 </div>

      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"> <!--carousel-->
        <div class="carousel-inner">
          <div class="carousel-item active"> <!--carousel page 1 start-->
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
<hr style="margin: 0px;">
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
<hr style="margin: 0px;">
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
          </div> <!--carousel page 1 end-->

          <div class="carousel-item"> <!--carousel page 2 start-->
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
<hr style="margin: 0px;">
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
<hr style="margin: 0px;">
            <div class="row" id="inmul">
              <div class="col-actor">
                <div class="sajin" >
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">가이 리치</div>
                <div style="color:gray; font-size:0.9em;">감독</div>
              </div>
              <div class="col-actor" style="padding-left: 0px">
                <div class="sajin">
                  <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDExMDFfMyAg/MDAxNjA0MjI5NDA4NDMy.5zGHwAo_UtaQFX8Hd7zrDi1WiV5KrDsPHcRzu3e6b8Eg.IlkR3QN__c3o7Qe9z5_xYyCyr2vcx7L_W1arNFgwAJwg.JPEG.gambasg/%EC%9C%A0%ED%8A%9C%EB%B8%8C_%EA%B8%B0%EB%B3%B8%ED%94%84%EB%A1%9C%ED%95%84_%ED%8C%8C%EC%8A%A4%ED%85%94.jpg?type=w800" alt="">
                </div>
              </div>
              <div class="col-name">
                <div style="font-size:1em; margin-top: 5px;">윌 스미스</div>
                <div style="color:gray; font-size:0.9em;">주연 | 지니</div>
              </div>
            </div> 
          </div> <!--carousel page 2 end-->
        </div>
          <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </button>
      </div> <!--carousel-->

    <div id="gibonjungbo"> 평균 별점 </div>
    
    <div class="chart"  style="margin:auto;">
      <div class="bar" data-bar-value="17.45"><span class="bar__name"></span></div>
      <div class="bar" data-bar-value="34.91"><span class="bar__name">1</span></div>
      <div class="bar" data-bar-value="70.36"><span class="bar__name"></span></div>
      <div class="bar" data-bar-value="31.07"><span class="bar__name">2</span></div>
      <div class="bar" data-bar-value="23.39"><span class="bar__name"></span></div>
      <div class="bar" data-bar-value="43.28"><span class="bar__name">3</span></div>
      <div class="bar" data-bar-value="25.48"><span class="bar__name"></span></div>
      <div class="bar" data-bar-value="23.39"><span class="bar__name">4</span></div>
      <div class="bar" data-bar-value="43.28"><span class="bar__name"></span></div>
      <div class="bar" data-bar-value="25.48"><span class="bar__name">5</span></div>
    </div>


    <span id="gibonjungbo"> 코멘트 </span>

    <span style="font-size: 1em; color: gray;">1000+</span>

    <span style="color: rgb(73,95,233); float: right; font-weight: 600;">더보기</span>

    <div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false"
    data-interval="false">
    <!--carousel-->
    <div class="carousel-inner">
        <div class="carousel-item active">
        <!--carousel page 1 start-->
            <div class="row mt-2">
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox" style="width: 168px;">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>            
                </div>
            </div>    
        </div>
        <!--carousel page 1 end-->

        <div class="carousel-item">
            <!--carousel page 2 start-->
            <div class="row mt-2">
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>
                </div>
                <div class="col">
                    <div class="innercommentbox" style="width: 168px;">
                        <div class="userimg"><img src="https://emojigraph.org/media/apple/dog-face_1f436.png" alt=""></div>
                        <div class="nickname">강아지</div>
                        <div class="commentstar">★ 3.5</div>
                        <hr style="margin-top: 42px;">
                        <div class="commentinner">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                        <a href="#" class="like-button">
                            <?xml version="1.0" encoding="utf-8"?>
                            <svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M320 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5t45.5 18.5q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19h-288q-26 0-45-19t-19-45v-640q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29-120.5-39.5q-123-43-158-44-26-1-45-19.5t-19-44.5v-641q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5 13.5-60.5q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"/></svg>
                        </a>
                        <div class="likecount">7</div>
                        <a class="update">수정</a>
                        <a class="delete">삭제</a>
                    </div>            
                </div>
            </div>    
        </div>
        <!--carousel page 2 end-->
    </div>
    <!--carousel-inner end-->
    <div style="width: 5%;" class="my-5">
        <button style="width: 5%; height:100px; margin-top:100px; margin-left: -29px;"
            class="carousel-control-prev" type="button"
            data-target="#carouselExampleControlsNoTouching" data-slide="prev">
            <img class="next" src="../../IMG/Ranking/slide-left.png" alt=""
                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button style="width: 5%; height:100px; margin-top:100px; margin-right: -29px;"
            class="carousel-control-next" type="button"
            data-target="#carouselExampleControlsNoTouching" data-slide="next">
            <img class="next" src="../../IMG/Ranking/slide-right.png" alt=""
                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>
</div>

<script>
  const allBars = document.querySelectorAll(".bar");
allBars.forEach(bar => {
const barValue = bar.getAttribute("data-bar-value");
bar.setAttribute('style', `--__bar_ht: ${barValue}px;`);
})
</script>
<!--carousel-->

  </div> <!--회색 박스 끝 -->