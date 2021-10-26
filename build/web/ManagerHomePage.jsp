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
        <title>Life Care - Responsive HTML5 Multi Page Template</title>
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
        <title>Document</title>
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
        <header>
            <div class="header-top fadeIn" >
                <div class="container">
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
                    <div class="right-header">
                        <div class="header-info">
                            <div class="info-inner">
                                <span class="icontop"><img src="images/phone-icon.png" alt="#"></span>
                                <span class="iconcont"><a href="tel:800 123 456">800 123 456</a></span>	
                            </div>
                            <div class="info-inner">
                                <span class="icontop"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                <span class="iconcont"><a data-scroll href="mailto:info@yoursite.com">info@Lifecare.com</a></span>	
                            </div>
                            <div class="info-inner">
                                <span class="icontop"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                                <span class="iconcont"><a data-scroll href="#">Daily: 7:00am - 8:00pm</a></span>	
                            </div>
                            <!--                        <div class="info-inner">
                                                        <ul class="list-main">                                
                            <c:choose>
                                <c:when test= "${sessionScope.manager_account == null}">
                                    <li><i class="fa fa-user-circle"></i> <a href="#">My account</a></li>
                                </c:when>
                                <c:otherwise>
                                <li><i class="fa fa-user-circle"></i> <a href="#">${sessionScope.manager_account.username}</a></li>
                                </c:otherwise>
                            </c:choose>
                            <c:choose >
                                <c:when test = "${sessionScope.manager_account == null}">
                                <li><i class="fa fa-sign-in"></i><a href="login">Login</a></li>
                                </c:when>
                                <c:otherwise>
                            <li><i class="fa fa-sign-in"></i><a href="validateCustomer">Logout</a></li>
                                </c:otherwise>
                            </c:choose>
                </ul>
            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom fadeIn" >
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a  href="index.html">HOME</a></li>
                            <li><a  href="">RESERVATION</a></li>
                            <li><a data-scroll href="PostControler">POST</a></li>
                            <li><a data-scroll href="#service">SLOT</a></li>
                            <li><a data-scroll href="Medicine">MEDICINE</a></li>
                            <li><a data-scroll href="#price">FEEDBACK</a></li>

                        </ul>
                    </div>
                </nav>
                <div class="serch-bar ">
                    <div class="col-md-7" id="custom-search-input">
                        <div class="input-group col-md-12">
                            <input type="text" class="form-control input-lg" placeholder="Search Here" />
                            <!--                            <span class="input-group-btn">
                                                            <button class="btn btn-info btn-lg" type="button">
                                                                <i class="fa fa-search" aria-hidden="true"></i>
                                                            </button>
                                                        </span>-->
                        </div>

                    </div>
                    <c:choose>
                        <c:when test= "${sessionScope.manager_account != null}">
                            <div class="col-md-1">
                                <a href="Userprofile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
                            </div>
                            <div class="col-md-1">
                                <a href="validateCustomer"><span class="glyphicon glyphicon-log-out align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>
                            </div>

                        </c:when>
                        <c:otherwise>
                            <div class="col-md-1">
                                <a href="login"><span class="glyphicon glyphicon-log-in align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </header>
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
