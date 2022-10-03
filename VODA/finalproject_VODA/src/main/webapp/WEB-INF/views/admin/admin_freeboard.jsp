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
          <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-journal-text" viewBox="0 0 16 16">
            <path d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
            <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
            <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
          </svg> 자유게시판 관리
        </font></font><hr>
          <!-- 카드 리스트 Row -->
                <!-- Begin Page Content -->
                <div class="container-fluid">

                  <!-- DataTales Example -->


                  <div class="card shadow mb-4 col-12">
                      <div class="card-body">
                          <div class="table">
                              <table id="table_idd" class="table table-bordered" style="width:100%">
                                  <thead>
                                      <tr>
                                          <th style="width: 5%;">No</th>
                                          <th style="width: 50%;">제목</th>
                                          <th style="width: 10%;">날짜</th>
                                          <th style="width: 15%;">작성자</th>
                                          <th style="width: 10%;">댓글</th>
                                          <th style="width: 10%;">삭제</th>
                                      </tr>
                                  </thead>
                                  <tfoot>
                                    <tr>
                                        <th colspan="6">
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
                                          <td class="align-middle">1</td>
                                          <td class="align-middle">게시글1</td>
                                          <td class="align-middle">2022/09/20</td>
                                          <td class="align-middle">user1</td>
                                          <td><button type="button" class="btn btn-primary btn-sm">확인</button></td>
                                          <td><button type="button" class="btn btn-primary btn-sm">삭제</button></td>
                                      </tr>
                                      <tr>
                                        <td class="align-middle">2</td>
                                        <td class="align-middle">게시글2</td>
                                        <td class="align-middle">2022/09/21</td>
                                        <td class="align-middle">user1</td>
                                        <td><button type="button" class="btn btn-primary btn-sm">확인</button></td>
                                        <td><button type="button" class="btn btn-primary btn-sm">삭제</button></td>
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
