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
    
    <!-- datePicker CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_datePicker.css">
    
    <!-- datePicker JS -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${path}/resources/js/mypage/mypage_datePicker.js" ></script>
	
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
                                <h5 style="font-weight: 600;" >주문/ 배송 조회</h5>
                                <hr>
                            </form>
                        </div>
                    </div>

                    <div class="mb-2 text-right">
                        <label for="">기간 선택&nbsp; : &nbsp;</label>
                        <input type="text" class="datepicker" id="datepicker1" >
                        ~
                        <input type="text" class="datepicker" id="datepicker2" >
                        <span class="input-group-btn" >
                            <button id="searchBtn" class="btn btn-light text-nowrap" ><img src="${path}/resources/img/mypage/search.png" style="height: 23px;"></button>
                        </span>
                    </div>


                    <!-- 두번째 행 -->
                    
                    <div class="mb-5">
                        <table class="mytable">
                            <thead class="table_thead">
                                <tr>
                                    <th class="table_th" style="width: 10%;">주문번호</th>
                                    <th class="table_th" colspan="2">상품정보</th>
                                    <th class="table_th" style="width: 10%;">금액</th>
                                    <th class="table_th" style="width: 10%;">주문일자</th>
                                    <th class="table_th" style="width: 10%;">주문상태</th>
                                    <th class="table_th" style="width: 10%;">환불</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="border-bottom: 1px solid lightgrey">
                                    <td class="table_td">11111111</td>
                                    <td class="table_td" style="width: 15%;"><img class="my-1" style="height: 80px; width: 80px;" src="https://shop1.daumcdn.net/thumb/R500x500/?fname=http%3A%2F%2Fshop1.daumcdn.net%2Fshophow%2Fp%2FL14957584354.jpg%3Fut%3D20211005180923"></td>
                                    <td class="table_td" style="text-align: left;">카카오프렌즈 라이언 인형 포근포근쿠션 라이언굿즈 <br>외 2종</td>
                                    <td class="table_td">100000원</td>
                                    <td class="table_td">22-09-27</td>
                                    <td class="table_td">배송준비중</td>
                                    <td class="table_td"><button>환불</button></td>
                                </tr>
                                <tr style="border-bottom: 1px solid lightgrey">
                                    <td class="table_td">11111112</td>
                                    <td class="table_td"><img class="my-1" style="height: 80px; width: 80px;" src="https://sitem.ssgcdn.com/15/71/18/item/1000482187115_i1_500.jpg" alt="magic mouse"></td>
                                    <td class="table_td" style="text-align: left;">짱구는 식기 세트 그릇 굿즈 못말려 머그컵 귀여운 수입 밥그릇 짱구<br>외 2종</td>
                                    <td class="table_td">100000원</td>
                                    <td class="table_td">22-09-27</td>
                                    <td class="table_td">배송준비중</td>
                                    <td class="table_td"><button>환불</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                        
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <ul class="pagination justify-content-center">
                            <li class="page-item disabled" >
                                <a class="page-link" href="#" >&laquo;</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#" style="background-color: #495FE9;">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" style="color: #777777;" >2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" style="color: #777777;" >3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" style="color: #777777;" >4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" style="color: #777777;" >5</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#" style="color: #777777;" >&raquo;</a>
                            </li>
                            </ul>
                        </div>
            
                        <div class="col-4">
                            
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