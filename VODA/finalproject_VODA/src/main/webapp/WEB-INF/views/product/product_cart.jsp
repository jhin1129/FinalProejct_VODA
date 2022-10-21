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
                            <td><input type="checkbox" class="allCheck"></td>
                            <td colspan="2">상품정보</td>
                            <td>옵션</td>
                            <td>상품금액</td>
                            <td>배송비</td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cart" items="${ cart }">
                    <c:set var="rename" value="${ cart.prenamefile }" />
                        <tr class="cart__list__detail">
                            <td style="width: 2%;"><input type="checkbox" class="check"></td>
                            <td style="width: 13%;">
                            	<img src="${ path }/resources/uploadFiles/${ fn:substring(rename,0,22) }" style="height: 80%;">
                            </td>
                            <td style="width: 27%;"><a href="#">${ cart.pmadecompany }</a>
                                <p>${ cart.pname }</p>
                            </td>
                            <td class="cart__list__option" style="width: 27%;">
                                <p>잔여 상품 수량: ${ cart.pqtt }개</p>
                                <p>상품 주문 수량: <input id="quantitySelect" class="number_input" type="number" min="1" max="10" value="1">개</p>
                                <button class="btn btn-primary1 py-1">주문조건 추가/변경</button>
                            </td>
                            <td style="width: 15%;"><span class="price">${ cart.pprice }</span><br>
                                
                            </td>
                            <td style="width: 15%;">무료</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3">&nbsp;&nbsp;<button class="btn btn-primary2 py-1">선택상품 삭제</button>
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
    <script>
    var allCheck = document.querySelector(".allCheck");
    var list = document.querySelectorAll(".check");
    allCheck.onclick = () => {
        if(allCheck.checked){
            for(var i = 0; i < list.length; i++){
                list[i].checked = true;
            }
        } else {
            for(var i = 0; i < list.length; i++){
                list[i].checked = false;
            }
        }
    }
</script>
<script type="text/javascript">
$(document).ready(() => {
	$(".quantitySelect").on("change", (event) => {
		var quantity = $(event.target).val();
		var proPrice = $(event.target).parent().parent().next().find(".proPrice").text();
		$(event.target).parent().parent().next().next().find(".sumPrice").text(quantity * proPrice);
		getTotalPrice();
	});
	
	$("#payment").on("click", () => {
		if(${empty loginMember}){
			alert("로그인이 필요합니다.");
		} else{
			var value = $("#quantitySelect").val();
			var min = $("#quantitySelect").attr("min");
			var max = $("#quantitySelect").attr("max");
			if(value >= min && value <= max){
				location.href="${path}/product_order?pno=${product.pno}&porderqtt=" + $("#quantitySelect").val();
			} else {
				alert("구매 수량을 적절하게 입력해주세요.");
			}
		}
	});
	
	
});
</script>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>