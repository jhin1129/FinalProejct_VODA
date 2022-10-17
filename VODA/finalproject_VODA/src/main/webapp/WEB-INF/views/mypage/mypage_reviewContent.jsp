<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_main.css">

    <!-- mylist CSS-->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage/mypage_list.css">
      
	<style>
		.item {
		    padding-left: 17.5px;
		}
	
		.item_poster {
		    width: 190px;
		    padding-left: 50px;
		    padding-right: 50px;
		}
	</style>
	
    <div class="container p-0">
        <div class="row">
            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-sm-2">
                <jsp:include page="/WEB-INF/views/mypage/mypage_sideMenu.jsp"/>
            </div>

            <!-- 오른쪽 컨텐츠 -->
            <div class="col-sm-10">
                <!-- 컨테이너 -->
                <div class="container">

                    <!-- 첫번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <h5 style="font-weight: 600;">리뷰한 컨텐츠</h5>
                                <hr>
                            </form>
                        </div>
                    </div>

                    <div class="pl-3 pr-4 row" style="margin-top: 10px; height: 40px;">
						<c:if test="${ type == '영화' }">
							<div class="col-3 mycategory" style="background-color: rgb(90, 97, 224); color: white;" onclick="location.href='${path}/mypage/reviewContent?type=영화'">
						</c:if>
						<c:if test="${ type != '영화' }">
						    <div class="col-3 mycategory" onclick="location.href='${path}/mypage/reviewContent?type=영화'">
						</c:if>                    	
                            MOVIE
                        </div>
                        
						<c:if test="${ type == '드라마' }">
							<div class="col-3 mycategory" style="background-color: rgb(90, 97, 224); color: white;" onclick="location.href='${path}/mypage/reviewContent?type=드라마'">
						</c:if>
						<c:if test="${ type != '드라마' }">
						    <div class="col-3 mycategory" onclick="location.href='${path}/mypage/reviewContent?type=드라마'">
						</c:if>                    	
                            TV
                        </div>

						<c:if test="${ type == '책' }">
							<div class="col-3 mycategory" style="background-color: rgb(90, 97, 224); color: white;" onclick="location.href='${path}/mypage/reviewContent?type=책'">
						</c:if>
						<c:if test="${ type != '책' }">
						    <div class="col-3 mycategory" onclick="location.href='${path}/mypage/reviewContent?type=책'">
						</c:if>                    	
                            BOOK
                        </div>
                        
						<c:if test="${ type == '웹툰' }">
							<div class="col-3 mycategory" style="background-color: rgb(90, 97, 224); color: white; border-right: 1px solid grey;" onclick="location.href='${path}/mypage/reviewContent?type=웹툰'">
						</c:if>
						<c:if test="${ type != '웹툰' }">
						    <div class="col-3 mycategory" style="border-right: 1px solid grey;" onclick="location.href='${path}/mypage/reviewContent?type=웹툰'">
						</c:if>                    	
                            WEBTOON
                        </div>     
                    </div>



                    <div class="section_ranking">
                        <div class="box_ranking" data-tiara-layer="list">
                            <ol class="list_movieranking">
                            	<c:forEach var="contents" items="${ reviewList }" varStatus="status">
                            		<li class="item">
	                                    <div class="item_poster">
	                                        <div class="thumb_item" style="width: 187px; height: 273px;">
	                                            <div class="poster_movie" style="position: absolute;">
	                                                <img src=""
	                                                    class="img_thumb" alt="">
	                                                <span class="txt_tag">
	                                                    <span class="ico_movie ico_see see${ contents.c_age }">${ contents.c_age }세이상관람가</span>
	                                                </span>
	                                            </div>
	                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
	                                                <input type="checkbox" style="width: 17px; height: 17px;">
	                                            </div>
	                                        </div>
	                                        <div class="thumb_cont">
	                                            <strong class="tit_item">
	                                                <a href="/moviedb/main?movieId=147615" class="link_txt"
	                                                    data-tiara-layer="moviename">${ contents.c_title }</a>
	                                            </strong>
	                                            <span class="txt_append">
	                                                <span class="info_txt">평점<span class="txt_grade">${ contents.rate_star }</span></span>
	                                            </span>
	                                        </div>
	                                    </div>
                                	</li>
                                	<c:if test="${ status.count % 4 == 0 }">
                                		<br>
                                	</c:if>
                            	</c:forEach>
                            </ol>
                        </div>


                    </div>
                    
                    <!-- 
                    <div class="row my-3">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#">&laquo;</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#" style="background-color: #495FE9;">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" style="color: #777777;">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" style="color: #777777;">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" style="color: #777777;">4</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" style="color: #777777;">5</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#" style="color: #777777;">&raquo;</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-4"></div>
                    </div>

                    <div class="search row mb-5">
                        <div class="col-xs-2 col-sm-2">
                            <select name="searchType" class="form-control">
                                <option value="title" selected>Subject</option>
                                <option value="title">Contents</option>
                                <option value="title">Subject+Contents</option>
                            </select>
                        </div>

                        <div class="col-xs-10 col-sm-10">
                            <div class="input-group">
                                <input type="text" name="searchInput" id="searchInput" class="form-control">
                                <span class="input-group-btn">
                                    <button id="searchBtn" class="btn btn-greyC text-nowrap"><img
                                            src="../../IMG/Community/search.png" style="height: 23px;"></button>
                                </span>
                            </div>

                        </div>
                    </div>
                     -->
                    <!-- 컨테이너 끝 -->
                </div>
                <!-- 오른쪽 그리드 끝 -->
            </div>
        </div>
        <!-- 내용 전체 컨테이너 끝 -->
    </div>
    <!-- 내용 전체 컨테이너 끝 -->
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>