<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
    <!-- Admin CSS -->
    <link rel="stylesheet" href="${path}/resources/css/admin/admin.css">

    <!-- btn CSS -->
    <link rel="stylesheet" href="${path}/resources/css/common/btn.css">
    
    <!-- btn CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/join.css"> 

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>

    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">
      
	    <!-- 관리자 페이지 사이드바 -->
        <jsp:include page="/WEB-INF/views/admin/admin_sidebar.jsp"/>
        <!-- 관리자 페이지 메인화면 -->
        <div class="col-10 p-4">
          <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
            인물페이지 관리
          <hr>

        <div class="pl-3 pr-4 row" style="height: 40px;" >
            <div class="col-6 mycategory" style="background-color: rgb(90, 97, 224); color: white;">
                배우
            </div>
            <div class="col-6 mycategory" >
                작가
            </div>
        </div>


          <div class="section_ranking">
            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <li>
                        <div class="item_poster">
                          <div class="mx-2 my-1 people_nohover" style="position: absolute; z-index: 2;">
                            <input type="checkbox" style="width: 17px; height: 17px;">
                          </div>
                            <div class="thumb_item">
                                <div class="poster_movie" style="position: absolute;">
                                  <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Feadce88891cd568afdb48966cb4345634c84f951" class="img_thumb"></span>
                                </div>
                                <div class="poster_info" style="text-align: center; line-height: 300px;">
                                <a href="" class="link_story" data-tiara-layer="poster">
                                  수정하기
                                </a>
                                </div>
                                </div>
                                <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=147615" class="link_txt" data-tiara-layer="moviename">서인국</a>
                                </strong>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item_poster">
                          <div class="mx-2 my-1 people_nohover" style="position: absolute; z-index: 2;">
                            <input type="checkbox" style="width: 17px; height: 17px;">
                          </div>
                            <div class="thumb_item">
                                <div class="poster_movie" style="position: absolute;">
                                  <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Feadce88891cd568afdb48966cb4345634c84f951" class="img_thumb"></span>
                                </div>
                                <div class="poster_info" style="text-align: center; line-height: 300px;">
                                <a href="" class="link_story" data-tiara-layer="poster">
                                  수정하기
                                </a>
                                </div>
                                </div>
                                <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=147615" class="link_txt" data-tiara-layer="moviename">서인국</a>
                                </strong>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item_poster">
                          <div class="mx-2 my-1 people_nohover" style="position: absolute; z-index: 2;">
                            <input type="checkbox" style="width: 17px; height: 17px;">
                          </div>
                            <div class="thumb_item">
                                <div class="poster_movie" style="position: absolute;">
                                  <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Feadce88891cd568afdb48966cb4345634c84f951" class="img_thumb"></span>
                                </div>
                                <div class="poster_info" style="text-align: center; line-height: 300px;">
                                <a href="" class="link_story" data-tiara-layer="poster">
                                  수정하기
                                </a>
                                </div>
                                </div>
                                <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=147615" class="link_txt" data-tiara-layer="moviename">서인국</a>
                                </strong>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item_poster">
                          <div class="mx-2 my-1 people_nohover" style="position: absolute; z-index: 2;">
                            <input type="checkbox" style="width: 17px; height: 17px;">
                          </div>
                            <div class="thumb_item">
                                <div class="poster_movie" style="position: absolute;">
                                  <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Feadce88891cd568afdb48966cb4345634c84f951" class="img_thumb"></span>
                                </div>
                                <div class="poster_info" style="text-align: center; line-height: 300px;">
                                <a href="" class="link_story" data-tiara-layer="poster">
                                  수정하기
                                </a>
                                </div>
                                </div>
                                <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=147615" class="link_txt" data-tiara-layer="moviename">서인국</a>
                                </strong>
                            </div>
                        </div>
                    </li>
                </ol>
            </div>
            <hr>
            <div style="float: right;">
              <button type="button" class="btn btn-primary btn-sm">인물등록</button>
              <button type="button" class="btn btn-secondary btn-sm">인물삭제</button>
            </div>
            <nav aria-label="Page navigation">
              <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                  <a class="page-link">＜</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#">＞</a>
                </li>
              </ul>
            </nav>

    </div>
    <!-- 컨테이너 끝 -->
</div>
<!-- 오른쪽 그리드 끝 -->
</div>
</div>
<!-- 내용 전체 컨테이너 끝 -->
<hr>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>