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
                                <h5 style="font-weight: 600;">찜한 컨텐츠</h5>
                                <hr>
                            </form>
                        </div>
                    </div>

                    <div class="pl-3 pr-4 row" style="margin-top: 10px; height: 40px;">
                        <div class="col-3 mycategory" style="background-color: rgb(90, 97, 224); color: white;">
                            MOVIE
                        </div>
                        <div class="col-3 mycategory">
                            TV
                        </div>
                        <div class="col-3 mycategory">
                            BOOK
                        </div>
                        <div class="col-3 mycategory" style="border-right: 1px solid grey;">
                            WEBTOON
                        </div>
                    </div>



                    <div class="section_ranking">
                        <div class="box_ranking" data-tiara-layer="list">
                            <ol class="list_movieranking">
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                    class="img_thumb" alt="공조2: 인터내셔날">
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=147615" class="link_txt"
                                                    data-tiara-layer="moviename">공조2: 인터내셔날</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.1</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                    class="img_thumb" alt="늑대사냥">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see19">청소년관람불가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=155115" class="link_txt"
                                                    data-tiara-layer="moviename">늑대사냥</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">9.0</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                    class="img_thumb" alt="육사오(6/45)">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 5;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=142869" class="link_story"
                                                    data-tiara-layer="poster">
                                                    “45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리,내가 주웠지 말입니다”우연히 1등 당첨 로또를 주운 말년 병장
                                                    ‘천우’.심장이 터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또.바사삭 부서진 멘탈을
                                                    부여잡고…기필코 다시 찾아야 한다!우연히 남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 ‘용호’.이거이 남조선 인민의
                                                    고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가?근데 무려 당첨금이 57억이라고?!당첨금을 눈앞에서 놓칠 위기에 처한
                                                    ‘천우’와북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 ‘용호’.여기에 예상치 못한 멤버들(?)까지 합류하고
                                                    57억을 사수하기 위한 3:3팀이 결성되는데…주운 자 VS 또 주운 자아슬아슬 선 넘는 지분 협상이 시작된다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=142869" class="link_txt"
                                                    data-tiara-layer="moviename">육사오(6/45)</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.4</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                    class="img_thumb" alt="탑건: 매버릭">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=114329" class="link_txt"
                                                    data-tiara-layer="moviename">탑건: 매버릭</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">9.4</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <br>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                    class="img_thumb" alt="인생은 아름다워">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=133709" class="link_txt"
                                                    data-tiara-layer="moviename">인생은 아름다워</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                                    class="img_thumb" alt="알라딘">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=115601" class="link_txt"
                                                    data-tiara-layer="moviename">알라딘</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.4</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=162471" class="link_txt"
                                                    data-tiara-layer="moviename">극장판 엄마 까투리: 도시로 간 까투리 가족</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="item_poster">
                                        <div class="thumb_item" style="width: 187px; height: 273px;">
                                            <div class="poster_movie" style="position: absolute;">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">

                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                                <input type="checkbox" style="width: 17px; height: 17px;">
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=163053" class="link_txt"
                                                    data-tiara-layer="moviename">인생은 뷰티풀: 비타돌체</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">9.7</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                    
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