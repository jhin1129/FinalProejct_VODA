<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!-- HEADER -->

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    @import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');
    
    * { font-family: Pretendard, 
        -apple-system, BlinkMacSystemFont, 
        system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
    }

    input:focus {
        outline: none;
    }

    button:focus {
        box-shadow: none !important;
    }

    .btn-primary {
        color: #fff;
        border-color: #495FE9;
        background-color: #495FE9;
    }

    .btn-primary:hover {
        background-color: #0b27db !important;
        border-color: #0b27db;
        color: #fff !important;
    }

    .btn {

        transition: background 0.2s ease-in-out,
                    color 0.2s ease-in-out;
    }

    .btn-light {
        background-color: #f8f9fa;
        border: #f8f9fa;
        color: #55585c;
    }

    .btn-light:hover {
        background-color: #e6e6e6 !important;
        border-color: #e6e6e6 !important;
        color: #55585c !important;
        

    }

    .table-active, .table-active>td, .table-active>th {
        background-color: rgb(235, 236, 240);
    }
</style>
<!-- <script src="${ path }/resources/js/jquery-3.6.0.min.js"></script> -->
<!-- summernote css/js -->
<script src="${ path }/resources/js/summernote-0.8.18-dist/summernote-lite.js"></script>
<link rel="stylesheet" href="${ path }/resources/css/summernote-0.8.18-dist/summernote-lite.css">
<body>
<!-- 내용 전체 컨테이너 -->
    <div class="container mt-5">

        <div>
            <h3 style="text-align: center; color: #444343; font-size: 1.5rem;">상품 등록</h3>
        </div>
        <!-- 후기글 전체 -->
		<form action="${path}/product/product_create" method="post" enctype="multipart/form-data">
        <div class="mt-5" style="border: 1px solid rgb(238, 233, 233);">
            <div>
                <table class="table m-0">
                    <thead>
                        <tr>
                            <th class="table-active" style="width: 20%;">상품명</th>
                            <td style="width: 80%;"><input type="text" name="pname" placeholder="상품명을 입력해주세요." style="width: 80%;">
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="table-active">카테고리</th>
                            <td><input type="text" name="pcategory" placeholder="상품 카테고리를 입력해주세요" style="width: 50%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">제조사</th>
                            <td><input type="text" name="pmadecompany" placeholder="제조사를 입력해주세요" style="width: 50%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">원산지</th>
                            <td><input type="text" name="pmadelocal" placeholder="원산지를 입력해주세요" style="width: 50%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">상품 전체 수량</th>
                            <td><input type="number" name="pqtt" placeholder="수량를 입력해주세요" style="width: 50%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">상품 가격</th>
                            <td><input type="number" name="pprice" placeholder="상품 가격을 입력해주세요" style="width: 50%;"></td>
                        </tr>
                        <tr>
                            <th class="table-active">File</th>
                            <td>
							<input multiple="multiple" type="file" name="multiFile" />

                                
                            </td>
                        </tr>
                    </tbody>

                </table>
            </div>


            <!-- 내용 -->
            <div class="my-2 px-2">

                <div id="summernote"></div>
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
                    $('#summernote').summernote('fontSize', 14);
                </script>

                <div class="text-right mt-2">
                    <button class="btn btn-primary py-1" style="width: 100px">Post</button>
                    <button class="btn btn-light py-1" style="width: 100px; height: 36px;">Cancle</button>
                </div>
            </div>
        </div>
        </form>

        <div class="mb-5">
        </div>
    </div>
    </body>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>