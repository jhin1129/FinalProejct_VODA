<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!-- goods_all_list CSS-->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/product/product_all_list.css">

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${path}/resources/img/product/가로자른배너1.png" class="d-block w-100" alt="..." id="crs">
        </div>
        <div class="carousel-item">
            <img src="${path}/resources/img/product/가로자른배너2.png" class="d-block w-100" alt="..." id="crs">
        </div>
        <div class="carousel-item">
            <img src="${path}/resources/img/product/가로자른배너3.png" class="d-block w-100" alt="..." id="crs">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>
</div>
<br>
    <article id="mainContent" class="kakao_article">
        <h2 class="screen_out">영화 랭킹 본문</h2>
        <div class="section_ranking">
            <div class="head_section">
                <h3 class="tit_section">전체 상품</h3>
            </div>
            <div class="box_ranking" data-tiara-layer="list">
                <ol class="list_movieranking">
                        <c:forEach var="product" items="${product}">
                        <c:set var="rename" value="${ product.prenamefile }" />
                        <li>
                            <div class="item_poster">
                                <div class="thumb_item">
                                    <div class="poster_movie">
                                            <img src="${ path }/resources/uploadFiles/${ fn:substring(rename,0,22) }" class="img_thumb" alt="공조2: 인터내셔날">
                                    </div>
                                    <div class="poster_info">
                                        <a href="/moviedb/main?movieId=147615" class="link_story" data-tiara-layer="poster">
                                            ${product.pcategory}
                                        </a>
                                    </div>
                                </div>
                                <div class="thumb_cont">
                                    <strong class="tit_item">
                                        <a href="${ path }/product/product_detail?pno=${product.pno}" class="link_txt" data-tiara-layer="moviename">[${ product.pcategory }] ${ product.pname }</a>
                                    </strong>
                                    <span class="txt_append">
                                        <span class="info_txt">가격<span class="txt_grade">${ product.pprice } </span></span>
                                    </span>
                                </div>
                            </div>
                        </li>
                        </c:forEach>
                    </ol>
            </div>
    </article>
    <div class="search row mb-3">
		
        <div class="col-xs-2 col-sm-2" style="margin-left: 250px;">
            <select id="searchType" name="searchType" class="form-control">
                <option value="pro_Name" selected>상품명</option>
                <option value="pro_Artist_No">관련 영화</option>
            </select>
        </div>

        <div class="col-xs-10 col-sm-5">
            <div class="input-group">
                <input type="text" name="searchVal" id="searchInput" class="form-control">
                
                <span class="input-group-btn">
                    <button id="searchBtn" class="btn btn-light text-nowrap"> search</button>
                </span>
                <button onclick="location.href='${path}/product/product_create'">상품등록</button>
            </div>
        </div>
        
    </div>
    
    <ul class="pagination justify-content-center">
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
        <c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
				<c:if test="${ status.current == pageInfo.currentPage }">
					<li class="page-item disabled"><a class="page-link" href="#">${ status.current }</a></li>
				</c:if>
				<c:if test="${ status.current != pageInfo.currentPage }">
					<li class="page-item"><a class="page-link" href="${ path }/product/product_all_list?page=${ status.current }">${ status.current }</a></li>
				</c:if>
	</c:forEach>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
    
    
    <br><br><br>
    
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>