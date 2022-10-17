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

    <!-- Board CSS -->
    <link rel="stylesheet" href="${path}/resources/css/admin/board.css">
    
    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- common CSS-->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/common/headerfooter.css">
    
    <!-- btn CSS -->
    <link rel="stylesheet" href="${path}/resources/css/common/btn.css">
    
    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

    <title>상품관리</title>

<body>
    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">
      
	    <!-- 관리자 페이지 사이드바 -->
        <jsp:include page="/WEB-INF/views/admin/admin_sidebar.jsp"/>

        <!-- 관리자 페이지 메인화면 -->
        <div class="col-10 p-4">
          <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
            상품 상태 관리
          </h1>
          <hr>
          <!-- 카드 리스트 Row -->
            <div class="row">
              <table class="table table-hover">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">상품명</th>
                    <th scope="col">이미지</th>
                    <th scope="col">리뷰</th>
                    <th scope="col">상태수정</th>
                    <th scope="col">상품 비활성화</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                      <th colspan="5">
        <div class="search1 row my-4">
            <div class="col-12 row">
                <div class="col-xs-3 col-sm-3">
                    <select name="searchType" class="form-control1" style="font-size: 14.45px; ">
                        <option value="title" selected>제목</option>
                        <option value="title">내용</option>
                        <option value="title">제목+내용</option>
                    </select>
                </div>

                <div class="col-xs-7 col-sm-7 pl-0">
                    <div class="input-group">
                        <input type="text" class="form-control1" style="font-size: 14.45px;">
                        <span class="input-group-btn">
                            <button id="searchBtn" class="btn btn-greyc text-nowrap"
                                style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"
                                >
                                <img src="${ path }/resources/img/community/search.png" style="height: 18px;">
                            </button>
                        </span>
                    </div>
                </div>     
            </div>
        </div>
                      </th>
                      <th colspan="1">
                        <button type="button" class="btn btn-logoC btn-sm">적용</button>
                        <button type="button" class="btn btn-greyC btn-sm">취소</button></th>
                  </tr>
              </tfoot>
                <tbody>
                  <c:forEach var="product" items="${ list }">
                  <tr>
                    <th scope="row" class="align-middle">${ product.pno }</th>
                    <td class="align-middle">${ product.pname }</td>
                    <td><div id="admin_goods_imgbox"><img src="../../IMG/Admin/good1.jpg"></div></td>
                    <td class="align-middle"><button type="button" class="btn btn-logoC btn-sm">리뷰관리</button></td>
                    <td class="align-middle"><button type="button" class="btn btn-logoC btn-sm">수정</button></td>
                    <td class="align-middle">
                    	<div class="form-check">
                      	<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                      	<label class="form-check-label" for="defaultCheck1">
                      	</label>
                    </div>
                    </td>
                  </tr>
				</c:forEach>
                </tbody>
              </table>
              </div>

            <!--Active and Hoverable Pagination-->
            <ul id="pagination">
            <!-- 맨 첫 페이지로 -->
                <li><a href="${ path }/admin/admin_goods?page=1">«</a></li>
			
			<!-- 이전 페이지로 -->
				<li><a href="${ path }/admin/admin_goods?page=${ pageInfo.prevPage }">‹</a></li>    
				           
            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					
					<c:if test="${ status.current != pageInfo.currentPage }">
                		<li><a href="${ path }/admin/admin_goods?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 페이지로 -->
				<li><a href="${ path }/admin/admin_goods?page=${ pageInfo.nextPage }">›</a></li>  
			<!-- 맨 끝 페이지로 -->
                <li><a href="${ path }/admin/admin_good?page=${ pageInfo.maxPage }">»</a></li>
            </ul>
    	</div>
    </div>
 </div>
<hr>
</body>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>