<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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


    <title>회원관리</title>

</head>
<body>
    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">
      
	    <!-- 관리자 페이지 사이드바 -->
        <jsp:include page="/WEB-INF/views/admin/admin_sidebar.jsp"/>
        
        <!-- 관리자 페이지 메인화면 -->
          <div class="col-10 p-4">
            <h1 class="h3 mb-2 text-gray-800"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
              회원 관리
            </h1>
          <hr>       
          <!-- 카드 리스트 Row -->

            <form th:action th:object="${form}" method="get">
              <table class="table table-hover">
                <thead class="thead-light">
                  <tr>
                    <th scope="col" style="width: 5%">No</th>
                    <th scope="col">회원아이디</th>
                    <th scope="col">가입일</th>
                    <th scope="col" style="width: 10%">회원상태</th>
                    <th scope="col"style="width: 20%">
                      <label class="checkbox-inline">
                        <input type="checkbox" id="allCheckBox" onclick="allChecked()">
                      </label>
                    </th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                      <th colspan="4">            
				        <div class="search1 row my-4">
				            <div class="col-9 row">
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
                      </th>
                      <th colspan="1">
                        <button type="button" class="btn btn-logoC btn-sm" onclick="location.href='javascript:boardDelete();'">비활성화</button>
                        <button type="button" class="btn btn-greyC btn-sm">취소</button></th>
                  </tr>
                </tfoot>
                
                <!-- 테이블 내용 -->
                <tbody>
                 <c:forEach var="member" items="${ list }">
                  <tr>             
                    <th scope="row">${ member.m_no }</th>
                    <td>${ member.m_id }"</td>
                    <td><fmt:formatDate value="${ member.m_joinDate }" type="date"></fmt:formatDate></td>
                    <td>
                    	<c:choose> 
                    		<c:when test="${ member.m_status == 'L'}">정상</c:when>
                    		<c:when test="${ member.m_status == 'N'}">탈퇴</c:when>
                    	</c:choose>
                    </td>
                    <td>
                    	  <label class="checkbox-inline" for="defaultCheck1">
                      	  	 <input class="chk" type="checkbox" value="" id="defaultCheck1" name="chk" onclick="chkClicked()" th:value="${ list.m_no }">
                      	  </label>
                    </td>
                  </tr>
                  </c:forEach> 
                </tbody>
              </table>
             </form>
                                    
            <!--Active and Hoverable Pagination-->
            <ul id="pagination">
            <!-- 맨 첫 페이지로 -->
                <li><a href="${ path }/admin/admin_member?page=1">«</a></li>
			
			<!-- 이전 페이지로 -->
				<li><a href="${ path }/admin/admin_member?page=${ pageInfo.prevPage }">‹</a></li>    
				           
            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					
					<c:if test="${ status.current != pageInfo.currentPage }">
                		<li><a href="${ path }/admin/admin_member?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 페이지로 -->
				<li><a href="${ path }/admin/admin_member?page=${ pageInfo.nextPage }">›</a></li>  
			<!-- 맨 끝 페이지로 -->
                <li><a href="${ path }/admin/admin_member?page=${ pageInfo.maxPage }">»</a></li>
            </ul>
        </div>
        






                
            </div>
        </div>

<hr>
<script>

    //체크박스 전체 선택 클릭 이벤트
    function allChecked(target){

        //전체 체크박스 버튼
        const checkbox = document.getElementById('allCheckBox');

        //전체 체크박스 버튼 체크 여부
        const is_checked = checkbox.checked;

        //전체 체크박스 제외한 모든 체크박스
        if(is_checked){
            //체크박스 전체 체크
            chkAllChecked()
        }

        else{
            //체크박스 전체 해제
            chkAllUnChecked()
        }
    }

    //자식 체크박스 클릭 이벤트
    function chkClicked(){

        //체크박스 전체개수
        const allCount = document.querySelectorAll(".chk").length;

        //체크된 체크박스 전체개수
        const query = 'input[name="chk"]:checked'
        const selectedElements = document.querySelectorAll(query)
        const selectedElementsCnt = selectedElements.length;

        //체크박스 전체개수와 체크된 체크박스 전체개수가 같으면 전체 체크박스 체크
        if(allCount == selectedElementsCnt){
             document.getElementById('allCheckBox').checked = true;
        }

        //같지않으면 전체 체크박스 해제
        else{
            document.getElementById('allCheckBox').checked = false;
        }
    }

    //체크박스 전체 체크
    function chkAllChecked(){
        document.querySelectorAll(".chk").forEach(function(v, i) {
            v.checked = true;
        });
    }

    //체크박스 전체 체크 해제
    function chkAllUnChecked(){
        document.querySelectorAll(".chk").forEach(function(v, i) {
            v.checked = false;
        });
    }

    //글삭제
    function boardDelete(){
        //체크박스 체크된 항목
        const query = 'input[name="chk"]:checked'
        const selectedElements = document.querySelectorAll(query)

        //체크박스 체크된 항목의 개수
        const selectedElementsCnt = selectedElements.length;

        if(selectedElementsCnt == 0){
            alert("삭제할 항목을 선택해주세요.");
            return false;
        }

        else{
            if (confirm("정말로 삭제하시겠습니까?")) {

                //배열생성
                const arr = new Array(selectedElementsCnt);

                document.querySelectorAll('input[name="chk"]:checked').forEach(function(v, i) {
                    arr[i] = v.value;
                });

                const form = document.createElement('form');
                form.setAttribute('method', 'post');        //Post 메소드 적용
                form.setAttribute('action', 'admin_member_delete');

                var input1 = document.createElement('input');
                input1.setAttribute("type", "hidden");
                input1.setAttribute("name", "memberIds");
                input1.setAttribute("value", arr);
                form.appendChild(input1);
                console.log(form);
                document.body.appendChild(form);
                form.submit();
            }
        }
    }

</script>
</body>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>