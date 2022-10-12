<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>enroll</title>
	
	<!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!--BootStrap JS
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- join CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/member/enroll.css">
    
    <!-- 
    <script src="${ path }/js/jquery-3.6.0.min.js"></script>
     -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    
    
</head>
<body>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

       <div class="container">
            <div class="join_base_wrap">
                <div class="member_tit">
                    <h2>회원가입</h2>
                </div>    
            </div> 
        </div>
        
        <form name="memberEnrollForm" action="${path}/member/enroll" method="post">
        <div class="base_info_box">
            <div class="row">
                <div class="col"></div>
                <div class="col-8">  
                    <div class="important" id="base_info_p">
                        <span class="important_star">*</span>
                        필수입력사항</div>
                        <div class="base_info_sec">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <colgroup>
                                    <col width="25%">
                                    <col width="75%">
                                </colgroup>
                                        <tbody>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                아이디</span>
                                            </th>
                                            <td>
                                                <div class="form-inline">
                                                    <div class="form-group mx-sm-3 mb-2">
                                                        <label for="user_id" class="sr-only">memId</label>
                                                        <input type="text" name="m_id" class="form-control" id="user_id" placeholder="아이디를 입력해주세요" required>
                                                        <input type="hidden" name="idTest" value="0" />
                                                    </div>
                                                        <button id="btn_duplicate" name="duplication_check" type="button" class="btn-logoc" value="중복확인">중복확인</button>
                                                </div>
                                                <div class="check_font" id="id_check"
                                                style="padding-left: 15px; padding-top: 10px"></div>
                                            </td>
                                        </tr>
                                        <tr class="">
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                비밀번호</span>
                                            </th>
                                            <td class="member_password" style="padding-left: 30px;">
                                                <div class="form-group">
                                                    <input type="password" name="m_password" class="form-control" id="user_password" placeholder="비밀번호를 입력해주세요" required>
                                                </div>
                                                <div class="check_font" id="password_check"
                                                style="padding-bottom: 10px;"></div>
                                                <p id="requiredPassword">10자 이상 입력</p>
                                                <p id="requiredPassword">영문/숫자/특수문자만 허용하며, 2개 이상 조합</p>
                                                <!-- <p id="requiredPassword">동일한 숫자 3개 이상 연속 사용 불가</p> -->
                                        </tr>
                                        <tr class="">
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                비밀번호 확인</span>
                                            </th>
                                            <td style="padding-left: 30px;">
                                                <div class="form-group">
                                                    <input type="password" class="form-control" id="user_password_retype" placeholder="한번 더 입력해주세요" required>
                                                </div>
                                                <div class="mismatch-message" id="password_check2"
                                                style="color: red;"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                이름</span>
                                            </th>
                                            <td style="padding-left: 30px;">
                                                <div class="form-group">
                                                    <input type="text" name="m_name" class="form-control" placeholder="이름을 입력해주세요" id="user_name" required>
                                                </div>
                                                <div class="check_font" id="name_check"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                이메일</span>
                                            </th>
                                            <td class="member_email">
                                                <div class="member_warning">
                                                    <div class="form-inline">
                                                        <div class="form-group mx-sm-3 mb-2">
                                                            <label for="user_email" class="sr-only">memEmail</label> 
                                                            <input type="text" name="m_email" class="form-control" id="user_email" placeholder="예: voda1234@voda.com" required>
	                                                        <input type="hidden" name="emailTest" value="0" />
                                                        </div>
                                                        <button id="btn_duplicate_email" type="button" class="btn-logoc">중복확인</button>
                                                    </div>
                                                </div>
                                                <div class="check_font" id="email_check" 
                                                style="padding-left: 15px; padding-top: 10px"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                휴대폰번호</span>
                                            </th>
                                            <td class="member_address">
                                                <div class="form-inline">
                                                    <div class="form-group mx-sm-3 mb-2">
                                                        <label for="user_phone" class="sr-only">memPhone</label>
                                                        <input type="text" name="m_phone" 
                                                        maxlength='11' class="form-control" placeholder="숫자만 입력해주세요" id="user_phone" required>
                                                    </div>
                                                </div>
                                                <div class="check_font" id="phone_check" 
                                                style="padding-left: 15px; padding-top: 10px"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                주소</span>
                                            </th>
                                            <td class="member_address">
                                                <div class="address_postcode">
                                                    <input type="hidden" name="zipcode" value="">
                                                </div>
                                                <div class="address_input">
                                                    <div class="form-inline">
                                                        <div class="form-group mx-sm-3 mb-2">
                                                            <label for="inputAddress" class="sr-only">memAddress</label>
                                                            <input name="m_postNum" id="sample6_postcode" readonly="readonly" type="number" class="form-control">
                                                        </div>
                                                        <button id="btn_address" onclick="sample6_execDaumPostcode()" type="button" class="btn-logoc">주소 검색</button>
                                                        <input name="m_address" id="sample6_address" readonly="readonly" type="text" class="form-control" style="margin-left: 16px; width: 235px !important;" required >
                                                        <input name="m_detailAddress" id="sample6_detailAddress" type="text" class="form-control" style="margin-left: 16px;margin-top: 3px; width: 235px !important;" required>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <th><span class="important">성별</span>
                                            </th>
                                            <td class="member_gender" style="padding: 30px;">
                                                <div class="form-check form-check-inline" style="margin-right: 30px;">
                                                    <input class="form-check-input" type="radio" name="m_gender" id="optionsRadios2" value="M">
                                                    <label class="form-check-label" for="optionsRadios1">남자</label>
                                                </div>
                                                <div class="form-check form-check-inline" style="margin-right: 30px;">
                                                    <input class="form-check-input" type="radio" name="m_gender" id="optionsRadios2" value="W">
                                                    <label class="form-check-label" for="optionsRadios2">여자</label>
                                                </div>
                                                <div class="form-check form-check-inline" style="margin-right: 30px;">
                                                    <input class="form-check-input" type="radio" name="m_gender" id="optionsRadios2" value="N" checked="">
                                                    <label class="form-check-label" for="optionsRadios3">선택안함</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><span class="important">생년월일</span>
                                            </th>
                                            <td class="member_birth" style="padding-left: 30px;">
                                                <div style="flex: 1 1 0%">
                                                    <div class="birth1" style="width: 250px;">
                                                            <input data-testid="input-box" name="m_birth" maxlength='8'
                                                            placeholder="예: 20001225" type="text" height="40" id="css-birth1">
                                                    </div>    
                                                </div>
                                                <div class="check_font" id="birth_check"
                                                style="padding-top: 10px"></div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>  

                                <div id="line"></div>
                                <div class="base_info_sec">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <colgroup>
                                            <col width="25%">
                                            <col width="75%">
                                        </colgroup>
                                        <tbody>
                                        <tr>
                                            <th><span class="important">
                                                <span class="important_star">*</span>
                                                이용약관 동의</span>
                                            </th>
                                            <td>
                                                <div id="checkWrap" style="flex: 1 1 0%">
                                                    <div class="terms_of_use">
                                                        <div class="terms_of_use3">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="TermsAgreeAll">
                                                                <label class="form-check-label" for="TermsAgreeAll" id="terms_of_use2">
                                                                    전체 동의합니다.
                                                                </label>
                                                                <p class="terms-plus">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="terms_of_use">
                                                        <div class="terms_of_use3">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                                                                <label class="form-check-label" for="flexCheckDefault1">
                                                                    이용약관 동의
                                                                </label>
                                                            </div>
                                                            <span class="terms-check">(필수)</span>
                                                        </div>
                                                        <button class="terms-view" type="button" data-toggle="modal" data-target=".bd-example-modal-lg">약관보기</button>
                                                    </div>
                                                    <div class="terms_of_use">
                                                        <div class="terms_of_use3">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                                                                <label class="form-check-label" for="flexCheckDefault2">
                                                                    개인정보 수집∙이용 동의
                                                                </label>
                                                            </div>
                                                            <span class="terms-check">(필수)</span>
                                                        </div>
                                                        <button class="terms-view" type="button" data-toggle="modal" data-target="#staticBackdrop2">약관보기</button>
                                                    </div>
                                                    <div class="terms_of_use">
                                                        <div class="terms_of_use3">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                                                                <label class="form-check-label" for="flexCheckDefault3">
                                                                    개인정보 수집∙이용 동의
                                                                </label>
                                                            </div>
                                                            <span class="terms-check">(선택)</span>
                                                        </div>
                                                        <button class="terms-view" type="button" data-toggle="modal" data-target="#staticBackdrop3">약관보기</button>
                                                    </div>
                                                    <div class="terms_of_use">
                                                        <div class="terms_of_use3">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault4">
                                                                <label class="form-check-label" for="flexCheckDefault4">
                                                                    본인은 만 14세 이상입니다.
                                                                </label>
                                                            </div>
                                                            <span class="terms-check">(필수)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            
                            <div class="btn_center_box">
                                <input id="btn_final_join" type="submit" class="btn-logoc" value="회원가입">
                            </div>
                        </div>
                    <div class="col"></div>  
                </div>          
            </div>
        </form>
        <br><br><br><br><br><br>
        

