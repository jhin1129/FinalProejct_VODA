<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<%@page import="java.util.Calendar" %>
<%
        java.util.Calendar cal = java.util.Calendar.getInstance();
		cal.add(Calendar.DATE, +2);
%>
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" type="text/css" href="${path}/resources/css/product/product_detail.css">
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- Demo styles -->
    <style>
        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }


        .swiper {
            width: 100%;
            height: 300px;
            margin-left: auto;
            margin-right: auto;
        }

        .swiper-slide {
            background-size: cover;
            background-position: center;
        }

        .mySwiper2 {
            height: 370px;
            width: 400px;
        }

        .mySwiper {
            height: 100px;
            box-sizing: border-box;
            padding: 10px 0;
            width: 400px;
        }

        .mySwiper .swiper-slide {
            width: 25%;
            height: 100%;
            opacity: 0.4;
        }

        .mySwiper .swiper-slide-thumb-active {
            opacity: 1;
        }

        .swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
    </style>


    <div class="container my-5">
        <div>
            <div class="card" style="border: none;">
                <div class="row g-0 p-5">
                    <!-- 이미지 -->
                    <div class="col-6" style="width: 100%;">
                        <!-- Swiper -->

                        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
                            class="swiper mySwiper2">
                            <div class="swiper-wrapper">
                            <c:forEach items="${ imgList }" var="imgList">
                                <div class="swiper-slide">
                                    <img
                                        src="${ path }/resources/uploadFiles/${imgList}" />
                                </div>
                                <!--<div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/08/32/1000001997/1000001997_main_063.jpg" />
                                </div>
                                <div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/06/25/1000001970/1000001970_main_03.jpg" />
                                </div>
                                <div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/07/30/1000001990/1000001990_main_039.jpg" />
                                </div> -->
                            </c:forEach>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                        <div thumbsSlider="" class="swiper mySwiper">
                            <div class="swiper-wrapper">
                            <c:forEach items="${ imgList }" var="imgList">
                                <div class="swiper-slide">
                                    <img
                                        src="${ path }/resources/uploadFiles/${imgList}" />
                                </div>
                                <!--<div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/08/32/1000001997/1000001997_main_063.jpg" />
                                </div>
                                <div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/06/25/1000001970/1000001970_main_03.jpg" />
                                </div>
                                <div class="swiper-slide">
                                    <img
                                        src="http://dwmdotori.godohosting.com/data/goods/22/07/30/1000001990/1000001990_main_039.jpg" />
                                </div> -->
                            </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-1"></div>
                    <!-- 이미지 상세내용 -->
                    <div id="div1" class="col-5">
                        <div class="card-body py-0">
                            <h4 class="card-title">[${ product.pcategory }]${ product.pname }</h4>

                            <p class="my-0">${ product.pcategory }</p>
                            <hr class="my-2">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 30%;">상품번호</td>
                                    <td>${ product.pno }</td>
                                </tr>
                                <tr>
                                    <td>제조사</td>
                                    <td>${ product.pmadecompany }</td>
                                </tr>
                                <tr>
                                    <td>원산지</td>
                                    <td>${ product.pmadelocal }</td>
                                </tr>
                                <tr>
                                    <td>배송예정일</td>
                                    <td> 
	                                    <%= cal.get(java.util.Calendar.YEAR) %>년
									    <%= cal.get(java.util.Calendar.MONTH) + 1 %>월
									    <%= cal.get(java.util.Calendar.DATE) %>일
								    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="mb-2">수량</div>
                                    </td>
                                    <td>
                                        <div class="mb-2">${ product.pqtt }</div>
                                    </td>
                                </tr>
                                <tr
                                    style="border-top: 1px solid rgba(0,0,0,.1); border-bottom: 1px solid rgba(0,0,0,.1);">
                                    <td>
                                        <div class="my-2">판매가</div>
                                    </td>
                                    <td>${ product.pprice }원</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="mt-2">수량선택</div>
                                    </td>
                                    <td>
                                        <input class="mt-2" type="number" min="1" max="${ product.pqtt }" value="1">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgba(0,0,0,.1);">
                                    <td>
                                        <div class="mb-2">총 합계금액</div>
                                    </td>
                                    <td>
                                        <div class="mb-2">${product.pprice}원</div>
                                    </td>
                                </tr>
                            </table>

                            <table class="my-2" style="width: 100%;">
                                <tr>
                                    <td style="width: 50%;">
                                        <div class="py-2 text-center"><button class="btn btn-light py-1">리뷰확인</button>
                                        </div>
                                    </td>
                                    <td style="width: 50%;">
                                        <div class="py-2 text-center"><button class="btn btn-light py-1">장바구니</button>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <div><button class="btn btn-primary py-1">구매하기</button></div>
                                    </td>
                                </tr>
                            </table>


                        </div>
                    </div>
                </div>
            </div>
            <br><br>

            <h3>추천 상품 보기</h3>

            <div class="row my-5">


                <div class="col-lg-3 col-md-6">
                    <div class="card" style="width: 16rem;">
                        <img style="background-color: black;" width="100%" height="254px">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of
                                the card's
                                content.</p>
                            <a href="#" class="btn btn-primary1">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card" style="width: 16rem;">
                        <img style="background-color: black;" width="100%" height="254px">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of
                                the card's
                                content.</p>
                            <a href="#" class="btn btn-primary1">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card" style="width: 16rem;">
                        <img style="background-color: black;" width="100%" height="254px">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of
                                the card's
                                content.</p>
                            <a href="#" class="btn btn-primary1">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card" style="width: 16rem;">
                        <img style="background-color: black;" width="100%" height="254px">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of
                                the card's
                                content.</p>
                            <a href="#" class="btn btn-primary1">Go somewhere</a>
                        </div>
                    </div>
                </div>

            </div>

            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" style="height: 55px; line-height: 40px;">상품
                        소개</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="height: 55px; line-height: 40px;">리뷰</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="height: 55px; line-height: 40px;">배송 및 교환 안내</a>
                </li>
            </ul>

            <div>
                <div class="card" style="border: none;">
                    <div class="row g-0 p-5">

                    </div>
                </div>
				
                <div class="p-5">
                	<c:forEach items="${ imgList }" var="imgList">
                    <img style="width: 100%; height: 700px;" src="${ path }/resources/uploadFiles/${imgList}">
                    </c:forEach>
                    <p>
                        ${ product.pcontents }
                    </p>
                </div>
            </div>
        </div>
        <input type="hidden" name="pno" value="${ product.pno }">
	<button id="btnDelete">상품 삭제</button>
    </div>
    
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 10,
            slidesPerView: 4,
            freeMode: true,
            watchSlidesProgress: true,
        });
        var swiper2 = new Swiper(".mySwiper2", {
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: swiper,
            },
        });
        $(document).ready(() => {
			$("#btnDelete").on("click", () => {
				if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
					location.replace("${ path }/product/product_delete?pno=${ product.pno }");
				}
			});
		});
        
    </script>

