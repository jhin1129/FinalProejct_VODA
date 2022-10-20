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
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_list.css">

	<style>

		.paytable_td > label{
			font-size: 1.0em;
		}

        .item {
            padding-right: 50px;
        }

        .item_poster {
            width: 190px;
            padding-left: 50px;
            padding-right: 50px;
        }
    </style>
    
    <div class="container p-0 mb-5">
        <div class="row">
            <div class="col-sm-2">
                <jsp:include page="/WEB-INF/views/mypage/mypage_sideMenu.jsp"/>
            </div>

            <div class="col-sm-10">
                <!-- 컨테이너 -->
                <div class="container">

                    <!-- 첫번째 행 -->
                    <div class="row" style="margin-top: 60px;">
                        <div class="col-sm-12 mt-0">
                            <!-- 카드 그룹 -->
                            <div class="card-group">
                                <!-- 첫번째 카드 -->
                                <div class="card">
                                    <img src="${path}/resources/img/mypage/member.png" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title">${loginMember.m_name } 님</h5>
                                        <p class="card-text">
                                            환영합니다.
                                        </p>
                                    </div>
                                </div>
                                <!-- 두번째 카드 -->
                                <div class="card">
                                    <img src="${path}/resources/img/mypage/contents.png" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title">나의 컨텐츠</h5>
                                        <p class="card-text">
                                            <a href="../mypage/mileage.php">찜(${likesListCount}) / 리뷰(${reviewCount})</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- 세번째 카드 -->
                                <div class="card">
                                    <img src="${path}/resources/img/mypage/board.png" class="card-img-top">
                                    <div class="card-body">
                                        <h5 class="card-title">내가 쓴 글</h5>
                                        <p class="card-text">
                                            <a href="../mypage/money.php">자유글(${freeBoardListCount }) / 문의글(${qnaBoardListCount })</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- 카드그룹 끝 -->
                        </div>
                    </div>
                    <!-- 행 끝 -->

                    <!-- 행 시작 -->
                    <div class="mt-5">
                        <div class="row">
                            <div class="col-4 tabletitle">찜한 컨텐츠</div>
                            <div class="col-8 text-right pt-1 tablesubtitle" onclick="location.href='${path}/mypage/dibsContent'">더 보기</div>
                        </div>

                        <div class="box_ranking" data-tiara-layer="list" style="margin-left: 3px;">
                            <ol class="list_movieranking">
                                <div id="carouselExampleControlsNoTouching" class="carousel slide" data-touch="false"
                                    data-interval="false">
                                    <!--carousel-->
                                    
                                    
                                    
                                    <div class="carousel-inner">
                                    
                                    	<c:forEach var="contents" items="${ likesList }" varStatus="status">
                                    		<c:if test="${ status.first }">
                                    			<div class="carousel-item active">
                                    		</c:if>
                                    		<c:if test="${ status.count % 4 == 1 && !status.first }">
                                    			<div class="carousel-item">
                                    		</c:if>
                                    		
                                    		<c:if test="${ status.count % 4 != 0 }">
                                    			<li class="item">
                                    		</c:if>
                                    		
                                    		<c:if test="${ status.count % 4 == 0 }">
                                    			<li class="item" style="padding-right: 0px;">
                                    		</c:if>

                                            	<div class="item_poster">
                                                    <div class="thumb_item" style="width: 187px; height: 273px;" onclick="location.href='${path}/contents/contents_detail?no=${ contents.c_no }'">
                                                        <div class="poster_movie">
                                                            <img src="${ path }/resources/uploadFiles/contents/${ contents.c_opimg }.jpg"
                                                                class="img_thumb" onerror=this.src="${path}/resources/img/common/noImage.png">
                                                            <span class="txt_tag">
                                                                <span class="ico_movie ico_see see${ contents.c_age }">${ contents.c_age }세이상관람가</span>
                                                            </span>
                                                        </div>
                                                        <div class="poster_info">
                                                            <a class="link_story"
                                                                data-tiara-layer="poster">
                                                                ${ contents.c_synop }
                                                            </a>
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
                                            
                                            <c:if test="${ !status.last && status.count % 4 == 0 }">
                                            	</div>
                                            </c:if>
                                            
                                            <c:if test="${ status.last }">
                                            	</div>
                                            </c:if>
                                    	</c:forEach>
                                    
                                    

                                    </div>
                                    <!--carousel-inner end-->
                                    <div style="width: 5%;" class="my-5">
                                        <button style="width: 5%; height:100px; margin-top:100px; margin-left: -17px;"
                                            class="carousel-control-prev" type="button"
                                            data-target="#carouselExampleControlsNoTouching" data-slide="prev">
                                            <img src="${path}/resources/img/ranking/slide-left.png" alt=""
                                                style="width: 100%; box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </button>
                                        <button style="width: 5%; height:100px; margin-top:100px; margin-right: -10px;"
                                            class="carousel-control-next" type="button"
                                            data-target="#carouselExampleControlsNoTouching" data-slide="next">
                                            <img src="${path}/resources/img/ranking/slide-right.png" alt=""
                                                style="width: 100%; box-sizing: border-box; border-radius: 50%; box-shadow: rgb(0 0 0 / 40%) 0px 0px 4px 0px;">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </button>
                                    </div>
                                </div>
                                <!--carousel-->
                            </ol>
                        </div>

                    </div>
                    <!-- 행 끝 -->

                    
                    <!-- 두번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 30px;">
                            <form>
                                <div class="row">
                                    <div class="col-4 tabletitle">최근 주문 정보</div>
                                    <div class="col-8 pt-1 tablesubtitle" onclick="location.href='${path}/mypage/payList'">더 보기</div>
                                </div>
                            </form>
                            <!-- 주문내역 테이블 -->
                            <table class="paytable">
                                <thead class="paytable_thead">
                                    <tr>
                                        <th class="paytable_th" style="width: 10%;">주문번호</th>
                                        <th class="paytable_th" colspan="2">상품정보</th>
                                        <th class="paytable_th" style="width: 10%;">금액</th>
                                        <th class="paytable_th" style="width: 10%;">주문일자</th>
                                        <th class="paytable_th" style="width: 10%;">주문상태</th>
                                        <th class="paytable_th" style="width: 10%;">환불</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="order" items="${ orderList }">
                                	<tr style="border-bottom: 1px solid lightgrey">
                                        <td class="paytable_td"><label style="margin-top: 10px;" onclick="location.href='${path}/mypage/payDetail?payNo=${ order.payno }'">${ order.payno }</label></td>
                                        <td class="paytable_td" style="width: 15%;"><img class="my-1"
                                                style="height: 80px; width: 80px;"
                                                src="${ path }/resources/uploadFiles/${ fn:substring(order.productList[0].prenamefile,0,22) }">
                                        </td>
                                        <td class="paytable_td" style="text-align: left;">
											<label onclick="location.href='${path}/mypage/payDetail?payNo=${ order.payno }'">${ order.productList[0].pname }
	                                    		<c:if test="${fn:length(order.productList) > 1}">
	                                    		등
	                                    		</c:if>
	                                    	</label> <br>
	                                    	<label style="font-size: 0.9em; margin-bottom: 0px;">총&nbsp;${fn:length(order.productList)}개 상품</label>
										</td>
                                        <td class="paytable_td">${ order.pay.payprice }원</td>
                                        <td class="paytable_td"><fmt:formatDate value="${ order.odate }" type="date" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                        <td class="paytable_td">${ order.pay.patstatus }</td>
                                        <td class="paytable_td">
                                        	<c:if test="${order.pay.patstatus == '배송준비중'}">
	                                        	<button onclick="location.href='${path}/mypage/payCancel?payNo=${order.payno}'">환불</button>
                                        	</c:if>
                                        </td>
                                    </tr>
                                	</c:forEach>
 
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 두번째 행 끝 -->



                    <!-- 세번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 60px;">
                            <form>
                                <div class="row">
                                    <div class="col-4 tabletitle">내가 쓴 자유게시글</div>
                                    <div class="col-8 text-right pt-1 tablesubtitle" onclick="location.href='${path}/mypage/writeFreeBoard'">더 보기</div>
                                </div>
                            </form>
                            <!-- 자유게시판 테이블 -->
                            <table class="mytable">
                                <thead class="table_thead">
                                    <tr>
                                        <th class="table_th" style="width: 10%;">번호</th>
                                        <th class="table_th" style="width: 50%;">제목</th>
                                        <th class="table_th" style="width: 20;">작성일자</th>
                                        <th class="table_th" style="width: 10%;">조회수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="board" items="${ freeBoardList }" varStatus="status">
                                		<tr>
	                                        <td class="table_td">${ board.bno }</td>
	                                        <td class="table_td" style="padding-left: 30px; text-align: left;">${ board.btitle }</td>
	                                        <td class="table_td"><fmt:formatDate value="${ board.bcreatedate }" type="date" pattern="yyyy-MM-dd"></fmt:formatDate></td>
	                                        <td class="table_td">${ board.bview }</td>
                                    	</tr>
                                	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 세번째 행 끝 -->

                    <!-- 네번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 60px;">
                            <form>
                                <div class="row">
                                    <div class="col-4 tabletitle">문의사항</div>
                                    <div class="col-8 text-right pt-1 tablesubtitle" onclick="location.href='${path}/mypage/writeQuestionBoard'">더 보기</div>
                                </div>
                            </form>
                            <!-- 자유게시판 테이블 -->
                            <table class="mytable">
                                <thead class="table_thead">
                                    <tr>
                                        <th class="table_th" style="width: 10%;">번호</th>
                                        <th class="table_th" style="width: 50%;">제목</th>
                                        <th class="table_th" style="width: 20;">작성일자</th>
                                        <th class="table_th" style="width: 10%;">답변 여부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="board" items="${ qnaBoardList }" varStatus="status">
                                		<tr>
	                                        <td class="table_td">${ board.bno }</td>
	                                        <td class="table_td" style="padding-left: 30px; text-align: left;">${ board.btitle }</td>
	                                        <td class="table_td"><fmt:formatDate value="${ board.bcreatedate }" type="date" pattern="yyyy-MM-dd"></fmt:formatDate></td>
	                                        <td class="table_td">${ board.bview }</td>
                                    	</tr>
                                	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 네번째 행 끝 -->
                </div>
                <!-- 컨테이너 끝 -->
            </div>
            <!-- 오른쪽 그리드 끝 -->
        </div>
    </div>
    <!-- 내용 전체 컨테이너 끝 -->
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>