<div>
    <style>
        html {
        line-height: 1.15;
        }
    
        *,
        :after,
        :before,
        legend,
        td,
        th {
        padding: 0;
        }
        *,
        :after,
        :before {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        margin: 0;
        }
        canvas,
        img,
        video {
        max-width: 100%;
        }
        [type='submit'] {
        border-radius: 0;
        }
        img,
        legend {
        border: 0;
        vertical-align: top;
        }
        html {
        height: 100%;
        -ms-touch-action: manipulation;
        touch-action: manipulation;
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%;
        }
        body {
        height: 100%;
        margin: 0;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        background-color: white;
        }
    
        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        main,
        menu,
        nav,
        section,
        summary {
        display: block;
        }
        audio,
        canvas,
        progress,
        video {
        display: inline-block;
        vertical-align: baseline;
        }
        audio:not([controls]) {
        display: none;
        height: 0;
        }
        [hidden],
        template {
        display: none;
        }
        a {
        background-color: transparent;
        text-decoration: none;
        color: inherit;
        }
        a:active,
        a:hover {
        outline: 0;
        }
        abbr[title] {
        border-bottom: 1px dotted;
        }
        b,
        optgroup,
        strong {
        font-weight: 700;
        }
        mark {
        background: #ff0;
        color: #000;
        }
        sub,
        sup {
        font-size: 75%;
        line-height: 0;
        position: relative;
        vertical-align: baseline;
        }
        sup {
        top: -0.5em;
        }
    
        sub {
        bottom: -0.25em;
        }
    
        svg:not(:root) {
        overflow: hidden;
        }
    
        figure {
        margin: 0;
        }
    
        hr {
        -moz-box-sizing: content-box;
        box-sizing: content-box;
        height: 0;
        }
    
        pre,
        textarea {
        overflow: auto;
        vertical-align: top;
        }
    
        code,
        kbd,
        pre,
        samp {
        font-family: monospace, monospace;
        font-size: 1em;
        }
    
        button,
        input,
        optgroup,
        select,
        textarea {
        color: inherit;
        font: inherit;
        margin: 0;
        }
    
        button {
        overflow: visible;
        background-color: transparent;
        border: none;
        }
    
        button,
        select {
        text-transform: none;
        }
    
        button,
        input[type='button'],
        input[type='reset'],
        input[type='submit'] {
        -webkit-appearance: button;
        cursor: pointer;
        }
    
        button[disabled],
        input[disabled] {
        cursor: default;
        }
    
        button::-moz-focus-inner,
        input::-moz-focus-inner {
        border: 0;
        padding: 0;
        }
    
        input[type='checkbox'],
        input[type='radio'] {
        box-sizing: border-box;
        padding: 0;
        }
    
        input[type='number']::-webkit-inner-spin-button,
        input[type='number']::-webkit-outer-spin-button {
        height: auto;
        }
    
        input[type='search']::-webkit-search-cancel-button,
        input[type='search']::-webkit-search-decoration {
        -webkit-appearance: none;
        }
    
        fieldset {
        margin: 0;
        padding: 0;
        }
    
        table {
        border-collapse: collapse;
        border-spacing: 0;
        }
    
        ol,
        ul {
        list-style-type: none;
        }
    
        body,
        button,
        input,
        select,
        textarea {
        color: #333;
        }
    
        button {
        border-radius: 0;
        }
    
        .wrapper {
        padding: 30px;
        font-size: 14px;
        line-height: 19px;
        letter-spacing: -0.5px;
        color: #666;
        }
        h1 {
        display: block;
        font-size: 20px;
        font-weight: 500;
        line-height: 1.25;
        letter-spacing: -0.5px;
        color: #333;
        }
        .tit_main {
        display: block;
        padding-top: 16px;
        padding-bottom: 8px;
        font-size: 16px;
        font-weight: 500;
        line-height: 21px;
        color: #333;
        font-weight: 500;
        }
        .tit_sub{
        display: block;
        font-weight: normal;
        }
        .box_tbl table{
        width: 100%;
        table-layout: fixed;
        }
        .box_tbl th {
        padding: 10px 5px;
        background-color: #f4f4f4;
        border: 1px solid #ccc;
        text-align: center
        }
    
        .box_tbl thead th {
        border-bottom: 0;
        font-size: 14px
        }
    
        .box_tbl thead th.emph {
        text-decoration: underline
        }
    
        .box_tbl td {
        padding: 5px;
        border: 1px solid #ccc;
        text-align: center;
        vertical-align: middle;
        font-size: 12px;
        line-height: 19px
        }
    
        .box_tbl td.emph {
        font-weight: 600;
        font-size: 15px;
        text-decoration: underline
        }
    
        .tbl_desc {
        padding: 0 5px;
        color: #999
        }
    
        .txt_service {
        padding: 20px 5px 24px;
        font-size: 14px;
        color: #999;
        line-height: 20px
        }
    
        .terms_view {
        margin-top: 20px;
        font-size: 14px;
        line-height: 20px
        }
    
        .terms_view .tit_main {
        font-size: 16px
        }
    
        .terms_view .tit_sub {
        display: block;
        padding: 20px 0 10px
        }
    
        .terms_view .normal,.terms_view:last-child .tit_sub {
        font-weight: 400
        }
    
        .terms_view:last-child .tit_sub .emph {
        font-weight: 700
        }
    
        .screen_out {
        display: block;
        overflow: hidden;
        position: absolute;
        left: -9999px;
        width: 1px;
        height: 1px;
        font-size: 0;
        line-height: 0;
        text-indent: -9999px;
        }

        #terms {
            padding-bottom: 20px;
        }
    </style>
    <!-- Modal1 -->
        <div class="modal fade bd-example-modal-lg" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="wrapper">
                        <h1>이용약관(필수)</h1>
                            <div class="scroll_wrapper">
                            <strong class="tit_main">총칙</strong>
                                <div class="terms_view">
                                    <strong class ="tit_main ">제1조   [목적]</strong>
                                     이 약관은 주식회사 voda(이하 주식회사 voda 또는 주식회사 voda가 운영하는 인터넷사이트를 “voda”라 함)가 운영하는 온라인쇼핑몰에서 제공하는 전자상거래 관련 서비스(이하 “서비스”라 함)를 이용함에 있어 voda와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                                     <br>
                                     *PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
                                     <strong class ="tit_main ">제2조   [정의]</strong >
                                     1. “사이버몰”이란 voda가 상품 또는 용역(이하 “상품 등” 이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 상품 등을 거래할 수 있도록 설정한 가상의 영업장(http://www.kurly.com 등 voda가 운영하는 웹사이트 및 모바일 웹, 앱 등을 모두 포함)을 말합니다.
                                     <br>
                                     2. "이용자"란 voda에 접속하여 이 약관에 따라 voda가 제공하는 서비스를 이용하는 고객을 말합니다.
                                     <br>
                                     3. “회원”이란 voda에 회원등록을 한 자로서, 계속적으로 voda가 제공하는 서비스를 이용할 수 있는 자를 말합니다.
                                     <br>
                                     4. "휴면회원"이란 voda의 회원 중 최종접속일로부터 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면회원은 voda의 정책에 따라 서비스 이용이 제한될 수 있으며, 다시 정상적인 회원 서비스를 이용하기 위하여는 거래 안전 등을 위하여 voda가 정하는 본인확인 절차 등을 이행하여야 합니다.
                                     <br>
                                     5. “마켓플레이스 서비스”란 voda가 제공하는 통신판매중개 서비스 및 관련 부가서비스 일체를 말합니다.
                                     <br>
                                     6. “판매자”란 voda에 판매회원으로 회원등록을 하고 voda가 제공하는 통신판매중개서비스를 통하여 상품 등을 판매하는 자로서 판매자용 이용약관(마켓플레이스 판매자용 이용약관)에 동의하고 voda와 마켓플레이스 서비스 이용계약을 체결한 자를 말합니다.
                                     <strong class ="tit_main ">제3조   [약관 등의 명시와 설명 및 개정]</strong >
                                     ① voda는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 알 수 있도록 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                                     <br>
                                     ② voda는 필요한 경우 관련 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                     <br>
                                     ③ voda가 이 약관을 개정할 경우에는 적용일자 및 개정 내용을 명시하여 사이버몰에 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예 기간을 두고 공지합니다.
                                     <br>
                                     ④ 전항에 따라 공지된 적용일자까지 이용자가 명시적으로 거부의사를 표명하지 않을 경우에는 개정된 약관에 동의하는 것으로 간주하며, 변경된 약관에 동의하지 않는 회원은 회원 탈퇴를 요청할 수 있습니다.
                                     <br>
                                     ⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”이라 함), 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
                                     <br>
                                     ⑥ voda는 이 약관에 규정되지 않은 세부적인 운영정책, 이용약관, 규칙, 지침 및 서비스 이용과 관련된 전반적인 내용(이하 총칭하여 “운영정책”이라 함)을 제정하여 운영할 수 있으며, 해당 내용을 사이버몰에 게시합니다. 운영정책은 이 약관과 더불어 고객 서비스 이용계약(이하 “이용계약”이라 함)의 일부를 구성합니다.
                                     <br>
                                     ⑦ voda는 voda가 제공하는 서비스 중 특정 서비스에 관한 약관(이하 “개별약관”이라 함)을 별도로 제정할 수 있으며, 이용자가 개별약관에 동의한 경우 개별약관은 이용계약의 일부를 구성하고 개별약관에 이 약관과 상충되는 내용이 있을 경우 개별약관이 우선적으로 적용됩니다.
                                     <strong class ="tit_main ">II. 회사의 서비스</strong >
                                     <strong class ="tit_main ">제4조 [서비스의 제공 및 변경]</strong >
                                     ① voda는 다음과 같은 업무를 수행합니다.
                                     <br>
                                     1. 전자상거래 서비스(통신판매중개 서비스 포함) 및 이에 수반되는 기타 서비스
                                     <br>
                                     2. 기타 voda가 정하는 업무
                                     <br>
                                     ② voda는 상품 등의 품절 또는 기술적 사양의 변경 등 사유가 발생하는 경우에는 장차 체결되는 계약에 의해 제공할 상품 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 상품 등의 내용 및 제공일자를 명시하여 현재의 상품 등의 내용을 게시한 곳에 즉시 공지합니다.
                                     <br>
                                     ③ voda가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 즉시 통지합니다.
                                     <strong class ="tit_main ">제5조   [서비스의 중단]</strong >
                                     ① voda는 컴퓨터 등 정보통신설비의 보수점검/교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
                                     <br>
                                     ② 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 voda는 제8조에 정한 방법으로 이용자에게 통지하고 당초 voda에서 제시한 조건에 따라 보상합니다. 다만, voda가 무상으로 지급한 적립금은 현물 또는 현금으로 환급되지 않으며, voda가 보상기준 등을 별도로 고지하지 아니한 경우에는 이용자의 마일리지 또는 적립금 등을 voda에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.
                                     <strong class ="tit_main ">III. 회원가입 계약</strong >
                                     <strong class ="tit_main ">제6조   [회원가입]</strong >
                                     ① 이용자는 voda가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
                                     <br>
                                     ② voda는 전항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
                                     <br>
                                     1. 가입신청자가 이 약관 제7조항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조에 의한 회원자격 상실 후 3년이 경과한 자로서 "voda"의 회원재가입 승낙을 얻은 경우에는 예외로 합니다.
                                     <br>
                                     2. 회원의 요청에 의하여 탈퇴한 때로부터 1개월이 지나지 아니한 경우
                                     <br>
                                     3. 가입신청자가 기입한 등록 내용에 허위, 기재 누락 또는 오기가 있는 경우
                                     <br>
                                     4. 가입신청자가 만 14세 미만인 경우
                                     <br>
                                     5. 기타 회원으로 등록하는 것이 voda의 기술상 또는 서비스 운영 관점에서 현저히 지장이 있거나 부적절하다고 판단되는 경우
                                     <br>
                                     ③ 회원가입계약의 성립 시기는 voda의 승낙이 회원에게 도달한 시점으로 합니다.
                                     <br>
                                     ④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 voda에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 하며, 변경을 하지 아니하여 발생하는 불이익은 회원이 부담합니다.
                                     <strong class ="tit_main ">제7조   [회원 탈퇴 및 자격 상실 등]</strong >
                                     ① 회원은 voda에 언제든지 탈퇴를 요청할 수 있으며 voda는 회원의 요청을 받을 경우 사이버몰을 통하여 voda가 고지한 방법에 따라 신속하게 회원 탈퇴를 처리합니다. 단, 회원이 voda에 대한 채무를 부담하고 있는 경우 탈퇴가 제한될 수 있습니다.
                                     <br>
                                     ② 회원이 다음 각 호의 어느 하나의 사유에 해당하는 경우, voda는 회원 자격을 제한, 정지 또는 상실시킬 수 있습니다.
                                     <br>
                                     1. 가입 신청 시에 타인의 정보 또는 허위의 정보를 입력하거나 가입 내용에 정보의 누락, 오기가 있는 경우
                                     <br>
                                     2. voda를 이용하여 구입한 상품 등의 대금, 기타 voda 이용과 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
                                     <br>
                                     3. 다른 사람의 voda 이용을 방해하거나 그 정보를 도용하는 등 건전한 거래 질서를 위협하는 경우
                                     <br>
                                     4. voda를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
                                     <br>
                                     5. voda가 제공하는 서비스 이용방법을 따르지 않고 비정상적인 방법으로 서비스를 이용하거나 시스템에 접근하는 경우
                                     <br>
                                     6. 기타 다음과 같은 행위를 통해 voda의 건전한 운영을 해하거나 voda의 업무를 방해하는 경우
                                     <br>
                                     가. voda의 운영과 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 voda의 명예를 실추시키거나 voda의 신뢰도를 해하는 경우
                                     <br>
                                     나. voda의 이용과정에서 직원에게 폭언, 협박 또는 음란한 언행, 이에 준하는 행동 등으로 voda의 운영을 방해하는 경우
                                     <br>
                                     다. voda를 통하여 상품 등을 구매한 후 정당한 이유 없이 상습 또는 반복적으로 취소·반품하거나 이의를 제기하는 등으로 voda의 업무를 방해하는 경우
                                     <br>
                                     라. voda가 본인 확인 절차를 실시할 경우 본인 확인이 되지 않거나 본인이 아님이 확인된 경우
                                     <br>
                                     마. 이미 가입된 voda의 회원과 개인정보(이름, 전화번호, 주소 등)가 동일하거나, 여러 정보/사정을 종합하여 볼 때 동일인으로 합리적으로 인정되는 기존 회원이 중복 가입한 경우
                                     <br>
                                     바. 재판매 목적 등으로 voda에서 상품 등을 중복 구매하는 등 부정한 용도 또는 영리를 추구할 목적으로 서비스를 이용하거나 그와 같은 사정이 합리적으로 의심되는 경우
                                     <br>
                                     사. 동일/유사한 ID, 전화번호, 주소 등의 회원정보를 통하여 부정한 사용을 하는 것으로 의심되는 경우
                                     <br>
                                     아. 매크로, 다수 생성 ID 사용 등 부정한 방법을 통해 서비스를 이용(어뷰징)하는 경우
                                     <br>
                                     자. voda로부터 서비스 제한, 회원 자격 정지 조치 등을 받은 회원이 그 조치기간 중에 이용계약을 임의해지하고 재회원가입 등을 통해 서비스를 이용하는 경우
                                     <br>
                                     차. 무단으로 voda가 판매하는 상품 등에 관한 정보, 사이버몰에 게시된 콘텐츠 등 자료를 수집하여 외부에 제출, 게시, 유용하는 등으로 voda의 저작권, 상표권 등 지식재산권을 비롯한 voda의 권리를 침해하는 경우
                                     <br>
                                     카. 개별 상품 등 또는 이벤트 등과 관련하여 사전 고지된 정책이나 거래 조건을 위계 기타 부정한 방법으로 회피하여 건전한 거래질서를 해하는 경우
                                     <br>
                                     ③ 회원이 전항의 어느 하나에 해당하는 경우, voda는 별도의 사전 통지 없이 회원에게 기존에 제공한 혜택(적립금, 쿠폰 등)을 회수하거나 서비스 이용 제한(주문 취소, 배송 취소 등)의 조치를 취할 수 있습니다. 또한, voda가 회원에 대하여 보유하는 채권(손해배상 등)이 있을 경우 회원에 대한 채무와 상계할 수 있습니다.
                                     <br>
                                     ④ voda가 회원 자격을 상실시키는 경우에는 회원 등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원 등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
                                     <strong class ="tit_main ">제8조   [회원에 대한 통지]</strong >
                                     ① voda가 회원에 대한 통지를 하는 경우, 회원이 voda와 미리 약정하여 지정한 전자우편(또는 우편), 문자, 전화, 팩스 등의 방법으로 할 수 있습니다.
                                     <br>
                                     ② voda는 불특정다수 회원에 대한 통지의 경우 7일 이상 사이버몰에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다.
                                     <strong class ="tit_main ">IV. 리테일 서비스</strong >
                                     <strong class ="tit_main ">제9조 [구매신청]</strong >
                                     ① 이용자는 사이버몰 상에서 다음 각호의 어느 하나 또는 이와 유사한 방법에 의하여 구매를 신청하며, voda는 이용자가 구매 신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
                                     <br>
                                     1. 상품 등의 검색 및 선택
                                     <br>
                                     2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
                                     <br>
                                     3. 약관 내용, 청약철회권이 제한되는 서비스, 배송료 등의 비용 부담과 관련한 내용에 대한 확인
                                     <br>
                                     4. 상품 등의 구매신청 및 이에 관한 확인 또는 voda의 확인에 대한 동의
                                     <br>
                                     5. 결제방법의 선택
                                     <br>
                                     ② voda가 제3자에게 이용자의 개인정보를 제공할 필요가 있는 경우 개인정보보호법 등 관련 법령에 따라 실제 구매 신청시 이용자의 동의를 받아야 하며, 회원 가입 등 시점에 미리 포괄적으로 동의를 받지 않습니다. 이 때 voda는 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용목적 및 보유/이용기간 등을 이용자에게 명시하여야 합니다.
                                     <br>
                                     ③ voda가 제3자에게 이용자의 개인정보 처리 업무를 위탁할 필요가 있는 경우 실제 구매 신청시 이용자의 동의를 받아야 하며, 회원 가입 등 시점에 미리 포괄적으로 동의를 받지 않습니다. 이 때 voda는 개인정보 처리위탁을 받는 자, 개인정보 처리위탁을 하는 업무의 내용 등을 이용자에게 명시하여야 합니다. 단, 개인정보보호법에 달리 정함이 있는 경우에는 그에 따릅니다.
                                     <strong class ="tit_main ">제10조  [계약의 성립]</strong >
                                     ① voda는 제9조에 따른 구매 신청이 다음 각 호의 어느 하나에 해당할 경우 승낙하지 않을 수 있습니다.
                                     <br>
                                     1. 신청 내용에 허위, 기재 누락, 오기가 있는 경우
                                     <br>
                                     2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 상품 등을 구매 신청한 경우
                                     <br>
                                     3. 부정한 방법(매크로 사용, 다수 생성 ID 사용 등)을 사용하거나, 재판매의 목적으로 상품 등을 중복 구매하는 등 사이버몰의 거래질서를 방해하거나 그와 같은 사정이 합리적으로 의심되는 경우
                                     <br>
                                     4. 관할청의 행정처분 등으로 상품 등의 판매가 중단된 경우
                                     <br>
                                     5. 제7조에 따라 회원 자격이 제한, 정지 또는 상실된 회원이 구매 신청한 경우
                                     <br>
                                     6. 기타 구매 신청에 승낙하는 것이 voda 기술상 현저히 지장이 있다고 판단되는 경우
                                     <br>
                                     ② voda의 승낙이 제14조 제1항의 수신확인통지 형태로 이용자에게 도달한 시점에 구매 계약이 성립한 것으로 봅니다.
                                     <br>
                                     ③ 구매 계약의 성립 이후 voda가 제1항 각호의 어느 하나에 해당하는 사유를 발견한 경우 voda는 즉시 계약을 해제 또는 취소할 수 있습니다. 이 경우 voda는 회원이 상품 등의 대금을 지급한 날로부터 3영업일(주말 및 공휴일을 제외한 일자를 의미함, 이하 동일) 내에 이를 환급하거나 환급에 필요한 조치를 취합니다.
                                     <br>
                                     ④ voda의 승낙의 의사표시는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.
                                     <br>
                                     ⑤ voda가 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있습니다.
                                     <strong class ="tit_main ">제11조  [지급방법]</strong >
                                     voda에서 구매한 상품 등에 대한 대금 지급은 다음 각 호의 방법 중 voda가 허용하는 방법으로 할 수 있습니다. 단, voda는 이용자의 지급 방법에 대하여 상품 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. voda는 이용자의 대금 결제 시 해당 결제수단에 대하여 정당한 사용 권한이 있는지 확인할 수 있고, 이에 대한 확인이 완료될 때까지 해당 거래의 진행을 중지할 수 있습니다.
                                     <br>
                                     1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌 이체
                                     <br>
                                     2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
                                     <br>
                                     3. 온라인 무통장입금
                                     <br>
                                     4. 전자화폐에 의한 결제
                                     <br>
                                     5. 수령 시 대금지급
                                     <br>
                                     6. voda가 지급한 적립금에 의한 결제
                                     <br>
                                     7. voda와 계약을 맺었거나 voda가 인정한 상품권에 의한 결제
                                     <br>
                                     8. 기타 전자적 지급 방법에 의한 대금 지급 등
                                     <strong class ="tit_main ">제12조  [적립금]</strong >
                                     ① voda는 회원의 구매 활동, 이벤트 참여 등에 따라 회원에게 일정한 적립금을 부여할 수 있습니다.
                                     <br>
                                     ② 회원은 적립금을 voda에서 상품 등의 구매 시 결제 수단으로 사용할 수 있으며, voda는 적립금의 적립 기준, 사용 방법, 사용 기간 및 제한에 대한 사항을 사이트에 별도로 게시하거나 통지합니다. 적립금의 적립이나 사용 등에 관한 구체적 사항은 voda의 정책에 따라 달라질 수 있으며, 적립금 관련 정책이 변경될 경우 voda는 이를 변경 적용일자 7일 전부터 공지합니다.
                                     <br>
                                     ③ 적립금은 현금으로 환급될 수 없습니다.
                                     <br>
                                     ④ 회원은 적립금을 제3자 또는 다른 ID로 양도할 수 없으며, 유상으로 거래하거나 현금으로 전환할 수 없습니다.
                                     <br>
                                     ⑤ voda는 회원이 voda가 승인하지 않은 방법 또는 위계 등 부정한 방법(매크로, 다수 생성 ID 사용 등)으로 적립금을 획득하거나 부정한 목적/용도로 적립금을 사용하는 경우, 적립금의 사용 제한, 적립금 회수, 적립금을 사용한 구매 계약 취소 또는 회원 자격의 정지/상실 등의 조치를 취할 수 있고, 회원의 행위로 인하여 voda에게 발생한 손해의 배상을 청구할 수 있습니다.
                                     <br>
                                     ⑥ 회원 탈퇴시 미사용한 적립금은 즉시 소멸되며, 탈퇴 후 재가입하더라도 소멸된 적립금은 복구되지 아니합니다.
                                     <br>
                                     ⑦ 회원이 구매 또는 이벤트 등으로 받은 적립금을 사용한 이후 해당 적립 원인이 취소(상품 등의 구매 취소, 부정 적립 사유 발견 등) 되는 경우, 회원은 이에 상응하는 금액을 voda에 즉시 반환하여야 하며, 회원이 보유하는 잔여 적립금 또는 추후 적립되는 적립금에서 해당 금액만큼 적립금이 차감될 수 있습니다.
                                     <br>
                                     ⑧ 적립금의 유효기간은 고지된 바에 따라 특정되며, 유효기간 내에 사용되지 않은 적립금은 해당 유효기간 만료 시 즉시 소멸됩니다.
                                     <br>
                                     ⑨ voda의 적립금 정책은 모든 회원에게 동일하게 적용됩니다. 단, 휴면회원의 경우 관계법령에 따라 고지, 처리 등이 제한 될 수 있습니다.
                                     <strong class ="tit_main ">제13조  [할인쿠폰]</strong >
                                     ① voda는 직접 또는 제3자를 통하여 사용 대상, 사용 방법, 사용 기간, 사용 조건, 할인금액 등을 정하여 이용자가 사이버몰에서 사용할 수 있는 할인쿠폰을 발행할 수 있습니다. 할인쿠폰의 구체적인 종류나 내용은 voda의 정책에 따라 달라질 수 있으며, voda는 할인쿠폰을 발행함에 있어 그 사용 대상, 사용 방법, 사용 기간, 사용 조건, 할인금액 등을 별도로 표시하거나 통지합니다.
                                     <br>
                                     ② 할인쿠폰은 현금으로 환급될 수 없으며, 할인쿠폰의 사용기간이 만료되거나 구매 취소 시 또는 이용계약이 종료되면 소멸됩니다.
                                     <br>
                                     ③ 회원은 할인쿠폰을 제3자 또는 다른 ID로 양도할 수 없으며, 유상으로 거래하거나 현금으로 전환할 수 없습니다.
                                     <br>
                                     ④ voda는 회원이 voda가 승인하지 않은 방법으로 할인쿠폰을 획득하거나 부정한 목적이나 용도로 할인쿠폰을 사용하는 경우, 할인쿠폰의 사용 제한, 할인쿠폰 회수, 할인쿠폰을 사용한 구매 계약 취소 또는 회원 자격 정지/상실 등의 조치를 취할 수 있고, 회원의 행위로 인하여 voda에게 발생한 손해의 배상을 청구할 수 있습니다.
                                     <br>
                                     ⑤ 회원 탈퇴 시 미사용한 할인쿠폰은 즉시 소멸되며, 탈퇴 후 재가입하더라도 소멸된 할인쿠폰은 복구되지 아니합니다.
                                     <strong class ="tit_main ">제14조  [수신확인통지/구매신청 변경 및 취소]</strong >
                                     ① voda는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
                                     <br>
                                     ② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, voda는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 단, 이미 배송 준비 절차가 진행되는 등의 사정으로 구매신청의 변경이나 취소가 어려운 경우 상품 등의 배송 이후 교환, 반품 등으로 진행할 수 있으며, 이용자가 이미 대금을 지불한 경우에는 제17조의 청약철회 등에 관한 규정에 따릅니다.
                                     <strong class ="tit_main ">제15조  [상품 등의 공급]</strong >
                                     ① voda는 이용자와 상품 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 상품 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 단, voda가 이미 상품 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 voda는 이용자가 상품 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.
                                     <br>
                                     ② voda는 이용자가 구매한 상품 등에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다.
                                     <br>
                                     ③ voda와 이용자 간에 상품 등의 인도 또는 제공 시기에 관하여 별도의 약정이 있는 경우에는 해당 약정이 이 약관에 우선합니다.
                                     <strong class ="tit_main ">제16조  [환급]</strong >
                                     voda는 이용자가 구매 신청한 상품 등을 품절 등 사유로 인하여 공급하기 곤란하다는 것을 알았을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 상품 등의 대금을 받은 경우에는 대금을 받은 날로부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
                                     <strong class ="tit_main ">제17조  [청약철회 등]</strong >
                                     ① voda와 상품 등의 구매에 관한 계약을 체결한 이용자는 전자상거래법 등 관련 법령에 따라 상품 등을 공급받거나 공급이 시작된 날부터 7일 이내에 반품 또는 교환 신청(청약철회)을 할 수 있습니다. 단, 이용자에게 책임이 있는 사유로 상품 등이 멸실 또는 훼손된 경우 등 전자상거래법 제17조 제2항에 따른 청약철회 제한 사유가 있는 경우에는 청약철회가 제한될 수 있습니다.
                                     <br>
                                     ② 전항의 규정에도 불구하고, 이용자는 상품 등의 내용이 표시∙광고 내용과 다르거나 계약 내용과 다르게 이행된 경우에는 해당 상품 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다.
                                     <strong class ="tit_main ">제18조  [청약철회 등의 효과]</strong >
                                     ① voda는 이용자로부터 상품 등을 반환받은 경우 그로부터 3영업일 이내에 이미 지급받은 상품 등의 대금을 환급합니다. voda가 이용자에게 상품등의 환급을 지연한 때에는 그 지연기간에 대하여 전자상거래법 시행령 제21조의3에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.
                                     <br>
                                     ② voda는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 상품 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 상품 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.
                                     <br>
                                     ③ 청약철회 등의 경우 공급받은 상품 등의 반환에 필요한 비용은 이용자가 부담합니다. voda는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 단, 상품 등의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 상품 등의 반환에 필요한 비용은 voda가 부담합니다. 이에 관한 보다 상세한 정책은 사이버몰을 통해 고지합니다.
                                     <strong class ="tit_main ">V. 마켓플레이스 서비스(통신판매중개서비스)</strong >
                                     <strong class ="tit_main ">제19조  [이용자의 서비스 이용]</strong >
                                     ① 마켓플레이스 서비스와 관련하여 voda는 통신판매중개자로서 통신판매의 당사자가 아니며, 이용자와 판매자 간의 자유로운 상품 등의 거래를 위한 시스템을 제공할 뿐이므로, 이용자는 상품 등을 구매하기 전에 반드시 판매자가 사이버몰 내에 작성한 상품 등의 상세 내용과 거래의 조건을 정확하게 확인해야 합니다. 구매하려는 상품 등의 내용과 거래의 조건을 확인하지 않고 구매하여 발생한 모든 손해는 이용자 본인이 부담합니다.
                                     <br>
                                     ② 이용자는 이 약관 및 voda가 사이버몰 등을 통해 공지하는 내용을 준수하여야 하고, 이 약관 및 공지 내용을 위반하거나 이행하지 않아 발생하는 모든 손해에 대하여 책임을 부담합니다.
                                     <br>
                                     ③ 이용자는 판매자와 상품 등 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 분쟁해결 과정에서 이용자의 불성실 등 이용자의 귀책사유로 판매자와 voda에 발생한 손해에 대하여는 이용자가 책임을 부담합니다.
                                     <br>
                                     ④ 이용자는 대금의 결제와 관련하여 이용자가 입력한 정보 및 그 정보와 관련하여 발생하는 제반 문제에 대한 모든 책임을 부담합니다.
                                     <br>
                                     ⑤ voda는 이용자에게 서비스가 안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지 여부를 확인합니다. 만약 이용자가 이 약관 제7조 제2항, 제29조 및 기타 서비스 이용 목적을 위반한 것으로 확인되면 voda는 그에 대한 소명을 이용자에게 요청할 수 있고, 주문 취소 등 필요한 조치를 할 수 있습니다.
                                     <br>
                                     ⑥ 이용자는 voda가 이용자의 서비스 이용 편의를 위하여 판매자 등으로부터 제공 받은 상품 등 관련 정보와 기타 콘텐츠를 사이버몰을 통하여 제공하는 경우에도 상품 등의 구매 여부는 이용자 본인의 판단과 책임으로 결정합니다.
                                     <br>
                                     ⑦ 대금지급 수단과 관련한 제11조 내지 제13조의 규정은 마켓플레이스 서비스를 이용하는 경우에도 적용됩니다.
                                     <br>
                                     ⑧ 미성년자가 voda를 통하여 상품 등을 구매하는 경우에 법정대리인이 해당 계약에 대하여 동의하지 아니하면, 미성년자 본인 또는 법정대리인은 그 계약을 취소할 수 있습니다.
                                     <strong class ="tit_main ">제20조  [구매안전서비스]</strong >
                                     ① "구매안전서비스”라 함은 마켓플레이스 서비스를 통해 이루어지는 이용자와 판매자 간의 거래 중 이용자가 상품을 공급받기 전에 대금을 지급하는 거래와 관련하여, 이용자가 이용할 수 있는 결제대금예치 서비스 또는 소비자피해보상보험계약등을 의미합니다.
                                     <br>
                                     ② voda는 이용자와 판매자 간에 이루어지는 상품매매의 안전성과 신뢰성을 높이고, 상품을 인수하기 전에 대금을 결제해야 하는 이용자를 보호하기 위하여 구매안전서비스를 제공 할 수 있습니다.
                                     <br>
                                     ③ voda는 구매안전서비스의 제공과 관련하여 판매자 또는 이용자를 대리하지 않으며, 상품의 매매와 관련하여서도 판매자 또는 이용자의 의무를 대행하지 않습니다.
                                     <strong class ="tit_main ">제21조  [배송 및 분쟁의 해결]</strong >
                                     ① voda는 상품 등의 배송과 관련하여 판매자, 이용자, 배송업체 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는 이에 관여하지 않으며 어떠한 책임도 부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가 직접 해결하여야 합니다. 단, 필요한 범위에서 voda가 해당 분쟁 등의 해결을 지원할 수 있습니다.
                                     <br>
                                     ② 상품 등의 배송이 완료된 경우, 이용자는 voda에 대하여 상품 등의 하자, 미수령, 반품 등의 사유로 이의를 제기할 수 없습니다. 구매확정 이후에 발생하는 환불, 교환 기타 판매자와 이용자 간에 발생하는 일체의 문제에 대해서는 판매자와 직접 해결하는 것을 원칙으로 합니다.
                                     <strong class ="tit_main ">제22조  [청약철회 등]</strong >
                                     ① 이용자는 전자상거래법 등 관련 법령에 따라 상품 등을 공급받거나 공급이 시작된 날부터 7일 이내에 청약철회를 할 수 있습니다. 다만, 이용자에게 책임이 있는 사유로 상품 등이 멸실 또는 훼손된 경우 등 전자상거래법 제17조 제2항에 따른 청약철회 제한 사유가 있는 경우에는 청약철회가 제한될 수 있습니다.
                                     <br>
                                     ② 전항의 규정에도 불구하고, 이용자는 상품 등의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 상품 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다.
                                     <br>
                                     ③ voda는 이용자로부터 교환 또는 반품의 의사표시를 받은 경우에는 즉시 그 사실을 판매자에게 통보합니다.
                                     <br>
                                     ④ 이용자는 제1항 또는 제2항에 따라 교환 신청을 하더라도 판매자에게 교환할 상품의 재고가 없는 경우에는 해당 상품 등의 교환을 받을 수 없습니다. 이 경우 해당 교환 신청은 반품으로 처리됩니다.
                                     <br>
                                     ⑤ 반품이나 교환에 필요한 배송비 및 기타 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 상품 등의 하자 또는 오배송으로 인한 반품이나 교환의 경우에는 판매자가 그 비용을 부담하나, 이용자의 단순 변심으로 인한 반품이나 교환의 경우에는 이용자가 그 비용을 부담합니다.
                                     <br>
                                     ⑥ 판매자는 이용자가 배송상의 문제로 손해를 입은 경우에는 그에 대한 책임을 부담합니다.
                                     <br>
                                     ⑦ 판매자가 이용자의 결제완료에 대한 통지를 받은 이후에도 상당 기간 배송 절차 등을 이행하지 아니하여 이용자가 청약철회 등을 하거나 기타 개별 정책에 따라 정해진 자동환불 사유에 해당하는 경우, voda는 해당 거래를 취소할 수 있고, 구매안전서비스가 적용되는 거래에 대해서는 구매안전서비스를 통해 결제대금을 이용자에게 환불할 수 있습니다.
                                     <br>
                                     ⑧ 판매자가 이용자의 교환 또는 반품 신청에 대하여 대응하지 않거나 지연 대응하는 경우, voda는 이용자에게 교환 또는 반품 신청의 사유를 파악하여 정당한 사유가 있는 경우에는 해당 거래를 취소하고, 판매자에게 정산되지 아니한 결제대금이 이용자에게 환불되도록 조치할 수 있습니다. 다만 이용자의 교환 또는 반품 신청에 정당한 사유가 인정되지 않는 경우에는 그러하지 아니합니다.
                                     <br>
                                     ⑨ 이용자가 교환 또는 반품 신청을 한 날로부터 14일이 지날 때까지 이미 수령한 상품을 판매자에게 반환하지 아니하고, 교환 또는 반품 의사 확인을 위한 연락(전화, 전자우편 등)에 응하지 아니하는 경우, voda는 이용자가 교환 또는 반품의 의사를 철회한 것으로 보아 결제대금이 판매자에게 지급되도록 조치할 수 있습니다.
                                     <br>
                                     ⑩ voda는 청약철회 등으로 인하여 결제대금을 환불하는 경우에는 그 청약철회 등을 한 날(단, 상품 등이 배송된 경우에는 판매자가 상품 등을 반환 받은 날)로부터 3영업일 이내에 환불에 필요한 조치를 합니다. 신용카드로 결제가 이루어진 경우 환불은 해당 신용카드 결제 취소를 통해서만 가능하고, 어떠한 경우에도 현금으로 환불되지 아니합니다.
                                     <strong class ="tit_main ">제23조  [금지행위]</strong >
                                     ① 판매자와 이용자가 voda가 제공하는 서비스를 이용하지 아니하고 직접 거래하는 행위(직거래)는 거래의 안전을 위하여 금지됩니다. 이 경우 직거래를 통하여 발생한 제반 문제에 대한 책임은 거래 당사자들에게 있으며 voda는 이에 대해 어떠한 책임도 부담하지 아니 합니다.
                                     <br>
                                     ② 전항 이외에, 마켓플레이스 서비스의 경우에도 이용자의 행위에 관하여는 이 약관 제7조 제2항, 제29조를 비롯한 이 약관의 다른 규정들이 동일하게 적용됩니다.
                                     <strong class ="tit_main ">제24조  [분쟁조정센터]</strong >
                                     ① voda는 이용자와 판매자 간에 분쟁이 발생하는 경우 이를 합리적이고 원활히 조정하기 위한 분쟁조정센터를 설치∙운영합니다.
                                     <br>
                                     ② 분쟁조정센터는 접수된 분쟁 내용을 신속하게 확인 및 조사하여 이용자에게 3영업일 이내에 진행 경과를 안내하고, 10영업일 이내에 조사 결과 또는 처리방안을 안내합니다. 다만, 그 유형 및 내용에 따라 추가 확인이 필요하거나 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 안내합니다.
                                     <br>
                                     ③ 이용자는 분쟁조정센터의 조정에 신의칙에 입각하여 성실히 응하여야 합니다.
                                     <br>
                                     ④ 당사자 간에 합의가 이루어지지 않는 경우 분쟁을 신속하고 공정하게 해결하기 위해 행정기관, 한국소비자원 또는 소비자피해 분쟁조정기구를 이용할 수 있습니다.
                                     <br>
                                     ⑤ voda는 이용자와 voda 또는 판매자와 사이에 발생하는 불만이나 분쟁을 해결하기 위한 기준(분쟁해결기준)을 마련하여 사이버몰에 고지합니다.
                                     <strong class ="tit_main ">제25조 [voda의 면책]</strong >
                                     ① voda는 통신판매중개자로서 이용자와 판매자 간의 자유로운 상품 등의 거래를 위한 시스템을 제공할 뿐 이용자 또는 판매자를 대리하지 않으며, 이용자와 판매자 사이에 성립된 거래와 관련된 책임과 이용자 및 판매자가 제공한 정보에 대한 책임은 해당 이용자와 판매자가 직접 부담합니다.
                                     <br>
                                     ② voda는 판매자가 등록한 상품 등의 내용과 거래조건에 대해서 어떠한 보증이나 대리를 하지 않습니다. voda는 이용자와 판매자 간의 모든 행위(거래행위 포함)와 관련하여 판매 또는 구매 의사의 존부 및 진정성, 등록 상품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에 대한 비침해성, 이용자 또는 판매자가 입력하는 정보 및 그 정보를 통하여 연결된 웹사이트에 게재된 자료의 진실성 또는 적법성 등에 대하여 보증하지 아니하며, 이와 관련된 위험과 책임은 해당 당사자들이 부담합니다.
                                     <br>
                                     ③ voda는 이용자 및 판매자의 귀책사유로 서비스 이용에 장애가 발생하는 것에 대하여 책임을 부담하지 아니하고, 이용자가 본인의 개인정보를 타인에게 유출하거나 제공하여 발생하는 피해에 대하여 책임을 부담하지 아니합니다.
                                     <br>
                                     ④ voda는 천재지변, 정보통신설비의 보수, 점검, 교체, 고장 및 통신 장애 등의 사유가 발생한 경우에는 서비스 제공을 일시적으로 중단할 수 있으며, 이와 관련하여 voda의 고의 또는 과실이 없는 한 어떠한 책임도 부담하지 아니합니다.
                                     <br>
                                     ⑤ 제1항 내지 제3항은 voda의 고의 또는 중과실로 인한 손해에 대해서는 적용되지 아니합니다.
                                     <strong class ="tit_main ">VI. 계약 당사자의 의무</strong >
                                     <strong class ="tit_main ">제26조  [개인정보보호]</strong >
                                     ① voda는 이용자의 개인정보 수집시 서비스 제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.
                                     <br>
                                     ② voda는 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.
                                     <br>
                                     ③ voda는 이용자의 개인정보를 수집/이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다.
                                     <br>
                                     ④ voda는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용 목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용/제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.
                                     <br>
                                     ⑤ voda가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보 보호책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 개인정보보호법 제39조의3이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
                                     <br>
                                     ⑥ 이용자는 언제든지 voda가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 voda는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 voda는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
                                     <br>
                                     ⑦ voda는 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
                                     <br>
                                     ⑧ voda 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
                                     <br>
                                     ⑨ voda는 개인정보의 수집/이용/제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집/이용/제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집/이용/제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.
                                     <strong class ="tit_main ">제27조  [voda의 의무]</strong >
                                     ① voda는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 상품 등 제공하기 위하여 최선을 다하여야 합니다.
                                     <br>
                                     ② voda는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.
                                     <br>
                                     ③ voda가 상품이나 용역에 대하여 표시·광고의 공정화에 관한 법률 제3조 소정의 부당한 표시/광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.
                                     <br>
                                     ④ voda는 이용자가 동의하지 않은 영리목적의 광고성 전자우편을 발송하지 않습니다.
                                     <strong class ="tit_main ">제28조  [회원의 ID 및 비밀번호에 대한 의무]</strong >
                                     ① ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.
                                     <br>
                                     ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
                                     <br>
                                     ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 voda에 통보하고 voda의 안내가 있는 경우에는 그에 따라야 합니다.
                                     <strong class ="tit_main ">VII. 기타</strong >
                                     <strong class ="tit_main ">제29조  [이용자의 의무]</strong >
                                     이용자는 다음 행위를 하여서는 안 됩니다.
                                     <br>
                                     1. 회원등록 신청 또는 변경시 허위 내용의 등록
                                     <br>
                                     2. 타인의 정보 도용
                                     <br>
                                     3. voda에 게시된 정보의 변경
                                     <br>
                                     4. voda가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
                                     <br>
                                     5. voda 기타 제3자의 저작권 등 지식재산권에 대한 침해
                                     <br>
                                     6. voda 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
                                     <br>
                                     7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 사이버몰에 공개 또는 게시하는 행위
                                     <br>
                                     8. 회원이 voda가 제공하는 서비스를 이용하지 아니하고 판매자와 직접 거래하는 행위(이하 “직거래”라 함) 또는 이를 유도하는 행위
                                     <br>
                                     9. voda 또는 판매자의 판매 활동을 방해하거나 voda를 이용하여 부당한 이득을 취하는 등 통상적인 전자상거래 관행에 부합하지 않는 거래상의 부정 행위
                                     <strong class ="tit_main ">제30조  [지식재산권] </strong >
                                     ① voda가 작성한 콘텐츠, 상품페이지(사진 포함)를 비롯한 일체의 저작물에 대한 저작권 기타 지식재산권은 voda가 보유하며, 회원이 등록 또는 게시한 상품 후기, 콘텐츠 등 게시물(이하 “게시물”이라 함)에 대한 저작권 기타 지식재산권은 회원이 보유합니다.
                                     <br>
                                     ② 이용자는 voda의 서비스를 이용하는 과정에서 얻은 정보나 자료 중 voda에게 지식재산권이 귀속된 정보나 자료를 voda의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 다른 목적(특히 영리 목적)으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
                                     <br>
                                     ③ voda는 회원과 타인의 지식재산권이 서로 존중되고 보호받을 수 있도록 노력할 책임이 있고, 특히 타인에 의해 회원의 지식재산권 침해가 확인될 경우 즉시 회원의 권리 보호를 위하여 필요한 조치를 취하고 이를 회원에게 통지하는 등 회원이 게시한 게시물의 보호를 위하여 최선을 다하겠습니다.
                                     <br>
                                     ④ 회원은 본인이 사이버몰 내에 등록 또는 게시한 게시물과 관련하여 합리적인 범위 내에서의 다음 각 호의 사용행위를 허락합니다(기존 회원의 경우 이 약관 개정 전 게시한 게시물을 포함합니다).
                                     <br>
                                     1. 다른 회원의 동 게시물 사용
                                     <br>
                                     2. voda가 동 게시물을 검색결과로 사용
                                     <br>
                                     ⑤ 회원은 본인이 사이버몰 내에 등록 또는 게시한 게시물(기존 회원의 경우 이 약관 개정 전 게시한 게시물을 포함합니다)을 회사가 국내 또는 국외에서 다음 각 호의 목적에 따라 필요한 범위 내에서 해당 게시물을 편집(수정, 복제, 배포 등을 의미하며 이에 한정하지 아니함) 및 사용하는 것을 허락합니다.
                                     <br>
                                     1. 서비스 내에서 게시물을 사용하거나, 서비스를 홍보 또는 마케팅하기 위한 목적으로 인터넷, 모바일, SNS를 포함한 온ᆞ오프라인 채널을 통해 게시물의 내용을 보도, 방영하는 경우
                                     <br>
                                     2. 게시물을 복제ᆞ전송ᆞ전시하는 방법으로 제휴서비스에서 게시물을 제공하는 경우
                                     <br>
                                     ⑥ 전항에도 불구하고 회원은 언제든지 voda에게 자신이 게시한 게시물에 대한 삭제, 비공개, 사용중단 등을 요청할 수 있고, voda는 제8조에 정한 방법으로 회원에게 콘텐츠의 사용 내용을 통지할 수 있습니다.
                                     <strong class ="tit_main ">제31조  [게시물 정책]</strong >
                                     ① 회원이 사이버몰에 등록 또는 게시한 게시물에 대한 모든 책임은 회원에게 있습니다. 회원은 본인이 등록 또는 게시한 게시물이 다음 각호의 어느 하나에 해당하지 아니함을 보증하며, voda는 회원의 게시물이 다음 각호의 어느 하나에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.
                                     <br>
                                     1. 타인을 모욕, 비방, 비하하거나 타인의 명예를 훼손하는 게시물
                                     <br>
                                     2. 범죄 및 불법 행위에 악용될 수 있는 정보를 담고 있는 게시물
                                     <br>
                                     3. 타인의 초상권, 저작권, 상표권 등 권리를 침해하는 게시물
                                     <br>
                                     4. 음란성 및 혐오성 게시물(그러한 내용이 담긴 웹사이트, 앱 등으로 연결될 수 있는 게시물을 포함)
                                     <br>
                                     5. 어린이와 청소년의 정신적, 신체적 건강을 해칠 우려가 있는 선정적인 내용을 담은 게시물
                                     <br>
                                     6. 특정인의 개인정보가 노출된 게시물
                                     <br>
                                     7. 특정 상품 등을 소개하여 판매하거나, 이를 구매, 사용하도록 권하거나 연락을 유도하는 등 직∙간접적으로 영리추구를 위한 내용을 담고 있는 게시물
                                     <br>
                                     8. 사이버몰의 이용 목적에 부합하지 않거나, 해당 서비스 또는 게시판의 취지와 무관한 내용의 게시물
                                     <br>
                                     9. 특정 단어나 문구를 단순 반복하는 등의 비정상적인 게시물
                                     <br>
                                     10. 악성코드나 스파이웨어 등이 실행되어 다른 이용자, voda, 판매자 기타 제3자의 시스템 성능 저하, 개인정보 유출 등의 피해를 줄 수 있는 악의적인 코드를 담고 있는 게시물
                                     <br>
                                     11. voda의 영업을 방해하는 내용의 게시물
                                     <br>
                                     12. 기타 이 약관 또는 법령에 위배되거나 공서양속에 반하는 내용의 게시물
                                     <br>
                                     ② 회원의 게시물이 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 및 저작권법 등 관련 법령에 위반되는 내용을 포함하는 경우, 권리자는 관련 법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, voda는 관련 법령에 따라 조치를 취하여야 합니다.
                                     <br>
                                     ③ voda는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 voda 정책 및 관련 법령에 위반되는 경우에는 관련 법령에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다.
                                     <br>
                                     ④ 이 조에 따른 세부절차는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 및 저작권법 등 관련 법령이 규정한 범위 내에서 voda가 정하는 정책에 따릅니다.
                                     <strong class ="tit_main ">제32조  [면책조항]</strong >
                                     ① voda는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
                                     <br>
                                     ② voda는 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
                                     <br>
                                     ③ voda는 이용자가 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않으며, 그 밖의 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.
                                     <br>
                                     ④ voda는 이용자가 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다.
                                     <br>
                                     ⑤ voda는 이용자 간 또는 이용자와 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임을 지지 않습니다.
                                     <br>
                                     ⑥ voda의 고의 또는 중과실로 인한 손해에 대해서는 제1항, 제3항 내지 제5항에 불구하고 voda가 책임을 부담합니다. 제2항의 경우에는 voda의 고의 또는 과실로 인한 손해에 대해 위와 같습니다.
                                     <strong class ="tit_main ">제33조  [분쟁해결]</strong >
                                     ① voda는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치/운영합니다.
                                     <br>
                                     ② voda는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.
                                     <br>
                                     ③ voda와 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시/도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.
                                     <strong class ="tit_main ">제34조  [관할 및 준거법]</strong >
                                     ① voda와 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소를, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.
                                     <br>
                                     ② voda와 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.
                                     <strong class ="tit_main ">* 부칙</strong >
                                     1. 이 약관은 2022년 9월 5일부터 시행됩니다.
                                     <br>
                                     2. 2021년 6월 22일부터 시행되던 종전의 약관은 이 약관으로 대체됩니다.
                                 </div>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                    </div>
                </div>
            </div>
        </div>        

    <!-- Modal2 -->
    <div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="wrapper">
                    <h1 id="terms">개인정보 수집·이용 동의(필수)</h1>
                    <div class="scroll_wrapper box_tbl">
                        <table>
                            <caption class="screen_out">개인정보 수집·이용 동의 (필수)</caption>
                                <colgroup>
                                    <col width="50%">
                                    <col width="25%">
                                    <col width="25%">
                                </colgroup>
                            <thead>
                                <tr>
                                    <th class="tit1" scope="row">수집 목적</th>
                                    <th class="tit2" scope="row">수집 항목</th>
                                    <th class="tit3" scope="row">보유 기간</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>회원 가입의사 확인, 이용자 식별 및 본인여부, 회원자격 유지·관리, 계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 처리, 부정이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행, 서비스 이용 및 상담, 문의, 후기 등 원활한 의사소통 경로 확보, 맞춤형 회원 서비스 제공, 거점 기반 서비스 제공</td>
                                    <td>이름, 아이디, 비밀번호, 휴대폰번호, 이메일, 주소</td>
                                    <td class="emph">회원 탈퇴 <br>즉시 파기 <br><br>부정이용 방지를 위하여 30일 동안 보관 (아이디, 휴대폰 번호) 후 파기 </td>  
                                </tr>
                                <tr>
                                    <td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
                                    <td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자, OS/ 앱 버전)</td>
                                    <td class="emph">회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
                                </tr>
                            </tbody>
                        </table>
                    <p class="txt_service">
                    서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.
                    </p>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                </div>
            </div>
        </div>
    </div>        
    <!-- Modal3 -->
    <div class="modal fade" id="staticBackdrop3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="wrapper">
                    <h1 id="terms">개인정보 수집·이용 동의(선택)</h1>
                        <div class="scroll_wrapper box_tbl">
                            <table>
                                <caption class="screen_out">개인정보의 수집 및 이용목적</caption>
                                <colgroup><col width="50%">
                                    <col width="25%">
                                    <col width="25%">
                                </colgroup><thead>
                                <tr>
                                    <th class="tit1" scope="row">수집 목적</th>
                                    <th class="tit2" scope="row">수집 항목</th>
                                    <th class="tit3" scope="row">보유 기간</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>맞춤형 회원 서비스 제공</td>
                                    <td>성별, 생년월일</td>
                                    <td class="emph">회원 탈퇴<br> 즉시 파기</td>
                                </tr>
                                </tbody>
                            </table>
                        <p class="txt_service">
                        동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.
                        </p>
                        </div>
                </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
                    </div>
                <!-- <h5 class="modal-title" id="staticBackdropLabel">개인정보 수집·이용 동의(선택)</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                ...
                </div> -->
            </div>
        </div>
    </div>    
    
