<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--BootStrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/spacelab/bootstrap.min.css"
        integrity="sha384-F1AY0h4TrtJ8OCUQYOzhcFzUTxSOxuaaJ4BeagvyQL8N9mE4hrXjdDsNx249NpEc" crossorigin="anonymous">
    <style>
        @import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

        * {
            font-family: Pretendard,
                -apple-system, BlinkMacSystemFont,
                system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
        }

        .page-link,
        .form-control {

            box-shadow: none !important;
        }

        input:focus {
            outline: none !important;
        }


        .btn {

            transition: background 0.2s ease-in-out,
                color 0.2s ease-in-out;
            /* 패딩은 주석하쇼 */
            padding: 1px 0.38rem;


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
            padding: 0.60rem;
        }

        .page-link {
            color: #000000;
            font-size: 14.45px;
        }

        /* pagination */
        #pagination {
            margin: 0;
            margin-top: 20px;
            padding: 0;
            text-align: center;

        }

        #pagination li {
            display: inline
        }

        #pagination li a {
            display: inline-block;
            text-decoration: none;
            padding: 3px 7px;
            color: #000000;
            font-size: 14.45px;
        }

        /* Active and Hoverable Pagination */
        #pagination li a {
            border-radius: 5px;
            -webkit-transition: background-color 0.3s;
            transition: background-color 0.3s
        }

        #pagination li a.active {
            background-color: rgb(73, 95, 233);
            color: #fff
        }

        #pagination li a:hover:not(.active) {
            background-color: #ddd;
        }

        .display1 {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .display2 {
            float: right;
            margin-top: -90px;
        }


        /* 인풋, 폼태그 */
        option {
            font-size: 14.5px;
        }

        .form-control1 {
            display: block;
            height: 27.8px;
            padding: 0.2rem 0.7rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;

        }


        .td-hr {
            pointer-events: none;
        }
    </style>

    <!-- common CSS-->
    <link rel="stylesheet" type="text/css" href="../../CSS/Common/headerfooter.css">

    <!--BootStrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>


    <title>question_brd_list</title>

</head>

<body>

    <!-- 내용 전체 컨테이너 -->
    <div class="container my-5">

        <div>
            <h3 style="text-align: center;  color: #000000; font-size: 17px;">문의게시판</h3>
        </div>

        <div class="mt-4">
            <table class="table table-hover">
                <thead>
                    <tr style="text-align: center">
                        <th id="th" style="width: 5%;">번호</th>
                        <th id="th" style="width: 45%;">제목</th>
                        <th id="th" style="width: 10%;">답변</th>
                        <th id="th" style="width: 15%;">작성자</th>
                        <th id="th" style="width: 15%;">날짜</th>
                    </tr>
                </thead>

                <tbody>
                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">1</td>
                        <td id="td" style="text-align: left;">제목1</td>
                        <td id="td">[답변 완료]</td>
                        <td id="td">admin</td>
                        <td id="td">2022-09-06</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">2</td>
                        <td id="td" style="text-align: left;">제목2</td>
                        <td id="td">[답변 완료]</td>
                        <td id="td">작성자2</td>
                        <td id="td">날짜2</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">3</td>
                        <td id="td" style="text-align: left;">제목3</td>
                        <td id="td">[답변 완료]</td>
                        <td id="td">작성자3</td>
                        <td id="td">날짜3</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">4</td>
                        <td id="td" style="text-align: left;">제목4</td>
                        <td id="td"> </td>
                        <td id="td">작성자4</td>
                        <td id="td">날짜4</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">5</td>
                        <td id="td" style="text-align: left;">제목5</td>
                        <td id="td"> </td>
                        <td id="td">작성자5</td>
                        <td id="td">날짜5</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">6</td>
                        <td id="td" style="text-align: left;">제목6</td>
                        <td id="td"> </td>
                        <td id="td">작성자6</td>
                        <td id="td">날짜6</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">7</td>
                        <td id="td" style="text-align: left;">제목7</td>
                        <td id="td"> </td>
                        <td id="td">작성자7</td>
                        <td id="td">날짜7</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">8</td>
                        <td id="td" style="text-align: left;">제목8</td>
                        <td id="td"> </td>
                        <td id="td">작성자8</td>
                        <td id="td">날짜8</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">9</td>
                        <td id="td" style="text-align: left;">제목9</td>
                        <td id="td"> </td>
                        <td id="td">작성자9</td>
                        <td id="td">날짜9</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목10</td>
                        <td id="td"> </td>
                        <td id="td">작성자10</td>
                        <td id="td">날짜10</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목11</td>
                        <td id="td"> </td>
                        <td id="td">작성자11</td>
                        <td id="td">날짜11</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목12</td>
                        <td id="td"> </td>
                        <td id="td">작성자10</td>
                        <td id="td">날짜10</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목13</td>
                        <td id="td"> </td>
                        <td id="td">작성자10</td>
                        <td id="td">날짜10</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목14</td>
                        <td id="td"> </td>
                        <td id="td">작성자10</td>
                        <td id="td">날짜10</td>
                    </tr>

                    <tr style="text-align: center; cursor:pointer;">
                        <td id="td">10</td>
                        <td id="td" style="text-align: left;">제목15</td>
                        <td id="td"> </td>
                        <td id="td">작성자10</td>
                        <td id="td">날짜10</td>
                    </tr>

                    <tr>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                        <td class="td-hr"></td>
                    </tr>

                </tbody>

            </table>
        </div>

        <div class="display1 row my-3">
            <!--Active and Hoverable Pagination-->
            <ul id="pagination">
                <li><a class="" href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#" class="active">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>

        </div>

        <div class="display2">
            <button class="btn btn-greyc text-nowrap" style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"><img
                    src="../../IMG/Community/edit.png" style="height: 20px;"></button>
        </div>

        <div class="col-4 text-right">
        </div>


        <div class="search1 row my-4">
            <div class="col-6 row">
                <div class="col-xs-3 col-sm-3">
                    <select name="searchType" class="form-control1" style="font-size: 14.45px;">
                        <option value="title" selected>제목</option>
                        <option value="title">작성자</option>
                        <option value="title">내용</option>
                        <option value="title">제목+내용</option>
                    </select>
                </div>

                <div class="col-xs-7 col-sm-7 pl-0">
                    <div class="input-group">
                        <input type="text" class="form-control1" style="font-size: 14.45px;">
                        <span class="input-group-btn">
                            <button id="searchBtn" class="btn btn-greyc text-nowrap"
                                style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"><img
                                    src="../../IMG/Community/search.png" style="height: 18px;"></button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</body>

</html>
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>