<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ManagerHomePage
    Created on : Oct 17, 2021, 5:28:02 PM
    Author     : Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- Site Metas -->
        <title>Manager Homepage</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- Colors CSS -->
        <link rel="stylesheet" href="css/colors.css">
        <!-- ALL VERSION CSS -->
        <link rel="stylesheet" href="css/versions.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Modernizer for Portfolio -->
        <script src="js/modernizer.js"></script>

        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="./img/logo_web.png" type="image/x-icon">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/service.css">
        <style>
            .TopBar {
                width: 100%;
                height: 50px;
                background-color: white;
                position: sticky;
                top: 0;
                display: flex;
                align-items: center;
                z-index: 999;

            }

            .TopLeft,
            .TopRight {
                flex: 1;
                display: flex;
                align-items: center;
                justify-content: center;

            }

            .topicon {
                font-size: 18px;
            }

            .TopCenter {
                flex: 6;

            }

            .topList {
                display: flex;
                justify-content: center;
                margin: 0;
                padding: 0;
                list-style: none;
            }

            .topListItem {
                margin-right: 20px;
                font-size: 18px;
                font-weight: 300;
                cursor: pointer;

            }

            .ListCard {
                margin-top: 20px;
                height: 300px;
                width: 100%;

                padding-top: 45px;
            }

            .card_1st {
                height: 100%;
                background-color: green;
                opacity: 0.3;
            }

            .card:first-child {
                margin-left: 25px;
            }

            .card-content {
                text-align: center;
                font-size: 100px;
                color: white;
            }

            .topListItem:hover {
                color: lightgray;
            }

            .ListCard_2th {
                width: 100%;
                margin-top: 20px;
                display: flex;
                padding: 10px;

                height: 400px;
            }

            .Card_2th {
                padding-top: 10px;
                border: 1px solid black;
                border-radius: 10px;
                min-height: 100%;
            }
            .card_content{
                padding-left: 10px;
                height: 300px;
                padding-bottom: 0px;
                overflow-y: scroll;
            }
        </style>
    </head>

    <body>
        <jsp:include page="HeaderManager.jsp"/>
    <div style="margin-top: 200px; ">
        <div class="row ListCard">
            <div class="col-sm-4 ">
                <div class="card card_1st">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center; color: white;">RESERVATION</h5>
                        <p class="card-text card-content">${totalRe}</p>

                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card card_1st">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center; color: white;">INCOME</h5>
                        <p class="card-text card-content">${income}$</p>

                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card card_1st">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center; color: white;">TOTAL ACCOUNT </h5>
                        <p class="card-text card-content">${totalCu}</p>

                    </div>
                </div>
            </div>
        </div>
        <div class="row ListCard_2th">
            <div class="col-sm-6">
                <div class="card Card_2th">
                    <h5 style="text-align: center;">PENDING RESERVATION</h5>
                    <div class="card_content">
                        <c:forEach var="o" items="${list}">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5><b>RESERVATIONID:</b> ${o.reID}</h5>
                                    <h5><b>DATE-CREATE:</b> ${o.date}</h5>
                                </div>
                                <div class="col-md-6">
                                    <h5><b>TOTAL PRICE:</b> ${o.totalprice}</h5>
                                    <h5><b>MAIL:</b> ${o.mail}</h5>
                                    <h5>
                                        <b>STATUS:</b>
                                        <c:if test="${o.status==1}" ><c:out value="Submited"/>
                                        </c:if>
                                    </h5>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
            <div class="col-sm-6" style="text-align: center;">
                <div class="card Card_2th">
                    <h5>NEWEST POST</h5>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
