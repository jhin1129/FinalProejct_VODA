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


    <title>공지사항</title>

</head>
<body>

    <!-- 내용 전체 컨테이너 -->
    <div class="container my-5">

        <div>
            <h3 style="text-align: center;  color: #000000; font-size: 17px;">공지사항</h3>
        </div>

        <div class="mt-4">
            <table class="table table-hover">
                <thead>
                    <tr style="text-align: center">
                        <th id="th" style="width: 5%;">번호</th>
                        <th id="th" style="width: 30%;">제목</th>
                        <th id="th" style="width: 15%;">작성자</th>
                        <th id="th" style="width: 15%;">작성일</th>
                        <th id="th" style="width: 15%;">첨부파일</th>
                        <th id="th" style="width: 10%;">조회수</th>
                    </tr>
                </thead>
				
				
                <tbody>
 	             <c:if test="${ empty list }">
					<tr>
						<td colspan="6" style="text-align: center;">
							조회된 게시글이 없습니다.
						</td>
					</tr>	
				 </c:if> 
                  <c:if test="${ not empty list }"> 	 
	                <c:forEach var="notice" items="${ list }">
                    <tr style="text-align: center; cursor:pointer;">
                        <td>${ notice.noticeno }</td>
						<td>
							<a href="${ path }/admin/admin_notice_detail?no=${ notice.noticeno }">
								${ notice.noticeTitle }
							</a>
						</td>
						<td>${ notice.noticeWriterId }</td>
						<td><fmt:formatDate value="${ notice.noticeCreateDate }" type="date"></fmt:formatDate>
						<td>
							<c:if test="${ empty notice.noticeOriginalFileName }">
								<span> - </span>
							</c:if>
							<c:if test="${ not empty notice.noticeRenamedFileName }">
								<img src="${ path }/resources/img/community/file.png" width="20px" height="20px">
							</c:if>
						</td>
						<td>${ notice.noticeReadCount }</td>
                    </tr>
                    </c:forEach>

                    <tr>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                    </tr>
                    </c:if> 
                </tbody>

            </table>
        </div>
        <div class="display1 row my-3">
            <!--Active and Hoverable Pagination-->
            <ul id="pagination">
            <!-- 맨 첫 페이지로 -->
                <li><a href="${ path }/admin/admin_notice_list?page=1">«</a></li>
			
			<!-- 이전 페이지로 -->
				<li><a href="${ path }/admin/admin_notice_list?page=${ pageInfo.prevPage }">‹</a></li>    
				           
            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					
					<c:if test="${ status.current != pageInfo.currentPage }">
                		<li><a href="${ path }/admin/admin_notice_list?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 페이지로 -->
				<li><a href="${ path }/admin/admin_notice_list?page=${ pageInfo.nextPage }">›</a></li>  
			<!-- 맨 끝 페이지로 -->
                <li><a href="${ path }/admin/admin_notice_list?page=${ pageInfo.maxPage }">»</a></li>
            </ul>

        </div>

        <div class="display2">
            <button class="btn btn-greyc text-nowrap" style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"><img
                    src="${ path }/resources/img/community/edit.png" style="height: 20px;" onclick="location.href='${path}/admin/admin_notice_crud'"></button>
        </div>

        <div class="col-4 text-right">
        </div>


        <div class="search1 row my-4">
            <div class="col-6 row">
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
    </div>
    

</body>
</html>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>