</div>


<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- 모달 script -->
    <script>
        $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').trigger('focus')
    })
    </script>

<!-- 약관 동의 체크 (전체 항목 체크 시 모두 체크 버튼 활성화) -->
    <script>
        window.onload = function(){
            var checkWrap = document.getElementById('checkWrap'),
                check = checkWrap.getElementsByTagName('input');
            checkWrap.addEventListener('click', function(e){
                var target = e.target,
                    checkNum = 0;
                if(target === check[0]){
                    if(target.checked){
                        for(var i = 1;i < check.length;i++){
                            check[i].checked = true;
                        };
                    }else{
                        for(var i = 1;i < check.length;i++){
                            check[i].checked = false;
                        };
                    };
                }else{
                    for(var i = 1;i < check.length;i++){
                        if(check[i].checked){
                            checkNum++;
                        };
                    };
                    if(checkNum >= check.length - 1){
                        check[0].checked = true;
                    }else{
                        check[0].checked = false;
                    };
                };
            });
        };
    </script>

<!-- 유효성 검사 -->
<script>
//모든 공백 체크 정규식
    var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9]{6,16}$/;
	// 비밀번호 정규식
    var pwJ = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{10,}$/; 
	// var pwJ = /^[A-Za-z0-9][~!@#$%^&*()_+|<>?:{}]{10,}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

    // 이름
    $("#user_name").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#name_check").text('');
				$("#name_check").attr('style', 'visibility:hidden;');
		} else {
			$('#name_check').text('이름을 입력해주세요');
			$("#name_check").attr('style', 'visibility:visible;');
			$('#name_check').css('color', 'red');
		}
	});

    // 휴대전화
    $('#user_phone').blur(function(){
		if(phoneJ.test($(this).val())){
			console.log(phoneJ.test($(this).val()));
			$("#phone_check").text('');
			$('#phone_check').attr('style', 'visibility:hidden;');

		} else {
			$('#phone_check').text('휴대폰 번호를 확인해주세요');
			$('#phone_check').attr('style', 'visibility:visible;');
			$('#phone_check').css('color', 'red');
		}
	});

    // 이메일
    $('#user_email').blur(function(){
        if(mailJ.test($(this).val())){
            console.log(nameJ.test($(this).val()));
            $("#email_check").text('');
        } else {
            $('#email_check').text('이메일 형식으로 입력해 주세요');
            $('#email_check').css('color', 'red');
        }
    });

    // 아이디
    $('#user_id').blur(function(){
		if(idJ.test($(this).val())){
			console.log(idJ.test($(this).val()));
			$("#id_check").text('');
		} else {
			$('#id_check').text('6자 이상 16자 이하 영문 혹은 영문과 숫자를 조합');
			$('#id_check').css('color', 'red');
		}
	});
    
    // 비밀번호
    $('#user_password').blur(function(){
		if(pwJ.test($(this).val())){
			console.log(pwJ.test($(this).val()));
			$("#password_check").text('');
			$('#password_check').attr('style', 'visibility:hidden;');
		} else {
			$('#password_check').text('비밀번호를 확인해 주세요');
			$('#password_check').attr('style', 'visibility:visible;');
			$('#password_check').css('color', 'red');
		}
	});
        
