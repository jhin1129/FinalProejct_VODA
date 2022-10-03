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
<title>people</title>

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- people CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/people/people.css">
    
</head>
<body>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

 <hr class="hide">

    <main class="kakao_content">
        <article id="mainContent" class="kakao_article">
            <h2 class="screen_out">영화인 본문</h2>
            <div class="section_star">
                <div class="box_basic" data-tiara-layer="main">
                    <div class="info_poster">
                        <div class="thumb_img">
                            <span class="bg_img" style="background-image:url(https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Feadce88891cd568afdb48966cb4345634c84f951)"></span>
                        </div>
                    </div>
                    <div class="info_detail">
                        <div class="detail_tit_fixed" aria-hidden="true">
                            <div class="inner_tit">
                                <span class="txt_tit">서인국</span>
                            </div>
                        </div>
                        <div class="detail_tit">
                        <h3 class="tit_movie">
                            <span class="txt_tit">서인국</span>
                        </h3>
                            <div class="head_origin">
                                <span class="txt_name"></span>
                            </div>
                        </div>
                        <div class="detail_cont">
                            <div class="inner_cont">
                                <dl class="list_cont">
                                    <dt>직업</dt>
                                    <dd>가수, 탤런트</dd>
                                </dl>
                                <dl class="list_cont">
                                    <dt>출생일</dt>
                                    <dd>1987.10.23
                                    </dd>
                                </dl>
                                <dl class="list_cont">
                                    <dt>성별</dt>
                                    <dd>남성</dd>
                                </dl>
                            </div>
                            <div class="inner_cont">
                                <dl class="list_cont">
                                    <dt>데뷔</dt>
                                    <dd>2009년 EP 앨범 '부른다'</dd>
                                </dl>
                                <dl class="list_cont">
                                    <dt>수상</dt>
                                    <dd>    2016.12.30
                                            MBC 연기대상
                                            외 <a href="https://100.daum.net/encyclopedia/view/33XXXX495384#awardList" class="link_txt" data-tiara-layer="award">16</a>건
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>        
    </main>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>	
</body>
</html>