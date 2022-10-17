<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/product/product_order.css">
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>   
function requestPay() {
	var IMP = window.IMP; // 생략 가능
    IMP.init("imp63887533"); // 예: imp00000000
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "card",
        merchant_uid: "ORD20180131-0000011",
        name: "노르웨이 회전 의자",
        amount: 64900,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
        if (rsp.success) {
        	var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
        } else {
        	var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });
  }
</script>
<div class="container">
	<section class="cart">
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
						<td><img
							src="https://shop1.daumcdn.net/thumb/R500x500/?fname=http%3A%2F%2Fshop1.daumcdn.net%2Fshophow%2Fp%2FL14957584354.jpg%3Fut%3D20211005180923"></td>
						<td><a href="#">카카오 공식 브랜드스토어</a>
							<p>카카오프렌즈 라이언 인형 포근포근쿠션 라이언굿즈</p></td>
						<td class="cart__list__option">
							<p>상품 주문 수량: 1개</p>
							<button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
						</td>
						<td><span class="price">116,620원</span><br></td>
						<td>무료</td>
					</tr>
					<tr class="cart__list__detail">
						<td style="width: 2%;"><input type="checkbox"></td>
						<td style="width: 13%;"><img
							src="https://sitem.ssgcdn.com/15/71/18/item/1000482187115_i1_500.jpg"
							alt="magic mouse"></td>
						<td style="width: 27%;"><a href="#">신세계몰</a>
							<p>짱구는 식기 세트 그릇 굿즈 못말려 머그컵 귀여운 수입 밥그릇 짱구</p></td>
						<td class="cart__list__option" style="width: 27%;">
							<p>상품 주문 수량: 1개</p>
							<button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
						</td>
						<td style="width: 15%;"><span class="price">88,900원</span><br>

						</td>
						<td style="width: 15%;">무료</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="3"><input type="checkbox">&nbsp;&nbsp;
							<button class="btn btn-primary2 py-1">선택상품 삭제</button></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tfoot>
			</form>
		</table>

		<br>
		<br>
		<div class="order_info">
			<div class="order_zone_tit">
				<h4>주문자 정보</h4>
			</div>
			<div class="order_table_type">
				<table class="table_left">
					<colgroup>
						<col style="width: 15%;">
						<col style="width: 85%;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><span class="important">주문하시는 분</span></th>
							<td><input type="text" name="orderName" id="orderName"
								value="" data-pattern="gdEngKor" maxlength="20"></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">주소</span></th>
							<td><input type="text" name="orderAddress" id="orderAddress"
								value="" data-pattern="gdEngKor" maxlength="300"></td>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<td><input type="text" id="phoneNum" name="orderPhone"
								value="" maxlength="20"></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">휴대폰 번호</span></th>
							<td><input type="text" id="mobileNum" name="orderCellPhone"
								value="" maxlength="20"></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">이메일</span></th>
							<td class="member_email"><input type="text"
								name="orderEmail" value=""></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- //order_info -->
		<br>
		<br>
		<div class="delivery_info">
			<div class="order_zone_tit">
				<h4>배송정보</h4>
			</div>

			<div class="order_table_type shipping_info">
				<table class="table_left shipping_info_table">
					<colgroup>
						<col style="width: 15%;">
						<col style="width: 85%;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><span class="important">받으실분</span></th>
							<td><input type="text" name="receiverName"
								data-pattern="gdEngKor" maxlength="20"></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">받으실 곳</span></th>
							<td class="member_address">
								<div class="address_postcode">
									<input type="text" name="receiverZonecode" readonly="readonly">
									<input type="hidden" name="receiverZipcode"> <span
										id="receiverZipcodeText" class="old_post_code"></span>
									<button class="btn btn-search py-1">우편번호검색</button>
								</div>
								<div class="address_input">
									<input type="text" name="receiverAddress" readonly="readonly">
									<input type="text" name="receiverAddressSub">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<td><input type="text" id="receiverPhone"
								name="receiverPhone"></td>
						</tr>
						<tr>
							<th scope="row"><span class="important">휴대폰 번호</span></th>
							<td><input type="text" id="receiverCellPhone"
								name="receiverCellPhone"></td>
						</tr>
						<tr>
							<th scope="row">남기실 말씀</th>
							<td class="td_last_say"><input type="text" name="orderMemo"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- //delivery_info -->

		<!-- //addition_info -->
		<br>
		<br>
		<div class="payment_info">
			<div class="order_zone_tit">
				<h4>결제정보</h4>
			</div>

			<div class="order_table_type">
				<table class="table_left">
					<colgroup>
						<col style="width: 15%;">
						<col style="width: 85%;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">상품 합계 금액</th>
							<td><strong id="totalGoodsPrice" class="order_payment_sum">1,490,000원</strong>
							</td>
						</tr>
						<tr>
							<th scope="row">배송비</th>
							<td><span id="totalDeliveryCharge">0</span>원 <span
								class="multi_shipping_text"></span></td>
						</tr>
						<tr>
							<th scope="row">최종 결제 금액</th>
							<td><input type="hidden" name="settlePrice"
								value="1,490,000"> <input type="hidden"
								name="overseasSettlePrice" value="0"> <input
								type="hidden" name="overseasSettleCurrency" value="KRW">
								<strong id="totalSettlePrice" class="order_payment_sum">1,490,000</strong>원
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- //payment_info -->
		<br>
		<div class="payment_progress">
			<div class="order_zone_tit">
				<h4>결제수단 선택 / 결제</h4>
			</div>

			<div class="payment_progress_list">
				<div class="js_pay_content">


					<!-- N : 일반결제 시작 -->
					<div id="settlekind_general" class="general_payment">
						<dl>
							<dt>일반결제</dt>
							<dd>
								<div class="form_element">
									<ul class="payment_progress_select">

										<oi id="settlekindType_pc"> <input type="radio"
											id="settleKind_pc" name="settleKind" value="pc"> <label
											for="settleKind_pc" class="choice_s">신용카드</label> </oi>
										<oi id="settlekindType_pb"> <input type="radio"
											id="settleKind_pb" name="settleKind" value="pb"> <label
											for="settleKind_pb" class="choice_s">계좌이체</label> </oi>
										<oi id="settlekindType_pv"> <input type="radio"
											id="settleKind_pv" name="settleKind" value="pv"> <label
											for="settleKind_pv" class="choice_s">가상계좌</label> </oi>
										<oi id="settlekindType_ph"> <input type="radio"
											id="settleKind_ph" name="settleKind" value="ph"> <label
											for="settleKind_ph" class="choice_s">휴대폰결제</label> </oi>
									</ul>
								</div>

								<!-- N : 무통장입금 -->

								<!-- //pay_bankbook_box -->
								<!-- 신용카드 컨텐츠 -->
								<div class="card" id="settlekind_general_pc"
									style="display: none;"></div>
								<!-- //신용카드 컨텐츠 -->
								<!-- 계좌이체 컨텐츠 -->
								<div class="account-bank" id="settlekind_general_pb"
									style="display: none;"></div>
								<!-- //계좌이체 컨텐츠 -->
								<!-- 가상계좌 컨텐츠 -->
								<div class="virtual-bank" id="settlekind_general_pv"
									style="display: none;"></div>
								<!-- //가상계좌 컨텐츠 -->
								<!-- 휴대폰 컨텐츠 -->
								<div class="cellphone" id="settlekind_general_ph"
									style="display: none;"></div>
								<!-- //휴대폰 컨텐츠 -->
							</dd>
						</dl>
					</div>
					<!-- //general_payment -->
					<!-- N : 일반결제 끝 -->
					<!-- //payment_progress_list -->
					<div class="payment_final">
						<div class="payment_final_total">
							<hr>
							<dl>
								<dt>최종 결제 금액</dt>
								<dd>
									<span><strong id="totalSettlePriceView">82,000</strong>원</span>
								</dd>
							</dl>
							<hr>
						</div>
						<div class="payment_final_check">
							<div class="form_element">
								<input type="checkbox" id="termAgree_orderCheck" class="require">
								<label for="termAgree_orderCheck" class="check_s"><em><b>(필수)</b>
										구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</em></label>
							</div>
						</div>
						<hr>
						<div class="cart__mainbtns">
							<button class="btn btn-back py-1">이전페이지</button>
							<button class="btn btn-primary py-1" onclick="requestPay()">결제하기</button>
						</div>
					</div>
	</section>
</div>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />