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
                                <h5 style="font-weight: 600;" >주문 상세 조회</h5>
                                <hr>
                            </form>
                        </div>
                    </div>

                    <div class="mb-4" style="margin-top: 16px;">
                        <span class="tabletitle">주문 상품 내역</span>
                        <table class="mytable" style="margin-top: 15px;">
                            <thead class="table_thead">
                                <tr>
                                    <th class="table_th" style="width: 10%;">주문번호</th>
                                    <th class="table_th" colspan="2">상품정보</th>
                                    <th class="table_th" style="width: 10%;">금액</th>
                                    <th class="table_th" style="width: 10%;">주문일자</th>
                                    <th class="table_th" style="width: 10%;">주문상태</th>
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
                                </tr>
                                <tr style="border-bottom: 1px solid lightgrey">
                                    <td class="table_td">11111112</td>
                                    <td class="table_td"><img class="my-1" style="height: 80px; width: 80px;" src="https://sitem.ssgcdn.com/15/71/18/item/1000482187115_i1_500.jpg" alt="magic mouse"></td>
                                    <td class="table_td" style="text-align: left;">짱구는 식기 세트 그릇 굿즈 못말려 머그컵 귀여운 수입 밥그릇 짱구<br>외 2종</td>
                                    <td class="table_td">100000원</td>
                                    <td class="table_td">22-09-27</td>
                                    <td class="table_td">배송준비중</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="row mb-2">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <span class="tabletitle">주문자 정보</span>
                            </form>
                        </div>
                    </div>
                    
                    <div>
                        <table class="table" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th class="table_th" style="width: 30%; padding-top: 18px;">주문자 이름</th>
                                <td class="table_td" style="padding-top: 18px;">이름</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">주소</th>
                                <td class="table_td" style="padding-top: 18px;">주소</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">전화번호</th>
                                <td class="table_td" style="padding-top: 18px;">02-131-4646</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">휴대폰번호</th>
                                <td class="table_td" style="padding-top: 18px;">010-1234-2567</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">이메일</th>
                                <td class="table_td" style="padding-top: 18px;">12345678@naver.com</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="row mb-2">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <span class="tabletitle">배송 정보</span>
                            </form>
                        </div>
                    </div>
                    
                    <div>
                        <table class="table" style="width: 100%;">
                            <tbody>
                            <tr>
                                <th class="table_th" style="width: 30%; padding-top: 18px">받으실 분</th>
                                <td class="table_td" style="padding-top: 18px;">이름</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">배송 주소</th>
                                <td class="table_td" style="padding-top: 18px;">주소</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">전화번호</th>
                                <td class="table_td" style="padding-top: 18px;">02-131-4646</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">휴대폰번호</th>
                                <td class="table_td" style="padding-top: 18px;">010-1234-2567</td>
                            </tr>
                            <tr>
                                <th class="table_th" style="padding-top: 18px;">남기실 말씀</th>
                                <td class="table_td" style="padding-top: 18px;">~</td>
                            </tr>
                            </tbody>
                        </table>
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