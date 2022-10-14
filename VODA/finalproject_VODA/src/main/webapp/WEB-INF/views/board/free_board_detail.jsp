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
            <h3 style="text-align: center;  color: #000000; font-size: 17px;">자유게시판</h3>
        </div>
        <!-- 후기글 전체 -->
        <div class="mt-4" style="border: 1px solid rgb(238, 233, 233);">

            <div>
                <table class="table m-0">
                    <thead>
                        <tr>
                            <th class="table-active" style="width: 20%;">제목</th>
                            <td style="width: 50%;">${ board.btitle }</td>
                            <td style="width: 15%;"></td>
                            <td style="width: 15%;"></td>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <th class="table-active">작성자</th>
                            <td style="width: 50%;">${ board.mid }</td>
                            <th class="table-active">작성일</th>
                            <td><fmt:formatDate value="${ board.bcreatedate }" dateStyle="long"/></td>
                        </tr>

                        <tr>
                            <th class="table-active">파일</th>
                            <td></td>
                            <th class="table-active">조회수</th>
                            <td>${ board.bview }</td>
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
                <c:if test="${ loginMember.m_authorization == 'M' }">
	                <div class="text-right mt-3">
	                    <button class="btn btn-logoc py-0"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;"
	                        onclick="location.href='${path}/board/free_board_update?no=${ board.bno }">수정</button>
	                    <button class="btn btn-greyc py-0" id="btnDelete"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;">삭제</button>
	                </div>
	            </c:if>
            </div>


            <hr style="border-style: dotted;">
            
            
            <!-- 댓글 -->
            <div id="comment-container" class="px-3">
                <strong class="p-1" style="color: #000000; font-size: 14.45px;">댓글</strong>
					<div id="comment-list">
                	<c:forEach var="comments" items="${ commentsList }">
                <div id="comment">
                	    <input id="commentsNo" type="hidden" value="${ comments.cmno}">
	                	<input id="commentsWriterNo" type="hidden" value="${comments.cmwriterno }" >
                    <hr>
                    <div style="padding: 0px; margin:10px">
                        <strong style="color: #000000; font-size: 14.45px;">${comments.cmwriterid }</strong>
                        <span class="id"></span>
                        <span class="mt-1 col p-0" style="font-size: 11px; color: #000000;">${comments.cmdate }</span>
                        <c:if test='${ loginMember.m_no == comments.cmwriterno }'>
	                        <div style="margin-top: 10px;">
	                            <p  class="commentsContent" style="color: #000000; font-size: 14.45px; margin-bottom: 10px;">${comments.cmcontent }
		                            <div style="float:right; margin-top: -33px;">
		                                <button onclick="updateComments(event)" class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">수정</button>
		                                <button onclick="deleteComments(event)" class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">삭제</button>
		                            </div>
	                            </p>
	                        </div>
                        </c:if>
                    </div>
                    
                    <hr>
                </div>

                <div class="mb-3 comment-editor">
                    <form action="">
                        <div class="form-control" style="height: 105px; margin-top: 10px; margin-bottom: 5px;">
                            <strong class="p-1 commentsWriterId" style="color: #000000; font-size: 14.45px;"></strong>
                            <hr style="margin: 0px;">
                            <textarea id="updateCommentsContent" class="p-1"
                                style="border: none; resize: none; width: 100%; color: #000000; font-size: 14.45px;"
                                placeholder="댓글을 작성해주세요"></textarea>
                        </div>

                        <div class="text-right mt-1">
                            <button  onclick="updateCommentsCancel(event)" class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">취소</button>
                            <button  onclick="updateCommentsCommit(event)" class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">작성</button>
                        </div>
                        
                    </form>
					
					</c:forEach>
                      </div>

                </div>
                
                   <div  id="comment-editor" class="mb-3">
                    <form action="">
                        <div class="form-control" style="height: 105px; margin-top: 10px; margin-bottom: 5px;">
                            <strong id="loginId" class="p-1 cmwriterid" style="color: #000000; font-size: 14.45px;">${member.m_id }</strong>
                            <hr style="margin: 0px;">
                            <textarea id="commentsContent"  onfocus="loginCheck();"  class="p-1"
                                style="border: none; resize: none; width: 100%; color: #000000; font-size: 14.45px;"
                                placeholder="댓글을 작성해주세요"></textarea>
                        </div>
                        <div class="text-right mt-1">
                            <button  onclick="writeComments();" class="btn btn-greyc py-0" style="font-size: 13px; height: 23px;">작성</button>
                        </div>
                    </form>
                
            </div>

        </div>
        <!-- 목록버튼 -->
        <div class="text-center mt-3 mb-5">
            <button class="btn btn-greyc py-0" style="width: 80px; height: 29.05px; font-size: 0.85em;" onclick="location.href='${path}/board/free_board_list?type=FREE'">목록</button>
        </div>
    </div>
    	<script>
		$(document).ready(() => {
				$("#btnDelete").on("click", () => {
					if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
						location.replace("${ path }/board/free_board_delete?no=${ board.bno }");
					}
				})
				
				$("#fileDown").on("click", () => {
					location.assign("${ path }/board/fileDown?oname=${ board.boriginalfilename }&rname=${ board.brenamedfilename }");
				});
				
				
			});
		
		function loginCheck(){
			if(${ empty loginMember }) {
				alert("로그인 후 이용해주세요");
				
				$("#commentsContent").blur();
			}
		}	
		
		
		function writeComments() {
			
			if($("#commentsContent").val().trim()==""){
				alert("내용을 입력해주세요");
			} else{
				$.ajax({
					url: "${path}/board/commentswrite",
					type: "POST",
					dataType: "json",
					data: {
						"brdNo" : ${board.bno},
						"commentsContent" : $("#commentsContent").val()
					},
					success: function(data) {
						let html = "<div class='comment'>";
						html += "<input id='commentsNo' type='hidden' value="+ data.cmno + ">";
						html += "<input id='commentsWriterNo' type='hidden' value=" + data.cmwriterno +">";
						html += "<strong style='color: #000000; font-size: 14.45px;'>"+data.cmwriterid+"</strong>";
						html += "<p class='mt-2 col p-0' style='font-size: 11px;'>"+ data.cmdate + "</p>";
						html += "<div style='margin-top: 10px;''>";
						html += "<p  class='commentsContent' style='color: #000000; font-size: 14.45px; margin-bottom: 10px;''>"+data.cmcontent+"</p>";
						html += "<div style='float:right; margin-top: -33px;'>";
						html += "<button onclick='updateComments(event)' class='btn btn-greyc py-0' style='font-size: 13px; height: 23px;''>수정</button>";
						html += "<button onclick='deleteComments(event)' class='btn btn-greyc py-0' style='font-size: 13px; height: 23px;''>삭제</button></div></p></div></div><hr></div>";
						html += "<div class='mb-3 comment-editor'>";
						
						/* 여기까지 함*/
						html += "<div class='form-control' style='height: 85px;'>";
						html += "<p class='commentsWriterId' style='font-weight: bold; margin: 0px;'></p>";
						html += "<hr style='margin: 0px;'>";
						html += "<textarea id='updateCommentsContent' style='border: none; resize: none; width: 100%;' placeholder='댓글을 작성해주세요'></textarea>";
						html += "</div>";
						html += "<div class='text-right mt-1'>";
						html += "<button onclick='updateCommentsCancel(event)' class='btn btn-light py-0'>취소</button>";
						html += "<button onclick='updateCommentsCommit(event)' class='btn btn-light py-0'>작성</button>";
						html += "</div></div>";
						
						$("#comment-list").append(html);
						$("#commentsContent").val('');
					},
					error: (error) => {
						alert("댓글 작성 실패");
					}
				});
			}
			
		}
		
		function deleteComments(event) {
			$.ajax({
				url: "${path}/board/commentsdelete",
				type: "POST",
				dataType: "json",
				data: {
					"commentsNo" : $(event.target).parent().parent().siblings("#commentsNo").val(),
					"commentsWriterNo" : $(event.target).parent().parent().siblings("#commentsWriterNo").val()
				},
				success: function() {
					$(event.target).parents(".comment").remove();
				},
				error: (error) => {
					alert("댓글 삭제 실패");
				}
			});
		}
		
		function updateComments(event) {
			$(event.target).parents(".comment").hide();
			$(event.target).parents(".comment").next().show();
			$(event.target).parents(".comment").next().find("#updateCommentsContent").val($(event.target).parent().parent().prev().text());
			$(event.target).parents(".comment").next().find(".commentsWriterId").text($(event.target).parent().parent().prev().prev().text());
		}
		
		function updateCommentsCancel(event) {
			$(event.target).parent().parent().hide();
			$(event.target).parent().parent().prev().show();
		}
		
		function updateCommentsCommit(event){
			$.ajax({
				url: "${path}/board/commentsupdate",
				type: "POST",
				dataType: "json",
				data: {
					"commentsNo" : $(event.target).parent().parent().prev().find("#commentsNo").val(),
					"commentsContent" : $(event.target).parent().prev().find("#updateCommentsContent").val(),
					"commentsWriterNo" : $(event.target).parent().parent().prev().find("#commentsWriterNo").val()
				},
				success: function() {
					$(event.target).parent().parent().hide();
					$(event.target).parent().parent().prev().show();
					$(event.target).parent().parent().prev().find(".commentsContent").text($(event.target).parent().prev().find("#updateCommentsContent").val());
				},
				error: (error) => {
					alert("댓글 수정 실패");
				}
				
			});
		}
	</script>    
		</script>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>