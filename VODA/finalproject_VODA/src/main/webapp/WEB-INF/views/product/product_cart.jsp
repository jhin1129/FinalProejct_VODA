<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/product/product_cart.css">
  <div class="container">
        <section class="cart">
            <div class="cart__information">
                <ul>
                    <li>장바구니 상품은 최대 30일간 저장됩니다.</li>
                    <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                    <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
                </ul>
            </div>
            <table class="cart__list">
                <form>
                    <thead>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td colspan="2">상품정보</td>
                            <td>옵션</td>
                            <td>상품금액</td>
                            <td>배송비</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart__list__detail">
                            <td><input type="checkbox"></td>
                            <td><img src="https://shop1.daumcdn.net/thumb/R500x500/?fname=http%3A%2F%2Fshop1.daumcdn.net%2Fshophow%2Fp%2FL14957584354.jpg%3Fut%3D20211005180923"></td>
                            <td><a href="#">카카오 공식 브랜드스토어</a>
                                <p>카카오프렌즈 라이언 인형 포근포근쿠션 라이언굿즈</p>
                            </td>
                            <td class="cart__list__option">
                                <p>잔여 상품 수량: 10개</p>
                                <p>상품 주문 수량: <input class="number_input" type="number" min="1" max="10" value="1">개</p>
                                <button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
                            </td>
                            <td><span class="price">116,620원</span><br>
                                
                            </td>
                            <td>무료</td>
                        </tr>
                        <tr class="cart__list__detail">
                            <td style="width: 2%;"><input type="checkbox"></td>
                            <td style="width: 13%;">
                                <img src="https://sitem.ssgcdn.com/15/71/18/item/1000482187115_i1_500.jpg" alt="magic mouse">
                            </td>
                            <td style="width: 27%;"><a href="#">신세계몰</a>
                                <p>짱구는 식기 세트 그릇 굿즈 못말려 머그컵 귀여운 수입 밥그릇 짱구</p>
                            </td>
                            <td class="cart__list__option" style="width: 27%;">
                                <p>잔여 상품 수량: 30개</p>
                                <p>상품 주문 수량: <input class="number_input" type="number" min="1" max="30" value="1">개</p>
                                <button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
                            </td>
                            <td style="width: 15%;"><span class="price">88,900원</span><br>
                                
                            </td>
                            <td style="width: 15%;">무료</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3"><input type="checkbox"> &nbsp;&nbsp;<button class="btn btn-primary2 py-1">선택상품 삭제</button>
                                <button class="btn btn-primary2 py-1">전체상품 삭제</button>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tfoot>
                </form>
            </table>
            <div class="cart__mainbtns">
                <button class="btn btn-back py-1">쇼핑 계속하기</button>
                <button class="btn btn-primary py-1">주문하기</button>
            </div>
        </section>
    </div>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>