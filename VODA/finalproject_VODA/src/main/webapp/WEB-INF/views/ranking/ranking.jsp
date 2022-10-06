<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>



<!doctype html>
<html lang="ko">

<head>
    <meta charset="utf-8">

    <title>랭킹copy | VODA</title>


    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>


    <!-- common CSS-->
    <link rel="stylesheet" type="text/css" href="../../CSS/Common/headerfooter.css">

    <!-- Ranking CSS-->
    <link rel="stylesheet" type="text/css" href="../../CSS/Ranking/rankinglist.css">

    <style>
        img {
            display: inline-block;
            overflow: hidden;
            font-size: 0;
            line-height: 0;
            text-indent: -9999px;
            vertical-align: top;
            background-size: 500px auto;
        }
    </style>

</head>

<body class="">

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <article id="mainContent" class="kakao_article">
        <h2 class="screen_out">영화 랭킹 본문</h2>
        <div class="section_ranking">
            <div class="head_section">
                <h3 class="tit_section">10대·20대 여성이 좋아하는 영화 <img src="../../IMG/Ranking/kakao.png" alt=""
                    style=" position: absolute; width: 45px; height: 45px; top: 25px; right: 0px; box-sizing: border-box; border-radius: 20%; box-shadow: rgb(0 0 0 / 20%) 0px 0px 4px 0px; cursor: pointer;"></h3>
            </div>

            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false"
                        data-interval="false">
                        <!--carousel-->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <!--carousel page 1 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                    class="img_thumb" alt="공조2: 인터내셔날">
                                                <span class="rank_num">1</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=147615" class="link_story"
                                                    data-tiara-layer="poster">
                                                    공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사
                                                    ‘림철령’(현빈).수사 중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가
                                                    기피하는 ‘철령’의 파트너를 자청한다. 이렇게 다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의
                                                    마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를 의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어
                                                    범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI 소속 ‘잭’(다니엘 헤니)이 그들
                                                    앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파 형사까지!각자의 목적으로
                                                    뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                    class="img_thumb" alt="늑대사냥">
                                                <span class="rank_num">2</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see19">청소년관람불가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=155115" class="link_story"
                                                    data-tiara-layer="poster">
                                                    인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과
                                                    베테랑 형사들이 필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을
                                                    비롯해이들은 각자의 목적과 경계심을 품고 탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한
                                                    극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가 살아남을 것인가?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                    class="img_thumb" alt="육사오(6/45)">
                                                <span class="rank_num">3</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                    class="img_thumb" alt="탑건: 매버릭">
                                                <span class="rank_num">4</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=114329" class="link_story"
                                                    data-tiara-layer="poster">
                                                    한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰
                                                    크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케
                                                    하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던
                                                    팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에
                                                    나서는데…
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                    class="img_thumb" alt="인생은 아름다워">
                                                <span class="rank_num">5</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=133709" class="link_story"
                                                    data-tiara-layer="poster">
                                                    내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온
                                                    ‘세연’은어느 날 자신에게 시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은
                                                    마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아 달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이
                                                    여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고 무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격
                                                    다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘 떠올리는데...과연 ‘세연’의 첫사랑은
                                                    어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                                </a>
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
                            </div>
                            <!--carousel page 1 end-->

                            <div class="carousel-item">
                                <!--carousel page 2 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                                    class="img_thumb" alt="알라딘">
                                                <span class="rank_num">6</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=115601" class="link_story"
                                                    data-tiara-layer="poster">
                                                    머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                                    좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게
                                                    되고, 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                                <span class="rank_num">7</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=162471" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이
                                                    시작된다!엄마 까투리와 꺼병이 4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를
                                                    결심한다. 건너편 산으로 가기 위해서는 위험천만한 도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로
                                                    하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시 길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은
                                                    사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마 까투리와 꺼병이 4남매는 무사히
                                                    새 집에 도착할 수 있을까?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                                <span class="rank_num">8</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=163053" class="link_story"
                                                    data-tiara-layer="poster">
                                                    언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의
                                                    바깥에는 구석지고 어두운, 그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀:
                                                        비타돌체>는 틀 바깥으로 잘려 버린 이야기, 사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고
                                                        그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황 다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는
                                                            오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수 김호중이라는 고정관념에서
                                                            벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상 할
                                                            수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와
                                                            버스킹 공연까지 모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지
                                                            그의 인생이 <인생은 뷰티풀: 비타돌체>에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는
                                                                모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                                    class="img_thumb" alt="오! 마이 고스트">
                                                <span class="rank_num">9</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=148313" class="link_story"
                                                    data-tiara-layer="poster">
                                                    귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는
                                                    붙박이 귀신 ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자
                                                    잠자리인 스튜디오에원인을 알 수 없는 미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이
                                                    귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=148313" class="link_txt"
                                                    data-tiara-layer="moviename">오! 마이 고스트</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                                    class="img_thumb" alt="시맨틱 에러: 더 무비">
                                                <span class="rank_num">10</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=161454" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게
                                                    짜인 일상에 에러처럼 나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=161454" class="link_txt"
                                                    data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            </div>
                            <!--carousel page 2 end-->
                        </div>
                        <!--carousel-inner end-->
                        <div style="width: 5%;" class="my-5">
                            <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                                class="carousel-control-prev" type="button"
                                data-target="#carouselExampleControlsNoTouching" data-slide="prev">
                                <img src="../../IMG/Ranking/slide-left.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                                class="carousel-control-next" type="button"
                                data-target="#carouselExampleControlsNoTouching" data-slide="next">
                                <img src="../../IMG/Ranking/slide-right.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <!--carousel-->
                </ol>
            </div>

            <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

            <hr style="margin-top: 45px;">
            <div class="head_section">
                <h3 class="tit_section">10대·20대 남성이 좋아하는 영화</h3>
            </div>

            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching2" class="carousel slide" data-touch="false"
                        data-interval="false">
                        <!--carousel-->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <!--carousel page 1 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                    class="img_thumb" alt="공조2: 인터내셔날">
                                                <span class="rank_num">1</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=147615" class="link_story"
                                                    data-tiara-layer="poster">
                                                    공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사
                                                    ‘림철령’(현빈).수사 중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가
                                                    기피하는 ‘철령’의 파트너를 자청한다. 이렇게 다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의
                                                    마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를 의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어
                                                    범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI 소속 ‘잭’(다니엘 헤니)이 그들
                                                    앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파 형사까지!각자의 목적으로
                                                    뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                    class="img_thumb" alt="늑대사냥">
                                                <span class="rank_num">2</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see19">청소년관람불가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=155115" class="link_story"
                                                    data-tiara-layer="poster">
                                                    인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과
                                                    베테랑 형사들이 필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을
                                                    비롯해이들은 각자의 목적과 경계심을 품고 탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한
                                                    극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가 살아남을 것인가?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                    class="img_thumb" alt="육사오(6/45)">
                                                <span class="rank_num">3</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                    class="img_thumb" alt="탑건: 매버릭">
                                                <span class="rank_num">4</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=114329" class="link_story"
                                                    data-tiara-layer="poster">
                                                    한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰
                                                    크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케
                                                    하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던
                                                    팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에
                                                    나서는데…
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                    class="img_thumb" alt="인생은 아름다워">
                                                <span class="rank_num">5</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=133709" class="link_story"
                                                    data-tiara-layer="poster">
                                                    내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온
                                                    ‘세연’은어느 날 자신에게 시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은
                                                    마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아 달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이
                                                    여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고 무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격
                                                    다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘 떠올리는데...과연 ‘세연’의 첫사랑은
                                                    어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                                </a>
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
                            </div>
                            <!--carousel page 1 end-->

                            <div class="carousel-item">
                                <!--carousel page 2 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                                    class="img_thumb" alt="알라딘">
                                                <span class="rank_num">6</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=115601" class="link_story"
                                                    data-tiara-layer="poster">
                                                    머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                                    좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게
                                                    되고, 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                                <span class="rank_num">7</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=162471" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이
                                                    시작된다!엄마 까투리와 꺼병이 4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를
                                                    결심한다. 건너편 산으로 가기 위해서는 위험천만한 도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로
                                                    하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시 길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은
                                                    사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마 까투리와 꺼병이 4남매는 무사히
                                                    새 집에 도착할 수 있을까?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                                <span class="rank_num">8</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=163053" class="link_story"
                                                    data-tiara-layer="poster">
                                                    언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의
                                                    바깥에는 구석지고 어두운, 그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀:
                                                        비타돌체>는 틀 바깥으로 잘려 버린 이야기, 사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고
                                                        그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황 다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는
                                                            오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수 김호중이라는 고정관념에서
                                                            벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상 할
                                                            수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와
                                                            버스킹 공연까지 모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지
                                                            그의 인생이 <인생은 뷰티풀: 비타돌체>에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는
                                                                모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                                    class="img_thumb" alt="오! 마이 고스트">
                                                <span class="rank_num">9</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=148313" class="link_story"
                                                    data-tiara-layer="poster">
                                                    귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는
                                                    붙박이 귀신 ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자
                                                    잠자리인 스튜디오에원인을 알 수 없는 미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이
                                                    귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=148313" class="link_txt"
                                                    data-tiara-layer="moviename">오! 마이 고스트</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                                    class="img_thumb" alt="시맨틱 에러: 더 무비">
                                                <span class="rank_num">10</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=161454" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게
                                                    짜인 일상에 에러처럼 나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=161454" class="link_txt"
                                                    data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            </div>
                            <!--carousel page 2 end-->
                        </div>
                        <!--carousel-inner end-->
                        <div style="width: 5%;" class="my-5">
                            <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                                class="carousel-control-prev" type="button"
                                data-target="#carouselExampleControlsNoTouching2" data-slide="prev">
                                <img src="../../IMG/Ranking/slide-left.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                                class="carousel-control-next" type="button"
                                data-target="#carouselExampleControlsNoTouching2" data-slide="next">
                                <img src="../../IMG/Ranking/slide-right.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <!--carousel-->
                </ol>
            </div>

            <hr style="margin-top: 45px;">
            <div class="head_section">
                <h3 class="tit_section">30대·40대 여성이 좋아하는 영화</h3>
            </div>


            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching4" class="carousel slide" data-touch="false"
                        data-interval="false"><!--carousel-->
                        <div class="carousel-inner">
                            <div class="carousel-item active"><!--carousel page 1 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                    class="img_thumb" alt="공조2: 인터내셔날">
                                                <span class="rank_num">1</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=147615" class="link_story"
                                                    data-tiara-layer="poster">
                                                    공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사
                                                    ‘림철령’(현빈).수사 중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가
                                                    기피하는 ‘철령’의 파트너를 자청한다. 이렇게 다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의
                                                    마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를 의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어
                                                    범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI 소속 ‘잭’(다니엘 헤니)이 그들
                                                    앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파 형사까지!각자의 목적으로
                                                    뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                    class="img_thumb" alt="늑대사냥">
                                                <span class="rank_num">2</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see19">청소년관람불가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=155115" class="link_story"
                                                    data-tiara-layer="poster">
                                                    인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과
                                                    베테랑 형사들이 필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을
                                                    비롯해이들은 각자의 목적과 경계심을 품고 탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한
                                                    극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가 살아남을 것인가?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                    class="img_thumb" alt="육사오(6/45)">
                                                <span class="rank_num">3</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                    class="img_thumb" alt="탑건: 매버릭">
                                                <span class="rank_num">4</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=114329" class="link_story"
                                                    data-tiara-layer="poster">
                                                    한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰
                                                    크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케
                                                    하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던
                                                    팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에
                                                    나서는데…
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                    class="img_thumb" alt="인생은 아름다워">
                                                <span class="rank_num">5</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=133709" class="link_story"
                                                    data-tiara-layer="poster">
                                                    내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온
                                                    ‘세연’은어느 날 자신에게 시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은
                                                    마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아 달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이
                                                    여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고 무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격
                                                    다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘 떠올리는데...과연 ‘세연’의 첫사랑은
                                                    어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                                </a>
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
                            </div><!--carousel page 1 end-->

                            <div class="carousel-item"><!--carousel page 2 start-->
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                                    class="img_thumb" alt="알라딘">
                                                <span class="rank_num">6</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=115601" class="link_story"
                                                    data-tiara-layer="poster">
                                                    머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                                    좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게
                                                    되고, 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                                <span class="rank_num">7</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=162471" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이
                                                    시작된다!엄마 까투리와 꺼병이 4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를
                                                    결심한다. 건너편 산으로 가기 위해서는 위험천만한 도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로
                                                    하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시 길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은
                                                    사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마 까투리와 꺼병이 4남매는 무사히
                                                    새 집에 도착할 수 있을까?
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                                <span class="rank_num">8</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see ">전체관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=163053" class="link_story"
                                                    data-tiara-layer="poster">
                                                    언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의
                                                    바깥에는 구석지고 어두운, 그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀:
                                                        비타돌체>는 틀 바깥으로 잘려 버린 이야기, 사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고
                                                        그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황 다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는
                                                            오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수 김호중이라는 고정관념에서
                                                            벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상 할
                                                            수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와
                                                            버스킹 공연까지 모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지
                                                            그의 인생이 <인생은 뷰티풀: 비타돌체>에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는
                                                                모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                                </a>
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
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                                    class="img_thumb" alt="오! 마이 고스트">
                                                <span class="rank_num">9</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see15">15세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=148313" class="link_story"
                                                    data-tiara-layer="poster">
                                                    귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는
                                                    붙박이 귀신 ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자
                                                    잠자리인 스튜디오에원인을 알 수 없는 미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이
                                                    귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=148313" class="link_txt"
                                                    data-tiara-layer="moviename">오! 마이 고스트</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="item_poster">
                                        <div class="thumb_item">
                                            <div class="poster_movie">
                                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                                    class="img_thumb" alt="시맨틱 에러: 더 무비">
                                                <span class="rank_num">10</span>
                                                <span class="txt_tag">
                                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                                </span>
                                            </div>
                                            <div class="poster_info">
                                                <a href="/moviedb/main?movieId=161454" class="link_story"
                                                    data-tiara-layer="poster">
                                                    대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게
                                                    짜인 일상에 에러처럼 나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumb_cont">
                                            <strong class="tit_item">
                                                <a href="/moviedb/main?movieId=161454" class="link_txt"
                                                    data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                            </strong>
                                            <span class="txt_append">
                                                <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                            </div><!--carousel page 2 end-->
                        </div><!--carousel-inner end-->
                        <div style="width: 5%;" class="my-5">
                            <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                                class="carousel-control-prev" type="button"
                                data-target="#carouselExampleControlsNoTouching4" data-slide="prev">
                                <img src="../../IMG/Ranking/slide-left.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                                class="carousel-control-next" type="button"
                                data-target="#carouselExampleControlsNoTouching4" data-slide="next">
                                <img src="../../IMG/Ranking/slide-right.png" alt=""
                                    style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                    <!--carousel-->
                </ol>
            </div>





            <hr style="margin-top: 45px;">
            <div class="head_section">
                <h3 class="tit_section">30대·40대 남성이 좋아하는 영화</h3>
            </div>
            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching5" class="carousel slide" data-touch="false"
                    data-interval="false"><!--carousel-->
                    <div class="carousel-inner">
                        <div class="carousel-item active"><!--carousel page 1 start-->
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                class="img_thumb" alt="공조2: 인터내셔날">
                                            <span class="rank_num">1</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see15">15세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=147615" class="link_story" data-tiara-layer="poster">
                                                공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사 ‘림철령’(현빈).수사
                                                중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가 기피하는 ‘철령’의 파트너를 자청한다. 이렇게
                                                다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의 마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를
                                                의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어 범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI
                                                소속 ‘잭’(다니엘 헤니)이 그들 앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파
                                                형사까지!각자의 목적으로 뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                class="img_thumb" alt="늑대사냥">
                                            <span class="rank_num">2</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see19">청소년관람불가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=155115" class="link_story" data-tiara-layer="poster">
                                                인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과 베테랑 형사들이
                                                필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을 비롯해이들은 각자의 목적과 경계심을 품고
                                                탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한 극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가
                                                살아남을 것인가?
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                class="img_thumb" alt="육사오(6/45)">
                                            <span class="rank_num">3</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=142869" class="link_story" data-tiara-layer="poster">
                                                “45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리,내가 주웠지 말입니다”우연히 1등 당첨 로또를 주운 말년 병장 ‘천우’.심장이
                                                터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또.바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다!우연히
                                                남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 ‘용호’.이거이 남조선 인민의 고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가?근데 무려
                                                당첨금이 57억이라고?!당첨금을 눈앞에서 놓칠 위기에 처한 ‘천우’와북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 ‘용호’.여기에
                                                예상치 못한 멤버들(?)까지 합류하고 57억을 사수하기 위한 3:3팀이 결성되는데…주운 자 VS 또 주운 자아슬아슬 선 넘는 지분 협상이
                                                시작된다!
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                class="img_thumb" alt="탑건: 매버릭">
                                            <span class="rank_num">4</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=114329" class="link_story" data-tiara-layer="poster">
                                                한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한
                                                훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든
                                                전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이
                                                가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                class="img_thumb" alt="인생은 아름다워">
                                            <span class="rank_num">5</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=133709" class="link_story" data-tiara-layer="poster">
                                                내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온 ‘세연’은어느 날 자신에게
                                                시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은 마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아
                                                달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이 여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고
                                                무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격 다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘
                                                떠올리는데...과연 ‘세연’의 첫사랑은 어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                            </a>
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
                        </div><!--carousel page 1 end-->

                        
                        <div class="carousel-item"><!--carousel page 2 start-->
                            <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                        class="img_thumb" alt="알라딘">
                                    <span class="rank_num">6</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see ">전체관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=115601" class="link_story" data-tiara-layer="poster">
                                        머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                        좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 자스민 공주의
                                        마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                    </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                            <span class="rank_num">7</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see ">전체관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=162471" class="link_story" data-tiara-layer="poster">
                                                대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이 시작된다!엄마 까투리와 꺼병이
                                                4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를 결심한다. 건너편 산으로 가기 위해서는 위험천만한
                                                도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로 하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시
                                                길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은 사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마
                                                까투리와 꺼병이 4남매는 무사히 새 집에 도착할 수 있을까?
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                            <span class="rank_num">8</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see ">전체관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=163053" class="link_story" data-tiara-layer="poster">
                                                언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의 바깥에는 구석지고 어두운,
                                                그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀: 비타돌체>는 틀 바깥으로 잘려 버린 이야기,
                                                    사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고 그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황
                                                    다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는 오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수
                                                        김호중이라는 고정관념에서 벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상
                                                        할 수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와 버스킹 공연까지
                                                        모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지 그의 인생이 <인생은 뷰티풀: 비타돌체>
                                                            에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는 모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                                class="img_thumb" alt="오! 마이 고스트">
                                            <span class="rank_num">9</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see15">15세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=148313" class="link_story" data-tiara-layer="poster">
                                                귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는 붙박이 귀신
                                                ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자 잠자리인 스튜디오에원인을 알 수 없는
                                                미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이 귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                            </a>
                                        </div>
                                    </div>
                                    <div class="thumb_cont">
                                        <strong class="tit_item">
                                            <a href="/moviedb/main?movieId=148313" class="link_txt"
                                                data-tiara-layer="moviename">오! 마이 고스트</a>
                                        </strong>
                                        <span class="txt_append">
                                            <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                        </span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                                class="img_thumb" alt="시맨틱 에러: 더 무비">
                                            <span class="rank_num">10</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=161454" class="link_story" data-tiara-layer="poster">
                                                대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게 짜인 일상에 에러처럼
                                                나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                            </a>
                                        </div>
                                    </div>
                                    <div class="thumb_cont">
                                        <strong class="tit_item">
                                            <a href="/moviedb/main?movieId=161454" class="link_txt"
                                                data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                        </strong>
                                        <span class="txt_append">
                                            <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                        </span>
                                    </div>
                                </div>
                            </li>
                        </div><!--carousel page 2 end-->
                    </div><!--carousel-inner end-->
                    <div style="width: 5%;" class="my-5">
                        <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                            class="carousel-control-prev" type="button"
                            data-target="#carouselExampleControlsNoTouching5" data-slide="prev">
                            <img src="../../IMG/Ranking/slide-left.png" alt=""
                                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </button>
                        <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                            class="carousel-control-next" type="button"
                            data-target="#carouselExampleControlsNoTouching5" data-slide="next">
                            <img src="../../IMG/Ranking/slide-right.png" alt=""
                                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </button>
                    </div>
                </div>
                <!--carousel-->
                </ol>
            </div>

            <hr style="margin-top: 45px;">
            <div class="head_section">
                <h3 class="tit_section">50대 이상 여성이 좋아하는 영화</h3>
            </div>
            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching6" class="carousel slide" data-touch="false"
                    data-interval="false"><!--carousel-->
                    <div class="carousel-inner">
                        <div class="carousel-item active"><!--carousel page 1 start-->
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                        class="img_thumb" alt="공조2: 인터내셔날">
                                    <span class="rank_num">1</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see15">15세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=147615" class="link_story" data-tiara-layer="poster">
                                        공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사 ‘림철령’(현빈).수사
                                        중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가 기피하는 ‘철령’의 파트너를 자청한다. 이렇게
                                        다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의 마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를
                                        의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어 범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI
                                        소속 ‘잭’(다니엘 헤니)이 그들 앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파
                                        형사까지!각자의 목적으로 뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                        class="img_thumb" alt="늑대사냥">
                                    <span class="rank_num">2</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see19">청소년관람불가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=155115" class="link_story" data-tiara-layer="poster">
                                        인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과 베테랑 형사들이
                                        필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을 비롯해이들은 각자의 목적과 경계심을 품고
                                        탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한 극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가
                                        살아남을 것인가?
                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                        class="img_thumb" alt="육사오(6/45)">
                                    <span class="rank_num">3</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see12">12세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=142869" class="link_story" data-tiara-layer="poster">
                                        “45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리,내가 주웠지 말입니다”우연히 1등 당첨 로또를 주운 말년 병장 ‘천우’.심장이
                                        터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또.바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다!우연히
                                        남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 ‘용호’.이거이 남조선 인민의 고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가?근데 무려
                                        당첨금이 57억이라고?!당첨금을 눈앞에서 놓칠 위기에 처한 ‘천우’와북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 ‘용호’.여기에
                                        예상치 못한 멤버들(?)까지 합류하고 57억을 사수하기 위한 3:3팀이 결성되는데…주운 자 VS 또 주운 자아슬아슬 선 넘는 지분 협상이
                                        시작된다!
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                        class="img_thumb" alt="탑건: 매버릭">
                                    <span class="rank_num">4</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see12">12세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=114329" class="link_story" data-tiara-layer="poster">
                                        한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한
                                        훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든
                                        전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이
                                        가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…
                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                        class="img_thumb" alt="인생은 아름다워">
                                    <span class="rank_num">5</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see12">12세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=133709" class="link_story" data-tiara-layer="poster">
                                        내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온 ‘세연’은어느 날 자신에게
                                        시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은 마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아
                                        달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이 여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고
                                        무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격 다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘
                                        떠올리는데...과연 ‘세연’의 첫사랑은 어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                    </a>
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
                </div><!--carousel page 1 end-->

                        
                <div class="carousel-item"><!--carousel page 2 start-->
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                        class="img_thumb" alt="알라딘">
                                    <span class="rank_num">6</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see ">전체관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=115601" class="link_story" data-tiara-layer="poster">
                                        머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                        좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 자스민 공주의
                                        마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                        class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                    <span class="rank_num">7</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see ">전체관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=162471" class="link_story" data-tiara-layer="poster">
                                        대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이 시작된다!엄마 까투리와 꺼병이
                                        4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를 결심한다. 건너편 산으로 가기 위해서는 위험천만한
                                        도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로 하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시
                                        길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은 사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마
                                        까투리와 꺼병이 4남매는 무사히 새 집에 도착할 수 있을까?
                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                        class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                    <span class="rank_num">8</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see ">전체관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=163053" class="link_story" data-tiara-layer="poster">
                                        언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의 바깥에는 구석지고 어두운,
                                        그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀: 비타돌체>는 틀 바깥으로 잘려 버린 이야기,
                                            사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고 그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황
                                            다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는 오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수
                                                김호중이라는 고정관념에서 벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상
                                                할 수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와 버스킹 공연까지
                                                모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지 그의 인생이 <인생은 뷰티풀: 비타돌체>
                                                    에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는 모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                    </a>
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
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                        class="img_thumb" alt="오! 마이 고스트">
                                    <span class="rank_num">9</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see15">15세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=148313" class="link_story" data-tiara-layer="poster">
                                        귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는 붙박이 귀신
                                        ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자 잠자리인 스튜디오에원인을 알 수 없는
                                        미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이 귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                    </a>
                                </div>
                            </div>
                            <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=148313" class="link_txt"
                                        data-tiara-layer="moviename">오! 마이 고스트</a>
                                </strong>
                                <span class="txt_append">
                                    <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                </span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="item_poster">
                            <div class="thumb_item">
                                <div class="poster_movie">
                                    <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                        class="img_thumb" alt="시맨틱 에러: 더 무비">
                                    <span class="rank_num">10</span>
                                    <span class="txt_tag">
                                        <span class="ico_movie ico_see see12">12세이상관람가</span>
                                    </span>
                                </div>
                                <div class="poster_info">
                                    <a href="/moviedb/main?movieId=161454" class="link_story" data-tiara-layer="poster">
                                        대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게 짜인 일상에 에러처럼
                                        나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                    </a>
                                </div>
                            </div>
                            <div class="thumb_cont">
                                <strong class="tit_item">
                                    <a href="/moviedb/main?movieId=161454" class="link_txt"
                                        data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                </strong>
                                <span class="txt_append">
                                    <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                </span>
                            </div>
                        </div>
                    </li>
                </div><!--carousel page 2 end-->
            </div><!--carousel-inner end-->
            <div style="width: 5%;" class="my-5">
                <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                    class="carousel-control-prev" type="button"
                    data-target="#carouselExampleControlsNoTouching6" data-slide="prev">
                    <img src="../../IMG/Ranking/slide-left.png" alt=""
                        style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </button>
                <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                    class="carousel-control-next" type="button"
                    data-target="#carouselExampleControlsNoTouching6" data-slide="next">
                    <img src="../../IMG/Ranking/slide-right.png" alt=""
                        style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </button>
            </div>
        </div>
        <!--carousel-->
                </ol>
            </div>


            <hr style="margin-top: 45px;">
            <div class="head_section">
                <h3 class="tit_section">50대 이상 남성이 좋아하는 영화</h3>
            </div>
            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                    <div id="carouselExampleControlsNoTouching7" class="carousel slide" data-touch="false"
                    data-interval="false"><!--carousel-->
                    <div class="carousel-inner">
                        <div class="carousel-item active"><!--carousel page 1 start-->
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                                class="img_thumb" alt="공조2: 인터내셔날">
                                            <span class="rank_num">1</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see15">15세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=147615" class="link_story" data-tiara-layer="poster">
                                                공조 이즈 백! 이번엔 삼각 공조다!남한으로 숨어든 글로벌 범죄 조직을 잡기 위해 새로운 공조 수사에 투입된 북한 형사 ‘림철령’(현빈).수사
                                                중의 실수로 사이버수사대로 전출됐던 남한 형사 ‘강진태’(유해진)는 광수대 복귀를 위해 모두가 기피하는 ‘철령’의 파트너를 자청한다. 이렇게
                                                다시 공조하게 된 ‘철령’과 ‘진태’!‘철령’과 재회한 ‘민영’(임윤아)의 마음도 불타오르는 가운데,‘철령’과 ‘진태’는 여전히 서로의 속내를
                                                의심하면서도 나름 그럴싸한 공조 수사를 펼친다.드디어 범죄 조직 리더인 ‘장명준’(진선규)의 은신처를 찾아내려는 찰나,미국에서 날아온 FBI
                                                소속 ‘잭’(다니엘 헤니)이 그들 앞에 나타나는데…!아직도 짠내 나는 남한 형사,여전한 엘리트 북한 형사,그리고 FBI 소속 해외파
                                                형사까지!각자의 목적으로 뭉친 그들의 짜릿한 공조 수사가 시작된다!
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                                class="img_thumb" alt="늑대사냥">
                                            <span class="rank_num">2</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see19">청소년관람불가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=155115" class="link_story" data-tiara-layer="poster">
                                                인간 스스로 먹잇감이 되다동남아시아로 도피한 인터폴 수배자들을 이송할 움직이는 교도소 ‘프론티어 타이탄’.극악무도한 이들과 베테랑 형사들이
                                                필리핀 마닐라 항구에 모이고탈출을 꿈꾸는 종두(서인국), 한국으로 돌아가야만 하는 도일(장동윤)을 비롯해이들은 각자의 목적과 경계심을 품고
                                                탑승한다.한국으로 향하던 중, 태평양 한 가운데에서 이들에게는지금까지 보지 못한 극한의 상황과 마주하게 되는데…태평양 한 가운데의 지옥, 누가
                                                살아남을 것인가?
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                                class="img_thumb" alt="육사오(6/45)">
                                            <span class="rank_num">3</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=142869" class="link_story" data-tiara-layer="poster">
                                                “45개 번호 중에 6개 맞히면 1등인 육사오라는 종이쪼가리,내가 주웠지 말입니다”우연히 1등 당첨 로또를 주운 말년 병장 ‘천우’.심장이
                                                터질듯한 설렘도 잠시, 순간의 실수로 바람을 타고 군사분계선을 넘어간 로또.바사삭 부서진 멘탈을 부여잡고…기필코 다시 찾아야 한다!우연히
                                                남쪽에서 넘어온 1등 당첨 로또를 주운 북한 병사 ‘용호’.이거이 남조선 인민의 고혈을 쥐어 짜내는 육사오라는 종이쪼가리란 말인가?근데 무려
                                                당첨금이 57억이라고?!당첨금을 눈앞에서 놓칠 위기에 처한 ‘천우’와북에선 한낱 종이쪼가리일 뿐일 로또를 당첨금으로 바꿔야 하는 ‘용호’.여기에
                                                예상치 못한 멤버들(?)까지 합류하고 57억을 사수하기 위한 3:3팀이 결성되는데…주운 자 VS 또 주운 자아슬아슬 선 넘는 지분 협상이
                                                시작된다!
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                                class="img_thumb" alt="탑건: 매버릭">
                                            <span class="rank_num">4</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=114329" class="link_story" data-tiara-layer="poster">
                                                한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한
                                                훈련학교 교관으로 발탁된다.그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든
                                                전설적인 조종 실력에 모두가 압도된다.매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자매버릭은 자신이
                                                가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                                class="img_thumb" alt="인생은 아름다워">
                                            <span class="rank_num">5</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=133709" class="link_story" data-tiara-layer="poster">
                                                내 생애 가장 빛나는 선물모든 순간이 노래가 된다!무뚝뚝한 남편 ‘진봉’과 무심한 아들 딸을 위해 헌신하며 살아온 ‘세연’은어느 날 자신에게
                                                시간이 얼마 남지 않았다는 것을 알게 된다.한 치 앞도 알 수 없는 인생에 서글퍼진 ‘세연’은 마지막 생일선물로문득 떠오른 자신의 첫사랑을 찾아
                                                달라는 황당한 요구를 한다.막무가내로 우기는 아내의 고집에 어쩔 수 없이 여행길에 따라나선 ‘진봉’은아무런 단서도 없이 이름 석 자만 가지고
                                                무작정 전국 방방곡곡을 누빈다.시도 때도 없이 티격태격 다투던 두 사람은 가는 곳곳마다자신들의 찬란했던 지난날 소중한 기억을 하나 둘
                                                떠올리는데...과연 ‘세연’의 첫사랑은 어디에 있으며 그들의 여행은 무사히 마칠 수 있을까?
                                            </a>
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
                        </div><!--carousel page 1 end-->

                        
                        <div class="carousel-item"><!--carousel page 2 start-->
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                                class="img_thumb" alt="알라딘">
                                            <span class="rank_num">6</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see ">전체관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=115601" class="link_story" data-tiara-layer="poster">
                                                머나먼 사막 속 신비의 아그라바 왕국의 시대.
                                                좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 자스민 공주의
                                                마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…

                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                                class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                                            <span class="rank_num">7</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see ">전체관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=162471" class="link_story" data-tiara-layer="poster">
                                                대한민국 대표 애니메이션 ‘엄마 까투리’의 첫 번째 극장판새로운 보금자리를 찾아 나선 까투리 가족의 위대한 여정이 시작된다!엄마 까투리와 꺼병이
                                                4남매는 평화로웠던 숲이 아파트 개발로 위험해지자, 정든 보금자리를 뒤로하고 서둘러 이사를 결심한다. 건너편 산으로 가기 위해서는 위험천만한
                                                도시 한 가운데를 지나야만 하는 상황! 다행히 쥐돌이 가족의 도움으로 하룻밤 안식처를 구하지만, 그것도 잠시… 호시탐탐 꺼병이들을 노리는 도시
                                                길냥이들을 엄마가 혼쭐 내주는 사이, 꺼병이들은 사라져버리고, 아이들을 찾아 나서는 엄마 역시 큰 위험에 처하게 되는데…과연, 헤어진 엄마
                                                까투리와 꺼병이 4남매는 무사히 새 집에 도착할 수 있을까?
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                                class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                                            <span class="rank_num">8</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see ">전체관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=163053" class="link_story" data-tiara-layer="poster">
                                                언제나 화면 정 중앙에 비춰지며 스포트라이트를 한 몸에 받는 스타, ‘트바로티’ 김호중. 하지만 그가 담긴 ‘틀’의 바깥에는 구석지고 어두운,
                                                그럼에도 불구하고 아름다운 또 다른 이야기가 있다.김호중의 두 번째 극장 영화 <인생은 뷰티풀: 비타돌체>는 틀 바깥으로 잘려 버린 이야기,
                                                    사람들의 시선에 갇혀 보이지 않았던 청년 김호중의 이야기, 그리고 그것에서 벗어나려는 가수 김호중의 진솔한 목소리를 전한다. 공연 실황
                                                    다큐멘터리 <인생은 뷰티풀: 비타돌체>에서는 오직 이 영화만을 위해 무대를 꾸민 김호중 단독 공연을 최초 공개한다. 트로트 가수
                                                        김호중이라는 고정관념에서 벗어나 처음 음악에 대한 열정을 갖게 해 준 클래식 음악들로 구성되어 그의 웅장한 목소리를 생생하게 감상
                                                        할 수 있다.여기에 꿈 많은 스무 살, 음악에 대한 동경으로 떠났던 이탈리아를 다시 찾는 김호중의 다큐 여행기와 버스킹 공연까지
                                                        모두 담아 김호중이 그동안 전하고 싶었던 이야기들, 불안하고 가슴 아프기도 했던 속내까지 그의 인생이 <인생은 뷰티풀: 비타돌체>
                                                            에 모두 담긴다.2022년 가을, 김호중이 들려주는 음악 이야기는 모두의 가슴에 깊은 여운과 감동을 선사할 것이다.
                                            </a>
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
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fbf3bc733b1f6ed2b94503747b06de0c10de7ab98"
                                                class="img_thumb" alt="오! 마이 고스트">
                                            <span class="rank_num">9</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see15">15세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=148313" class="link_story" data-tiara-layer="poster">
                                                귀신 보는 것이 유일한 스펙인 신입 FD ‘태민’(정진운)은어렵게 취업한 스튜디오에서 야간 순찰을 돌던 중갈 곳 없는 붙박이 귀신
                                                ‘콩이’(안서현)를 만나게 된다.눈만 마주쳤다 하면 티격태격하던 일상 속 어느 날,이들의 유일한 일자리이자 잠자리인 스튜디오에원인을 알 수 없는
                                                미스터리한 사건들이 발생하는데…귀신 보는 신입 FD X 갈 곳 없는 붙박이 귀신일자리와 잠자리 사수를 위한 좌충우돌 팀플레이가 시작된다!
                                            </a>
                                        </div>
                                    </div>
                                    <div class="thumb_cont">
                                        <strong class="tit_item">
                                            <a href="/moviedb/main?movieId=148313" class="link_txt"
                                                data-tiara-layer="moviename">오! 마이 고스트</a>
                                        </strong>
                                        <span class="txt_append">
                                            <span class="info_txt">평점<span class="txt_grade">7.9</span></span>
                                        </span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="item_poster">
                                    <div class="thumb_item">
                                        <div class="poster_movie">
                                            <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fb9b0aaa6144724d4b373d4a980b2c51ad6d211cc"
                                                class="img_thumb" alt="시맨틱 에러: 더 무비">
                                            <span class="rank_num">10</span>
                                            <span class="txt_tag">
                                                <span class="ico_movie ico_see see12">12세이상관람가</span>
                                            </span>
                                        </div>
                                        <div class="poster_info">
                                            <a href="/moviedb/main?movieId=161454" class="link_story" data-tiara-layer="poster">
                                                대한민국을 뜨겁게 만든 폭발적 신드롬의 주인공!드라마 [시맨틱 에러]를 극장에서 만난다!컴공과 '아싸' 추상우의 완벽하게 짜인 일상에 에러처럼
                                                나타난 안하무인 디자인과 '인싸' 장재영,극과 극 청춘들의 캠퍼스 로맨스가 스크린으로 펼쳐진다!
                                            </a>
                                        </div>
                                    </div>
                                    <div class="thumb_cont">
                                        <strong class="tit_item">
                                            <a href="/moviedb/main?movieId=161454" class="link_txt"
                                                data-tiara-layer="moviename">시맨틱 에러: 더 무비</a>
                                        </strong>
                                        <span class="txt_append">
                                            <span class="info_txt">평점<span class="txt_grade">8.5</span></span>
                                        </span>
                                    </div>
                                </div>
                            </li>
                        </div><!--carousel page 2 end-->
                    </div><!--carousel-inner end-->
                    <div style="width: 5%;" class="my-5">
                        <button style="width: 5%; height:100px; margin-top:100px; margin-left: -22px;"
                            class="carousel-control-prev" type="button"
                            data-target="#carouselExampleControlsNoTouching7" data-slide="prev">
                            <img src="../../IMG/Ranking/slide-left.png" alt=""
                                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </button>
                        <button style="width: 5%; height:100px; margin-top:100px; margin-right: -25px;"
                            class="carousel-control-next" type="button"
                            data-target="#carouselExampleControlsNoTouching7" data-slide="next">
                            <img src="../../IMG/Ranking/slide-right.png" alt=""
                                style="box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </button>
                    </div>
                </div>
                <!--carousel-->
                </ol>
            </div>



        </div>
    </article>
    </main>
    <hr class="hide">

    <!-- <script src="//t1.daumcdn.net/media/kraken/movie/272060b/PcRankingReservationRankBundle.merged.js"></script>
<script src="//t1.daumcdn.net/media/kraken/movie/272060b/PcCommonEventBundle.merged.js"></script>     -->
    </div>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>

</html>