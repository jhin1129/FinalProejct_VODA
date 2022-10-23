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
        
        .btn-logoc:focus {
        	box-shadow: none;
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
            padding: 10px;
        }

        .table th {
            padding-left: 13px;
        }

        .note-placeholder {
            font-size: 14.45px;
        }

        .dropdown-toggle::after {
            display: none;

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

    <title>QNA 등록페이지</title>



<body>


    <!-- 내용 전체 컨테이너 -->
    <div class="container mt-5">

        <div>
            <h3 style="text-align: center;  color: #000000; font-size: 17px;">문의게시판</h3>
        </div>
        <!-- 후기글 전체 -->
        <div class="mt-4" style="border: 1px solid rgb(238, 233, 233);">		
        	
        	<form action="${ path }/board/question_board_crud" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="no" value="${ board.bno }">
				<input type="hidden" name="originalFileName" value="${ board.boriginalfilename }">
				<input type="hidden" name="renamedFileName" value="${ board.brenamedfilename }">
				<input type="hidden" name="bstatus" value="Y">
				<input type="hidden" name="btype" value="QNA">
				<input type="hidden" name="bcreatedate" value="${ board.bcreatedate }">
           <div>
                <table class="table m-0">
                    <thead>
                        <tr>
                            <th class="table-active" style="width: 20%;">카테고리</th>
                            <td class="p-0" style="width: 80%;">
                                <select name="bcategory" 
                                    style="width: 98%; height: 25px; font-size: 14.45px; margin-top: 8.4px; margin: 8px;">
                                    <option value="M" >회원/정보관리</option>
                                    <option value="O" >주문/결제</option>
                                    <option value="D" >배송</option>
                                    <option value="R" >환불</option>
                                    <option value="C" >컨텐츠 요청</option>
                                    <option value="E" >기타</option>
                                </select>
                            </td>
                        </tr>
                    </thead>
                    
                    
                    <tbody>
                        <tr>
                            <th class="table-active" style="width: 20%;">제목</th>

                            <td class="p-0" style="width: 80%;"><input type="text" name="btitle" placeholder="제목을 입력해주세요."
                                    style="width: 98%; height: 25px; font-size: 14.45px; margin-top: 8.4px; margin: 8px;">
                            </td>
                        </tr>

                        <tr>
                            <th class="table-active">작성자</th>
                            <td style="margin-left: 10px; text-align: left;"><input type="hidden" name="mid" value="${ loginMember.m_id }">${ loginMember.m_id }</td>
                        </tr>

                        <tr>
                            <th class="table-active">파일</th>
                            <td class="p-0"  style="margin-left: 10px; text-align: left;">
                                 &nbsp;&nbsp;<input type="file" name="upfile" style="font-size: 14.45px; padding-left: 0px; padding-top: 10.2px; padding-bottom: 10.2px; margin: 0px;" >
                            </td>
                        </tr>
                    </tbody>

                </table>
            </div>


            <!-- 내용 -->
            <div class="my-2 px-2">

                <textarea id="summernote" name="bcontent"></textarea>

                <script>
                    $('#summernote').summernote({
                        placeholder: '내용을 입력해주세요',
                        focus: true,
                        height: 400,
                        toolbar: [
                            // [groupName, [list of button]]
                            ['fontname', ['fontname']],
                            ['fontsize', ['fontsize']],
                            ['color', ['color']],
                            ['style', ['bold', 'italic', 'underline', 'clear']],
                            ['para', ['ul', 'ol', 'paragraph']],
                            ['insert', ['picture', 'video']],
                            ['height', ['height']]
                        ],
                        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체', '바탕체'],
                        // 추가한 폰트사이즈
                        fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
                        // 줄간격
                        lineHeights: ['0.2', '0.3', '0.4', '0.5', '0.6', '0.8', '1.0', '1.2', '1.4', '1.5', '2.0', '3.0']
                    });

                    $('#summernote').summernote('fontSize', 14.45);
                </script>

                <div class="text-right mt-2">
	                <input class="btn btn-logoc py-0" type="submit"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;" value="등록">
	                <input class="btn btn-greyc py-0" id="btnCancel" type="button"
	                        style="width: 80px; height: 29.05px; font-size: 14.45px;" value="취소" onclick="history.back()">
                </div>
            </div>
            </form>
        </div>

        <div class="mb-5 row my-5">
        </div>
    </div>
    
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

