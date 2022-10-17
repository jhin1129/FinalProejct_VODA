<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

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
          <!-- 카드 리스트 Row -->
                <!-- Begin Page Content -->
                <div class="container-fluid">

                  <!-- DataTales Example -->

                  <div class="card shadow mb-4 col-12">

                      <div class="card-body">
                          <div class="table">
                              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                  <thead>
                                      <tr>
                                          <th style="width: 5%;">No</th>
                                          <th>주문일자</th>
                                          <th>상품번호</th>
                                          <th>상품명</th>
                                          <th>개당 금액</th>
                                          <th>회원정보</th>
                                          <th>구매수량</th>
                                          <th>결제현황</th>
                                          <th>배송현황</th>
                                      </tr>
                                  </thead>
                                  <tfoot>
                                    <tr>
                                        <th colspan="9">
                                          <div class="col-xs-5 col-sm-5">
                                            <div class="input-group">
                                                <input type="text" name="searchInput" id="searchInput" class="form-control">
                                                <span class="input-group-btn" >
                                                    <button id="searchBtn" class="btn btn-light text-nowrap" ><img src="../../IMG/Community/search.png" style="height: 23px;"></button>
                                                </span>
                                            </div>
                                            </div>
                                        </th>
                                    </tr>
                                </tfoot>
                                  <tbody>
                                      <tr>
                                          <td>1</td>
                                          <td>2022/09/20</td>
                                          <td>1</td>
                                          <td>테스트상품</td>
                                          <td>10,000</td>
                                          <td>user1</td>
                                          <td>1</td>
                                          <td>미결제</td>
                                          <td>배송전</td>
                                      </tr>
                                      <tr>
                                        <td>2</td>
                                        <td>2022/09/21</td>
                                        <td>2</td>
                                        <td>테스트상품</td>
                                        <td>20,000</td>
                                        <td>user2</td>
                                        <td>1</td>
                                        <td>미결제</td>
                                        <td>배송전</td>
                                      </tr>
                                  </tbody>
                              </table>

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
                      </div>
                  </div>

              </div>
              <!-- /.container-fluid -->

          </div>
          <!-- End of Main Content -->
  </div>
</div>
<hr>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>