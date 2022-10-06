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
            <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
              회원 관리
          </font></font><hr>       
          <!-- 카드 리스트 Row -->
            <div class="row">
              <table class="table table-hover">
                <thead class="thead-light">
                  <tr>
                    <th scope="col" style="width: 5%">No</th>
                    <th scope="col">회원아이디</th>
                    <th scope="col">가입일</th>
                    <th scope="col" style="width: 10%">회원상태</th>
                    <th scope="col"style="width: 20%">회원 비활성화</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                      <th colspan="4">            
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
                  <tr>                    <th scope="row">${ member.m_no }</th>

                    <td>${ member.m_id }</td>
                    <td>${ member.m_joinDate }</td>
                    <td>
                    	<c:choose> 
                    		<c:when test="${ member.m_status == 'L'}">정상</c:when>
                    		<c:when test="${ member.m_status == 'N'}">탈퇴</c:when>
                    	</c:choose>
                    </td>
                    <td><div class="form-check">
                      	  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    	  <label class="form-check-label" for="defaultCheck1">
                      	  </label>
                    	</div>
                    </td>
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
</body>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>