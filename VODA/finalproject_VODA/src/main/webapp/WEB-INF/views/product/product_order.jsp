<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="java.util.Date" %>
<% Date now = new Date(); %>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/product/product_order.css">
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<div class="container">
<form action="${ path }/product/order_insert" method="post" id="formid">
<input type="hidden" name="pno" value="${ product.pno }">
<input type="hidden" name="mno" value="${ loginMember.m_no }">

	<section class="cart">
		<table class="cart__list">
			
			<c:set var="rename" value="${ product.prenamefile }" />
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
							src="${ path }/resources/uploadFiles/${ fn:substring(rename,0,22) }"></td>
						<td><a href="#">${product.pmadecompany}</a>
							<p>${product.pname}</p></td>
						<td class="cart__list__option">
							<p>상품 주문 수량: 1개</p>
							<button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
						</td>
						<td><span class="price">${product.pprice}</span><br></td>
						<td>무료</td>
					</tr>
				</tbody>
				
			
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
									<input type="text" id="sample6_postcode" readonly="readonly">
									<input type="hidden" name="receiverZipcode"> 
									<span id="receiverZipcodeText" class="old_post_code"></span>
									<button class="btn btn-search py-1" onclick="sample6_execDaumPostcode()">우편번호검색</button>
								</div>
								<div class="address_input">
									<input type="text" id="sample6_address" readonly="readonly">
									<input type="text" id="sample6_detailAddress">
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
							<td><strong id="totalGoodsPrice" class="order_payment_sum">${product.pprice}원</strong>
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
								<strong id="totalSettlePrice" class="order_payment_sum">${product.pprice}</strong>원
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
							<button type="button" class="btn btn-primary py-1" onclick="requestPay()">결제하기</button>
						</div>
					</div>
	</section>
	</form>
</div>
<script>   

function requestPay() {
	var IMP = window.IMP; // 생략 가능
    IMP.init("imp63887533"); // 예: imp00000000
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "kakaopay",
        merchant_uid:  new Date().getTime(),
        name: "${product.pname}",
        amount: ${product.pprice},
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
            
            document.getElementById('formid').submit();
			
        } else {
        	var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        alert(msg);
    });
  }
</script>
<!-- 주소 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />