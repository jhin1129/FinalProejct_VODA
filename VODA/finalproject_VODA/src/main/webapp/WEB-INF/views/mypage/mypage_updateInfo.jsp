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
    
    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/common/btn.css">
	
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
                                <h5 style="font-weight: 600; margin-bottom: 17px;">개인 정보 변경</h5>
                                <hr>
                            </form>
                        </div>
                    </div>
                    <form action="">

                        <div class="mt-3">
                            <p class="mySideMenuTitle">기본 정보</p>
                        </div>
                        
                        <!-- 두번째 행 -->
                        <div class="row">
                        <div class="col-sm-12">
                            <table class="table infotable" style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <th class="infotable_th" style="width: 27%; padding-top: 16px;">아이디</th>
                                        <td class="infotable_td" style="padding-top: 16px;">아이디</td>
                                    </tr>
                                    <tr>
                                        <th class="infotable_th" style="padding-top: 16px;">비밀번호</th>
                                        <td class="infotable_td">
                                            <button type="button" class="btn btn-logoC" style="font-size: 0.85em; width: 90px; height: 27.67px; padding-top: 5px; padding-left: 5px; padding-right: 5px;">비밀번호 변경</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="infotable_th" style="padding-top: 16px;">이름</th>
                                        <td class="infotable_td">
                                            <input type="text" maxlength="30" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="infotable_th" style="padding-top: 16px;">이메일</th>
                                        <td class="infotable_td">
                                            <input type="text" name="email" id="email" value="" tabindex="-1" required>
                                            <select id="emailDomain" name="emailDomain" class="chosen_select">
                                                <option value="self" selected="selected">직접입력</option>
                                                <option value="naver.com">naver.com</option>
                                                <option value="hanmail.net">hanmail.net</option>
                                                <option value="daum.net">daum.net</option>
                                                <option value="nate.com">nate.com</option>
                                                <option value="hotmail.com">hotmail.com</option>
                                                <option value="gmail.com">gmail.com</option>
                                                <option value="icloud.com">icloud.com</option>
                                            </select>
                                            <label for="" id="email_chk"></label>
                                            <button type="button" class="btn btn-logoC" style="font-size: 0.85em; width: 90px; height: 27.67px; padding-top: 5px; padding-left: 5px; padding-right: 5px; margin-top: -3px; margin-left: -4px;">인증하기</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="infotable_th" style="padding-top: 16px;">휴대폰번호</th>
                                        <td class="infotable_td">
                                            <input type="text" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="" required>
                                        </td>
                                    </tr>
                                    <tr style="border-bottom: 1px solid lightgrey;">
                                        <th class="infotable_th" style="padding-top: 52px;">주소</th>
                                        <td class="infotable_td">
                                            <div class="address_postcode">
                                                <input type="text" name="zonecode" readonly="readonly" value="" required style="font-size: 0.85em; height: 27.66px; margin-bottom: 10px;" >
                                                <button type="button" id="btnPostcode" class="btn_post_search btn btn-logoC" style="font-size: 0.7em; width: 90px; height: 27.67px; margin-top: 0px; padding-top: 5px; padding-left: 5px; padding-right: 5px;">우편번호 검색</button>
                                                <input type="hidden" name="zipcode" value="">
                                            </div>
                                            <div class="address_input">
                                                <div class="member_warning">
                                                    <input type="text" id="address" name="address" readonly="readonly" value="" required style="font-size: 0.85em; width: 294px; height: 27.66px; margin-bottom: 10px;">             
                                                </div>
                                                <div class="member_warning js_address_sub">
                                                    <input type="text" id="addressSub" name="addressSub" value="" style="width: 294px; height: 27.66px; font-size: 0.85em;">
                                                    <label for="" id="address_chk"></label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <div class="mt-3">
                        <p class="mySideMenuTitle">부가 정보</p>
                    </div>
                    
                    <!-- 두번째 행 -->
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table infotable" style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <th class="infotable_th" style="width: 27%; padding-top: 16px;">성별</th>
                                        <td class="infotable_td" style="padding-top: 17px; padding-bottom: 7px;">
                                            <input type="radio" name="sexuality" id="man" value="man">
                                            <label for="men" style="margin-top: -10px;">남자</label>
                                            <input type="radio" name="sexuality" id="woman" value="woman">
                                            <label for="men" style="margin-top: -10px;">여자</label>
                                            <input type="radio" name="sexuality" id="none" value="none">
                                            <label for="men" style="margin-top: -10px;">선택 안함</label>
                                        </td>
                                    </tr>
                                    <tr style="border-bottom: 1px solid lightgrey;">
                                        <th class="infotable_th" style="padding-top: 16px;">생년월일</th>
                                        <td class="infotable_td">
                                            <div style="flex: 1 1 0%">
                                                <div class="birth1" style="width: 200px; height: 28px;">
                                                        <input data-testid="input-box" name="birthYear" maxlength='4'
                                                        placeholder="YYYY" type="text" id="css-birth1" style="height:25px;">
                                                    <span class="birth3">
                                                    </span>
                                                        <input data-testid="input-box" name="birthMonth" maxlength='2'
                                                        placeholder="MM" type="text" id="css-birth2" style="height:25px;">
                                                    <span class="birth3">
                                                    </span>
                                                        <input data-testid="input-box" name="birthMonth" maxlength='2'
                                                        placeholder="DD" type="text" id="css-birth2" style="height:25px;">
                                                </div>    
                                            </div>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- 행 시작 -->
                    <div class="text-center">
                        <button class="btn btn-logoC">수정하기</button>
                    </div>
                </form>
                    
                    <!-- 행 끝 -->

                </div>
                <!-- 컨테이너 끝 -->
            </div>
            <!-- 오른쪽 그리드 끝 -->
        </div>
    </div>
    <!-- 내용 전체 컨테이너 끝 -->
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>