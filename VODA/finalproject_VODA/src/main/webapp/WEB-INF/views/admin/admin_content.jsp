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

    <!-- btn CSS -->
    <link rel="stylesheet" href="${path}/resources/css/common/btn.css">
    
    <!-- btn CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/join.css"> 

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- jQuery -->
    <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>

    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">
      
	    <!-- 관리자 페이지 사이드바 -->
        <jsp:include page="/WEB-INF/views/admin/admin_sidebar.jsp"/>

        <!-- 관리자 페이지 메인화면 -->
        <div class="col-10 p-4">
          <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
            컨텐츠 관리
          <hr>
          <!-- 카드 리스트 Row -->
            <div class="row">
              <table class="table table-hover">
                <thead class="thead-light">
                  <tr>
                    <th scope="col" style="width: 5%">No</th>
                    <th scope="col" style="width: 30%">제목</th>
                    <th scope="col">이미지</th>
                    <th scope="col" style="width: 15%">리뷰관리</th>
                    <th scope="col" style="width: 10%">상태수정</th>
                    <th scope="col" style="width: 20%">컨텐츠 비활성화</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th colspan="5">            
                      <div class="col-xs-5 col-sm-5">
                      <div class="input-group">
                          <input type="text" name="searchInput" id="searchInput" class="form-control">
                          <span class="input-group-btn" >
                              <button id="searchBtn" class="btn btn-light text-nowrap" ><img src="../../IMG/Community/search.png" style="height: 23px;"></button>
                          </span>
                      </div>
                      </div>
                    </th>
                      <th colspan="1">
                        <button type="button" class="btn btn-primary btn-sm">적용</button>
                        <button type="button" class="btn btn-secondary btn-sm">취소</button></th>
                  </tr>
              </tfoot>
                <tbody>
                  <tr>
                    <th scope="row" class="align-middle">1</th>
                    <td class="align-middle">테스트컨텐츠</td>
                    <td><div id="admin_goods_imgbox"><img src="../../IMG/Admin/drama1.jpg"></div></td>
                    <td class="align-middle"><button type="button" class="btn btn-primary btn-sm">리뷰관리</button></td>
                    <td class="align-middle"><button type="button" class="btn btn-primary btn-sm">수정</button></td>
                    <td class="align-middle"><button<div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                      <label class="form-check-label" for="defaultCheck1">
                      </label>
                    </div></td>
                  </tr>

                </tbody>
              </table>
            </div>
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
  </div>
</div>
<hr>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>