</script>

<!-- 비밀번호 재확인 -->
<script>
$(document).ready(function () {
    $("#user_password_retype").change(function(){
		var p1 = $("#user_password");
		var p2 = $("#user_password_retype");
		
		if(p1.val() != p2.val()){
			$(".mismatch-message").text("동일한 비밀번호를 입력해 주세요.");
			$(".mismatch-message").attr('style', 'visibility:visible;');
            $(".mismatch-message").attr('style', 'color: red');

		}else{
			$(".mismatch-message").text("");
			$(".mismatch-message").attr('style', 'visibility:hidden;');
		}
	});
});

</script>

    
<!-- 생일 유효성 검사 -->
<script>
var birthJ = false;
	
	// 생년월일	birthJ 유효성 검사
	$('#css-birth1').blur(function(){
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
	    var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	    var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
	    var today = new Date(); // 날짜 변수 선언
	    var yearNow = today.getFullYear(); // 올해 연도 가져옴
		
            if (dateStr.length <=8) {
                // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
                if (1900 > year || year > yearNow){
                    
                    $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red');
                    
                }else if (month < 1 || month > 12) {
                        
                    $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red'); 
                
                }else if (day < 1 || day > 31) {
                    
                    $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red'); 
                    
                }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
                    
                    $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red'); 
                    
                }else if (month == 2) {
                    
                    var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
                    
                    if (day>29 || (day==29 && !isleap)) {
                        
                        $('#birth_check').text('생년월일을 확인해주세요');
                        $('#birth_check').css('color', 'red'); 
                    
                    }else{
                        $('#birth_check').text('');
                        birthJ = true;
                    }//end of if (day>29 || (day==29 && !isleap))
                    
                }else{
                    
                    $('#birth_check').text(''); 
                    birthJ = true;
                }//end of if
                
                }else{
                    //1.입력된 생년월일이 8자 초과할때 :  auth:false
                    $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red');  
                }
		}); //End of method /*
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

