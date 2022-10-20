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

    <!-- Board CSS -->
    <link rel="stylesheet" href="${path}/resources/css/admin/board.css">
    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">
      
	    <!-- 관리자 페이지 사이드바 -->
        <jsp:include page="/WEB-INF/views/admin/admin_sidebar.jsp"/>
        <!-- 관리자 페이지 메인화면 -->
        <div class="col-10 p-4">
          <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-coin" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M11 15a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm5-4a5 5 0 1 1-10 0 5 5 0 0 1 10 0z"/>
            <path d="M9.438 11.944c.047.596.518 1.06 1.363 1.116v.44h.375v-.443c.875-.061 1.386-.529 1.386-1.207 0-.618-.39-.936-1.09-1.1l-.296-.07v-1.2c.376.043.614.248.671.532h.658c-.047-.575-.54-1.024-1.329-1.073V8.5h-.375v.45c-.747.073-1.255.522-1.255 1.158 0 .562.378.92 1.007 1.066l.248.061v1.272c-.384-.058-.639-.27-.696-.563h-.668zm1.36-1.354c-.369-.085-.569-.26-.569-.522 0-.294.216-.514.572-.578v1.1h-.003zm.432.746c.449.104.655.272.655.569 0 .339-.257.571-.709.614v-1.195l.054.012z"/>
            <path d="M1 0a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h4.083c.058-.344.145-.678.258-1H3a2 2 0 0 0-2-2V3a2 2 0 0 0 2-2h10a2 2 0 0 0 2 2v3.528c.38.34.717.728 1 1.154V1a1 1 0 0 0-1-1H1z"/>
            <path d="M9.998 5.083 10 5a2 2 0 1 0-3.132 1.65 5.982 5.982 0 0 1 3.13-1.567z"/>
          </svg>  상품 주문 관리
        </h1>
        <hr>
        
    <!-- 내용 전체 컨테이너 -->
    <div class="container my-5">

     <!-- Begin Page Content -->
     <div class="container-fluid">
        <div class="table">
            <table id="table_idd" class="table table-bordered" style="width:100%">
                <thead>
                    <tr style="text-align: center">
                        <th id="th" style="width: 10%;">주문번호</th>
                        <th id="th" style="width: 20%;">주문일자</th>
                        <th id="th" style="width: 20%;">상품명</th>
                        <th id="th" style="width: 10%;">회원정보</th>
                        <th id="th" style="width: 10%;">구매수량</th>
                        <th id="th" style="width: 15%;">주문금액</th>
                        <th id="th" style="width: 15%;">주문현황</th>
                    </tr>
                </thead>
				
				
                <tbody>
 	             <c:if test="${ empty search }">
					<tr>
						<td colspan="9" style="text-align: center;">
							조회된 게시글이 없습니다.
						</td>
					</tr>	
				 </c:if> 
                  <c:if test="${ not empty search }"> 	 
	                <c:forEach var="order" items="${ search }">
                    <tr style="text-align: center;">
                        <td id="td">${ order.payno }</td>
                        <td id="td"><fmt:formatDate value="${ order.odate }" type="date"/></td>
						<td id="td" style="text-align: left;">
							<a href="${ path }/product/product_detail?no=${ order.productList[0].pno }">
								${ order.productList[0].pname }
							</a>
						</td>
						<td id="td">${ order.member.m_id }</td>
						<td id="td">${ order.oqtt }</td>
						<td id="td"><fmt:formatNumber value="${ order.pay.payprice }" type="number" groupingUsed="true"/>
                        <td id="td">${ order.pay.patstatus }</td>
                    </tr>
                    </c:forEach>
                    </c:if> 
                </tbody>
            </table>
        </div>


        <div class="col-4 text-right">
        </div>


        <div class="search1 row my-4">
          <form action="${ path }/admin/admin_goods_order_search" style="width: 100%;">
            <div class="col-7 row">
                <div class="col-xs-3 col-sm-3">
                    <select name="searchType" class="form-control1" style="font-size: 14.45px; ">
                        <option value="title" selected>상품명</option>
                        <option value="">구매자</option>
                        <option value="status">주문현황</option>
                    </select>
                </div>

                <div class="col-xs-7 col-sm-7 pl-0">
                    <div class="input-group">
                        <input name="keyword" type="text" class="form-control1" style="font-size: 14.45px;">
                        <span class="input-group-btn">
                            <button id="searchBtn" class="btn btn-greyc text-nowrap"
                                style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"><img
                                     src="${path}/resources/img/community/search.png" style="height: 18px;"></button>
                        </span>
                    </div>
                </div>     
              </div>
             </form>
           </div>
           
        <div class="display1 row my-3">
            <!--Active and Hoverable Pagination-->
            <ul id="pagination">
            <!-- 맨 첫 페이지로 -->
                <li><a href="${ path }/admin/admin_goods_order?page=1">«</a></li>
			
			<!-- 이전 페이지로 -->
				<li><a href="${ path }/admin/admin_goods_order?page=${ pageInfo.prevPage }">‹</a></li>    
				           
            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					
					<c:if test="${ status.current != pageInfo.currentPage }">
                		<li><a href="${ path }/admin/admin_goods_order?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 페이지로 -->
				<li><a href="${ path }/admin/admin_goods_order?page=${ pageInfo.nextPage }">›</a></li>  
			<!-- 맨 끝 페이지로 -->
                <li><a href="${ path }/admin/admin_goods_order?page=${ pageInfo.maxPage }">»</a></li>
            </ul>

        </div>
           
           
         </div>
       </div>
  </div>
</div>
<hr>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>