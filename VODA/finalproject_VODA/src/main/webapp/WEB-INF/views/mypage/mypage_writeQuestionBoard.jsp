<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_main.css">
	
	<style>
		/* pagination */
        #pagination {
            margin: 0;
            margin-top: 20px;
            padding: 0;
            text-align: center;

        }

        #pagination li {
            display: inline
        }

        #pagination li a {
            display: inline-block;
            text-decoration: none;
            padding: 3px 7px;
            color: #000000;
            font-size: 14.45px;
        }

        /* Active and Hoverable Pagination */
        #pagination li a {
            border-radius: 5px;
            -webkit-transition: background-color 0.3s;
            transition: background-color 0.3s
        }

        #pagination li a.active {
            background-color: rgb(73, 95, 233);
            color: #fff
        }

        #pagination li a:hover:not(.active) {
            background-color: #ddd;
        }
	</style>
	
    <div class="container p-0">
        <div class="row">
            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-sm-2">
                <jsp:include page="/WEB-INF/views/mypage/mypage_sideMenu.jsp"/>
            </div>

            <!-- 오른쪽 컨텐츠 -->
            <div class="col-sm-10">
                <!-- 컨테이너 -->
                <div class="container">
      
                    <!-- 첫번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <h5 style="font-weight: 600;" >문의사항 조회</h5>
                                <hr>
                            </form>
                        </div>
                    </div>


                    <!-- 두번째 행 -->
                    <div class="">
                        <table class="table table-hover boardtable">
                            <thead>
                                <tr  style="text-align: center">
                                    <th id="th" style="width: 5%;">No.</th>
                                    <th id="th" style="width: 45%;">Subject</th>
                                    <th id="th" style="width: 10%;">Answer</th>
                                    <th id="th" style="width: 15%;">Date</th>
                                    <th id="th" style="width: 10%;">Hit</th>
                                </tr>
                            </thead>
            
                            <tbody>
                            	<c:forEach var="board" items="${ qnaBoardList }">
                            		<tr style="text-align: center">
	                                    <td id="td">${ board.bno }</td>
	                                    <td id="td" style="text-align: left">${ board.btitle }</td>
	                                    <td id="td">
	                                    	<c:if test="${ board.banswerstatus == 'Y'}">
	                                    		[답변 완료]
	                                    	</c:if>
	                                    </td>
	                                    <td id="td"><fmt:formatDate value="${ board.bcreatedate }" type="date"></fmt:formatDate></td>
	                                    <td id="td">${ board.bview }</td>
                                	</tr>
                            	</c:forEach>
                            </tbody>
            
                        </table>
                    </div>
                    
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <ul id="pagination">
				            	<!-- 맨 처음으로 -->
				                <li><a href="${ path }/mypage/writeQuestionBoard?page=1">«</a></li>
				                
				                <!-- 이전 페이지로 -->
				                <li><a href="${ path }/mypage/writeQuestionBoard?page=${ pageInfo.prevPage }">‹</a></li>
				                
								<!--  10개 페이지 목록 -->
								<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
									<c:if test="${ status.current == pageInfo.currentPage }">
										<li><a class="active">${ status.current }</a></li>
									</c:if>
									
									<c:if test="${ status.current != pageInfo.currentPage }">
				                		<li><a href="${ path }/mypage/writeQuestionBoard?page=${ status.current }">${ status.current }</a></li>
									</c:if>
								</c:forEach>
								
								<!-- 다음 페이지로 -->
									<li><a href="${ path }/mypage/writeQuestionBoard?page=${ pageInfo.nextPage }">›</a></li>  
								<!-- 맨 끝 페이지로 -->
					                <li><a href="${ path }/mypage/writeQuestionBoard?page=${ pageInfo.maxPage }">»</a></li>
				            </ul>
                        </div>
            
                        <div class="col-4 text-right">
                            <button class="btn btn-greyC text-nowrap"><img src="../../IMG/Community/edit.png" style="height: 23px;"></button>
                        </div>
                    </div>
                    
                    <div class="search row mb-5">
                        <div class="col-xs-2 col-sm-2">
                            <select name="searchType" class="form-control">
                                <option value="title" selected>Subject</option>
                                <option value="title">Contents</option>
                                <option value="title">Subject+Contents</option>
                            </select>
                        </div>
            
                        <div class="col-xs-10 col-sm-10">
                            <div class="input-group">
                                <input type="text" name="searchInput" id="searchInput" class="form-control">
                                <span class="input-group-btn" >
                                    <button id="searchBtn" class="btn btn-greyC text-nowrap" ><img src="../../IMG/Community/search.png" style="height: 23px;"></button>
                                </span>
                            </div>
            
                        </div>
                    </div>
      
                </div>
                <!-- 컨테이너 끝 -->
            </div>
            <!-- 오른쪽 그리드 끝 -->
        </div>
    </div>
    <!-- 내용 전체 컨테이너 끝 -->

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>   