<!--  아이디 중복 체크 -->
<script>
	$(document).ready(() => {
		$("#btn_duplicate").on("click", () => {
			let user_id = $("#user_id").val().trim();
			
			var $user_id = $("#user_id");
			if (/^[a-z0-9]{6,16}$/.test($user_id.val()) == false) {
				alert("6자 이상 16자 이하 영문 혹은 영문과 숫자를 조합");
				return;
			} 
			
			$.ajax({
				type: "POST",
				url: "${ path }/member/idCheck",
				dataType: "json",
				data: {
					user_id // "userId": userId
				},
				success: (obj) => {
					console.log(obj);
					
					if(obj.duplicate === true) {
						alert("이미 사용중인 아이디 입니다.")
					} else if(obj = "") {
						alert("아이디를 입력해 주세요.")
					} else {
						$("[name=idTest]").val("1");
						alert("사용 가능한 아이디 입니다.")
					}
				}, 
				error: (error) => {
					console.log(error);
				}
			});
		});
	});
	
</script>



<!--  이메일 중복 체크 -->
<script>
	$(document).ready(() => {
		$("#btn_duplicate_email").on("click", () => {
			let user_email = $("#user_email").val().trim();
			
			var $user_email = $("#user_email");
			if (/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test($user_email.val()) == false) {
				alert("이메일 형식으로 입력해 주세요");
				return;
			} 
			
			$.ajax({
				type: "POST",
				url: "${ path }/member/emailCheck",
				dataType: "json",
				data: {
					user_email 
				},
				success: (obj) => {
					console.log(obj);
					
					if(obj.duplicate === true) {
						alert("이미 사용중인 이메일 입니다.")
					} else {
						$("[name=emailTest]").val("1");
						alert("사용 가능한 이메일 입니다.")
					}
				}, 
				error: (error) => {
					console.log(error);
				}
			});
		});
	});
	
