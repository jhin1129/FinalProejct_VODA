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

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        @import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

        * {
            font-family: Pretendard,
                -apple-system, BlinkMacSystemFont,
                system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
        }

        input:focus {
            outline: none;
        }



        button:focus {
            box-shadow: none !important;
        }

        .btn-logoc {
            color: #fff;
            border-color: #495FE9;
            background-color: #495FE9;
        }

        .btn-logoc:hover {
            background-color: #0b27db !important;
            border-color: #0b27db;
            color: #fff !important;
        }

        .btn {

            transition: background 0.2s ease-in-out,
                color 0.2s ease-in-out;
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

        .table-active,
        .table-active>td,
        .table-active>th {
            background-color: rgb(235, 236, 240);
        }

        textarea {
            outline-color: rgb(235, 236, 240);
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

        .id {
            display: inline-block;
            content: "";
            margin: 0 9px;
            width: 1px;
            height: 11px;
            vertical-align: -2px;
            background: #cfcfda;
        }

        hr {
            margin: 0px;
        }
    </style>

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

    <!-- summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <title>free_brd_detail</title>

<body>


    <!-- 내용 전체 컨테이너 -->
    <div class="container mt-5">

        <div>
            <h3 style="text-align: center;  color: #000000; font-size: 17px;">문의게시판</h3>
        </div>
        <!-- 후기글 전체 -->
        <div class="mt-4" style="border: 1px solid rgb(238, 233, 233);">

            <div>
                <table class="table m-0">
                    <thead>
                        <tr>
                            <th class="table-active" style="width: 20%;">카테고리</th>
                            <td style="width: 50%;">
                            <c:choose> 
                                <c:when test="${board.bcategory== 'M'}">회원/정보관리</c:when>
                                <c:when test="${board.bcategory == 'O'}">주문/결제</c:when>
                                <c:when test="${board.bcategory == 'D'}">배송</c:when>
                                <c:when test="${board.bcategory == 'R'}">환불</c:when>
                                <c:when test="${board.bcategory == 'C'}">컨텐츠 요청</c:when>
                                <c:when test="${board.bcategory == 'E'}">기타</c:when>
                            </c:choose></td>
                            <td style="width: 15%;"></td>
                            <td style="width: 15%;"></td>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <th class="table-active" style="width: 20%;">제목</th>
                            <td style="width: 50%;">${ board.btitle }</td>
                            <td style="width: 15%;"></td>
                            <td style="width: 15%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">작성자</th>
                            <td style="width: 50%;">${ board.mid }</td>
                            <th class="table-active">작성일</th>
                            <td><fmt:formatDate value="${ board.bcreatedate }" dateStyle="long"/></td>
                        </tr>

                        <tr>
                            <th class="table-active">파일</th>
                            <td style="margin-left: 10px; text-align: left;"> 
                            	<a href="javascript:" id="qnafileDown">
                            		${ board.boriginalfilename }
                            	</a>
                            </td>
                            <td style="width: 15%;"></td>
                            <td style="width: 15%;"></td>
                        </tr>

                        <tr>
                            <td class="p-0"></td>
                            <td class="p-0"></td>
                            <td class="p-0"></td>
                            <td class="p-0"></td>
                        </tr>
                    </tbody>



                </table>
            </div>


            <!-- 이미지 -->
            <div>
                <!--    <img style="background: black; width: 100%; height: 500px;"> -->
            </div>
            <!-- 내용 -->
            <div class="my-3 px-3">
                <p style="font-size: 14.45px;">
                    ${ board.bcontent }<br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                </p>
                <c:if test="${ loginMember.m_id == board.mid || loginMember.m_authorization == 'M' }">
	                <div class="text-right mt-3">
	                    <button class="btn btn-logoc py-0"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;"
	                        onclick="location.href='${path}/board/question_board_update?no=${ board.bno }'">수정</button>
	                    <button class="btn btn-greyc py-0" id="btnDelete"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;">삭제</button>
	                </div>
	            </c:if>
            </div>


            <hr style="border-style: dotted;">
            
            
            <!-- 댓글 -->
            <div class="px-3">
                <strong class="p-1" style="color: #000000; font-size: 14.45px;">댓글</strong>

                <div id="comment">
                    <hr>
                    <div style="padding: 0px; margin:10px">
                        <strong style="color: #000000; font-size: 14.45px;">admin</strong>
                        <span class="id"></span>
                        <span class="mt-1 col p-0" style="font-size: 11px; color: #000000;">2022.09.02 05:30</span>
                        <div style="margin-top: 10px;">
                            <p style="color: #000000; font-size: 14.45px; margin-bottom: 10px;">답변드립니다~~
                            <div style="float:right; margin-top: -33px;">
                                <button class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">수정</button>
                                <button class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">삭제</button>
                            </div>
                            </p>
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="mb-3">
                    <form action="">
                        <div class="form-control" style="height: 105px; margin-top: 10px; margin-bottom: 5px;">
                            <strong class="p-1" style="color: #000000; font-size: 14.45px;">user2</strong>
                            <hr style="margin: 0px;">
                            <textarea class="p-1"
                                style="border: none; resize: none; width: 100%; color: #000000; font-size: 14.45px;"
                                placeholder="댓글을 작성해주세요"></textarea>
                        </div>
                        <div class="text-right mt-1">
                            <button class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">등록</button>
                        </div>
                    </form>

                </div>
            </div>

        </div>
        <!-- 목록버튼 -->
        <div class="text-center mt-3 mb-5">
            <button class="btn btn-greyc py-0" style="width: 80px; height: 29.05px; font-size: 0.85em;" onclick="location.href='${path}/board/question_board_list?type=QNA'">목록</button>
        </div>
    </div>
    	<script>
		$(document).ready(() => {
				$("#btnDelete").on("click", () => {
					if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
						location.replace("${ path }/board/question_board_delete?no=${ board.bno }");
					}
				})
				
				$("#qnafileDown").on("click", () => {
					location.assign("${ path }/board/question_board_detail/qnafileDown?oname=${ board.boriginalfilename }&rname=${ board.brenamedfilename }");
				});
				
				
			});
		
		function loginCheck(){
			if(${ empty loginMember }) {
				alert("로그인 후 이용해주세요");
				
				$("#commentsContent").blur();
			}
		}	
		
		
	</script>    
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>