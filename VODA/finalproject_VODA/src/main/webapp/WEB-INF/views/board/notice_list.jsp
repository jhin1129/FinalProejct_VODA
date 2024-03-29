<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <!-- Admin CSS -->
    <link rel="stylesheet" href="${path}/resources/css/admin/admin.css">
    
    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>


    <style>
        @import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

        * {
            font-family: Pretendard,
                -apple-system, BlinkMacSystemFont,
                system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
        }

        .page-link,
        .form-control {

            box-shadow: none !important;
        }

        input:focus {
            outline: none !important;
        }


        .btn {

            transition: background 0.2s ease-in-out,
                color 0.2s ease-in-out;
            /* 패딩은 주석하쇼 */
            padding: 1px 0.38rem;


        }

        .btn-greyc {
            background-color: rgb(235, 236, 240);
            border: rgb(235, 236, 240);
            color: #000000;

        }

        .btn-greyc:hover {
            background-color: #c3c3c4b7 !important;
            border-color: #c3c3c4b7 !important;
            color: #000000 !important;



        }

        table * {
            font-size: 14.45px;
            color: #000000;
        }

        .table thead th {
            border-bottom: 1px;
        }

        .table {
            margin-bottom: 0rem;
        }


        .table td,
        .table th {
            padding: 0.60rem;
        }

        .page-link {
            color: #000000;
            font-size: 14.45px;
        }

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

        .display1 {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .display2 {
            float: right;
            margin-top: -90px;
        }


        /* 인풋, 폼태그 */
        option {
            font-size: 14.5px;
        }

        .form-control1 {
            display: block;
            height: 27.8px;
            padding: 0.2rem 0.7rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;

        }


        .td-hr {
            pointer-events: none;
        }
    </style>

    <title>공지사항</title>

<body>
    <!-- 관리자 페이지 메인헤드 -->
    <div class="container">
      <div class="row">

    <!-- 내용 전체 컨테이너 -->
    <div class="container my-5">

        <div>
            <h3 style="text-align: center;  color: #000000; font-size: 17px;"><a style="text-decoration-line: none;" href="${ path }/board/notice_list">공지사항</a></h3>
        </div>

        <div class="mt-4">
            <table class="table table-hover">
                <thead>
                    <tr style="text-align: center">
                        <th id="th" style="width: 10%;">번호</th>
                        <th id="th" style="width: 45%;">제목</th>
                        <th id="th" style="width: 15%;">작성자</th>
                        <th id="th" style="width: 15%;">작성일</th>
                        <th id="th" style="width: 15%;">조회수</th>
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
 	                <c:choose> 
	                
                    <c:when test="${notice.noticeTopTitle == 1}">
                    <tr style="text-align: center; background-color: #eeeeee; font-weight: bold;  cursor:pointer;">
                        <td id="td">${ notice.noticeno }</td>
						<td id="td" style="text-align: left;">
							<a href="${ path }/board/notice_detail?no=${ notice.noticeno }">
								${ notice.noticeTitle }
							</a>
							<c:if test="${ empty notice.noticeOriginalFileName }">
								<span> - </span>
							</c:if>
							<c:if test="${ not empty notice.noticeRenamedFileName }">
								<img src="${ path }/resources/img/community/attachment.png" width="20px" height="20px">
							</c:if>
						</td>
						<td id="td">${ notice.noticeWriterId }</td>
						<td id="td"><fmt:formatDate value="${ notice.noticeCreateDate }" type="date"></fmt:formatDate>
						<td id="td">${ notice.noticeReadCount }</td>
                    </tr>                       		
                    </c:when>
                    
                    <c:when test="${notice.noticeTopTitle == 0}">
                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">${ notice.noticeno }</td>
						<td id="td" style="text-align: left;">
							<a href="${ path }/board/notice_detail?no=${ notice.noticeno }">
								${ notice.noticeTitle }
							</a>
							<c:if test="${ empty notice.noticeOriginalFileName }">
								<span> - </span>
							</c:if>
							<c:if test="${ not empty notice.noticeRenamedFileName }">
								<img src="${ path }/resources/img/community/attachment.png" width="20px" height="20px">
							</c:if>
						</td>
						<td id="td">${ notice.noticeWriterId }</td>
						<td id="td"><fmt:formatDate value="${ notice.noticeCreateDate }" type="date"></fmt:formatDate>
						<td id="td">${ notice.noticeReadCount }</td>
                    </tr>                    		
                    </c:when>    
                               
                    </c:choose>
                    </c:forEach>

                    <tr>
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
                <li><a href="${ path }/board/notice_list?page=1">«</a></li>
			
			<!-- 이전 페이지로 -->
				<li><a href="${ path }/board/notice_list?page=${ pageInfo.prevPage }">‹</a></li>    
				           
            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					
					<c:if test="${ status.current != pageInfo.currentPage }">
                		<li><a href="${ path }/board/notice_list?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 페이지로 -->
				<li><a href="${ path }/board/notice_list?page=${ pageInfo.nextPage }">›</a></li>  
			<!-- 맨 끝 페이지로 -->
                <li><a href="${ path }/board/notice_list?page=${ pageInfo.maxPage }">»</a></li>
            </ul>

        </div>

        <div class="col-4 text-right">
        </div>


        <div class="search1 row my-6">
   		  <form action="${ path }/board/notice_search" style="width: 100%;">
            <div class="col-12 row">
                <div>
	                    <select name="searchType" class="form-control1" style="font-size: 14.45px; ">
	                        <option value="noticeTitle" selected>제목</option>
	                        <option value="noticeContent">내용</option>
	                        <option value="noticeTC">제목+내용</option> 
	                    </select>
	            </div>

		        <div class="col-xs-10 col-sm-7 pl-0">
		            <div class="input-group">
		                 <input name="keyword" type="text" class="form-control1" style="font-size: 14.45px;">
		                 <span class="input-group-btn">
		                      <button id="searchBtn" class="btn btn-greyc text-nowrap" style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;">
		                                <img src="${ path }/resources/img/community/search.png" style="height: 18px;">
		                      </button>
		                 </span>
		         	</div>
		         </div>
            </div>
	      </form>  
       </div>
        

        
        
    </div>
   </div>
  </div>

</body>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>