</script>

<!-- 회원 가입 클릭 시 값 체크  -->
<script>
$(document).ready(function(){
	$("#btn_final_join").click(function(){
		
		//아이디 중복검사
		if($("[name=idTest]").val() != "1"){
			alert("아이디 중복 체크를 해주세요");
			$("#m_id").focus();
			
			return false;
		}
		
		//비밀번호 작성 여부(유효성 검사 여부)
		if($("#password_check").css("visibility") != "hidden"){
			alert("비밀번호를 입력해 주세요");
			$("#user_password").focus();
			
			return false;
		}
		
		if($("#password_check2").css("visibility") != "hidden"){
			alert("비밀번호를 입력해 주세요");
			$("#user_password_retype").focus();
			
			return false;
		}
		
		//이름 작성 여부(유효성 검사 여부)
		if($("#name_check").css("visibility") != "hidden"){
			alert("이름을 입력해 주세요");
			$("#user_name").focus();
			
			return false;
		}
		
		//이메일 중복검사
		if($("[name=emailTest]").val() != "1"){
			alert("이메일 중복 체크를 해주세요");
			
			return false;
		}
		
		
		//휴대폰 작성 여부(유효성 검사 여부)
		if($("#phone_check").css("visibility") != "hidden"){
			alert("휴대폰번호를 입력 해주세요");
			$("#user_phone").focus();
			
			return false;
		}
		
		//주소 작성 여부
		if($("#sample6_detailAddress").val != '') {
			alert("주소를 검색하여 입력해주세요");
			$("#sample6_detailAddress").focus();
			
			return false;
		}

		if($("#flexCheckDefault1").is(":checked") == false){
            alert("필수 이용 약관을 동의해 주세요.");
            
            return;
        
		}else if($("#flexCheckDefault2").is(":checked") == false){
            alert("필수 이용 약관을 동의해 주세요.");
            
            return;
        
		}else if($("#flexCheckDefault4").is(":checked") == false){
            alert("필수 이용 약관을 동의해 주세요.");
            
            return;
        }
	});
});

</script>
<!-- 회원 가입 버튼 : 필수 이용 약관 동의

<script>
    $(document).ready(function(){

        $("#btn_final_join").click(function(){    
            if($("#flexCheckDefault1").is(":checked") == false){
                alert("필수 이용 약관을 동의해 주세요.");
                return;
            }else if($("#flexCheckDefault2").is(":checked") == false){
                alert("필수 이용 약관을 동의해 주세요.");
                return;
            }else if($("#flexCheckDefault4").is(":checked") == false){
                alert("필수 이용 약관을 동의해 주세요.");
                return;
            }
        });    
    });
</script>
-->
</body>
</html>
