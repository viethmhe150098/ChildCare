<%-- 
    Document   : CustomerDetail
    Created on : Oct 14, 2021, 12:59:59 AM
    Author     : DO THANH TRUNG
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- Site Metas -->
    <title>Customer Detail</title>
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
    <link rel="stylesheet" href="./css/servicedetail.css">
    <!-- [if lt IE 9] -->
</head>
<body class="clinic_version">
    <header>
        <div class="header-top fadeIn">
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
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom fadeIn">
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="ServiceControl">Home</a></li>
                            <li><a data-scroll href="#about">About us</a></li>
                            <li><a data-scroll href="ServiceControl">Services</a></li>
                            <li><a data-scroll href="#doctors">Doctors</a></li>
                            <li><a data-scroll href="#price">Price</a></li>
                            <li><a data-scroll href="BlogController">Blogs</a></li>
                            <li><a data-scroll href="#getintouch">Contact</a></li>
                        </ul>
                    </div>
                </nav>

                <form action="searchCustomerControl" method="get">
                    <div class="serch-bar ">
                        <div class="col-md-7" id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input name="name" type="text" class="form-control input-lg" placeholder="Search Here" />
                            </div>

                        </div>
                        <c:choose>
                            <c:when test= "${sessionScope.manager_account != null}">
                                <div class="col-md-1">
                                    <a href="ManagerProfile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
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
                </form>
            </div>
        </div>
    </header>

    <div id="home" class="parallax first-section wow fadeIn" data-stellar-background-ratio="0.4" style="background-image:url('images/slider-bg.png');">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="text-contant">
                        <h2>
                            <span class="center"><span class="icon"><img src="images/icon-logo.png" alt="#" /></span></span>
                            <a href="" class="typewrite" data-period="2000" data-type='[ "Welcome to Life Care", "We Care Your Health", "We are Expert!" ]'>
                                <span class="wrap"></span>
                            </a>
                        </h2>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <link rel="stylesheet" href="servicedetail.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
    <div class="container">
        <div class="heading">
            <span  class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
            <h2>The Customer Detail</h2>
        </div>
        <div class="row">
            <div class="col-md-5">
                <div class="project-info-box mt-0">
                    <h2>CUSTOMER NAME: ${listC.first_name} ${listC.last_name}</h2>
                    <p style="font-size: medium" class="mb-0">CUSTOMER ID: ${listC.cID}</p>
                </div><!-- / project-info-box -->

                <div class="project-info-box">
                    <p style="font-size: medium"><b>Age:</b> ${listC.age}</p>
                    <p style="font-size: medium"><b>Gender:</b> ${listC.gender ==1?"Male":"Female"}</p>
                    <p style="font-size: medium"><b>Status:</b> ${listC.status ==1?"Active":"Inactive"}</p>
                    <p style="font-size: medium"><b>Address:</b> ${listC.address}</p>
                    <p style="font-size: medium"><b>Email:</b> ${listC.email}</p>
                    <p style="font-size: medium"><b>Phone:</b> ${listC.tel}</p>

                    <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Customer List" style="margin:0;background-color: orange; margin-top: 10px">
                    <a  href="#services"  data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1 " style="margin-top: 5px; font-size: 20px"onclick="document.getElementById('subscribe').style.display = 'block'">Contact with</a>

                </div>
            </div><!-- / column -->

            <div class="col-md-7">
                <img style="padding-top: 20px; height: 150px; width: 150px" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="project-image" class="rounded-circle">
                <div class="mt-3">
                    <h4 style="margin-left: 20px">${listC.first_name} ${listC.last_name}</h4>
                </div>
                <img style="padding-top: 20px; height: 437px" src="images/about_03.jpg" alt="project-image" class="rounded">
            </div><!-- / column -->

<!--            <div class="col-sm-3" style="margin-top: 10px">
                <a  href="#services"  data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1 " style="margin-bottom: 15px;"onclick="document.getElementById('subscribe').style.display = 'block'">Contact with</a>
            </div>-->
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>

    <style>
        /* Base setting, you can remove */

        .modal {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 0;
            background-color: rgba(0, 0, 0, 0.25);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 20px;
        }
        .modal-content {
            min-height: 350px;
            width: 100%;
            max-width: 800px;
            padding: 25px;
            border-radius: 15px;
            position: relative;
            background-color: #fff;
            margin-left: 400px;
            margin-top:200px;
            position: fixed;
            z-index:4;
        }
        .modal-close {
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            top: 10px;
            right: 10px;
            width: 30px;
            height: 30px;
            border-radius: 10rem;
            background-color: #6a5af9;
            color: white;
            cursor: pointer;
        }
        .hotline-phone-ring-wrap {
            position: fixed;
            bottom: 0;
            left: 0;
            z-index: 999999;
        }
        .hotline-phone-ring {
            position: relative;
            visibility: visible;
            background-color: transparent;
            width: 110px;
            height: 110px;
            cursor: pointer;
            z-index: 11;
            -webkit-backface-visibility: hidden;
            -webkit-transform: translateZ(0);
            transition: visibility .5s;
            left: 0;
            bottom: 0;
            display: block;
        }
        .hotline-phone-ring-circle {
            width: 85px;
            height: 85px;
            top: 10px;
            left: 10px;
            position: absolute;
            background-color: transparent;
            border-radius: 100%;
            border: 2px solid #e60808;
            -webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
            animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
            transition: all .5s;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            opacity: 0.5;
        }
        .hotline-phone-ring-circle-fill {
            width: 55px;
            height: 55px;
            top: 25px;
            left: 25px;
            position: absolute;
            background-color: rgba(230, 8, 8, 0.7);
            border-radius: 100%;
            border: 2px solid transparent;
            -webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
            animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
            transition: all .5s;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
        }
        .hotline-phone-ring-img-circle {
            background-color: #e60808;
            width: 33px;
            height: 33px;
            top: 37px;
            left: 37px;
            position: absolute;
            background-size: 20px;
            border-radius: 100%;
            border: 2px solid transparent;
            -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
            animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .hotline-phone-ring-img-circle .pps-btn-img {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }
        .hotline-phone-ring-img-circle .pps-btn-img img {
            width: 20px;
            height: 20px;
        }
        .hotline-bar {
            position: absolute;
            background: rgba(230, 8, 8, 0.75);
            height: 40px;
            width: 180px;
            line-height: 40px;
            border-radius: 3px;
            padding: 0 10px;
            background-size: 100%;
            cursor: pointer;
            transition: all 0.8s;
            -webkit-transition: all 0.8s;
            z-index: 9;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
            border-radius: 50px !important;
            /* width: 175px !important; */
            left: 33px;
            bottom: 37px;
        }
        .hotline-bar > a {
            color: #fff;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            text-indent: 50px;
            display: block;
            letter-spacing: 1px;
            line-height: 40px;
            font-family: Arial;
        }
        .hotline-bar > a:hover,
        .hotline-bar > a:active {
            color: #fff;
        }
        @-webkit-keyframes phonering-alo-circle-anim {
            0% {
                -webkit-transform: rotate(0) scale(0.5) skew(1deg);
                -webkit-opacity: 0.1;
            }
            30% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                -webkit-opacity: 0.5;
            }
            100% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
                -webkit-opacity: 0.1;
            }
        }
        @-webkit-keyframes phonering-alo-circle-fill-anim {
            0% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                opacity: 0.6;
            }
            50% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
                opacity: 0.6;
            }
            100% {
                -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                opacity: 0.6;
            }
        }
        @-webkit-keyframes phonering-alo-circle-img-anim {
            0% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }
            10% {
                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
            }
            20% {
                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
            }
            30% {
                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
            }
            40% {
                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
            }
            50% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }
            100% {
                -webkit-transform: rotate(0) scale(1) skew(1deg);
            }
        }
        @media (max-width: 768px) {
            .hotline-bar {
                display: none;
            }
        }
    </style>

    <div id="subscribe" class="modal" style="display: none;">
        <div class="modal-content">
            <i class="fa fa-times modal-close" onclick="document.getElementById('subscribe').style.display = 'none'"></i>
            <h2>Contact <i class="fas fa-phone"></i>    </h2>
            <p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
            <h4> <i class="fas fa-envelope"></i> Email: ${listC.email}</h4>
            <h4> <i class="fas fa-phone"></i>Phone: ${listC.tel}</h4>
            <input type="password" class="form-control" id="inputMatKhau" placeholder="Enter e-mail" style="margin: top 7px;
                   margin-bottom: 7px;">
            <p><button style="margin-top:7px" type="button"
                       onclick="document.getElementById('subscribe').style.display = 'block'"
                       class="w3-button w3-block w3-red">Subscribe</button></p>
            <div class="hotline-phone-ring-wrap">
                <div class="hotline-phone-ring">
                    <div class="hotline-phone-ring-circle"></div>
                    <div class="hotline-phone-ring-circle-fill"></div>
                    <div class="hotline-phone-ring-img-circle">
                        <a href="tel:${listC.tel}" class="pps-btn-img">
                            <img src="https://nguyenhung.net/wp-content/uploads/2019/05/icon-call-nh.png" alt="Gọi điện thoại" width="50">
                        </a>
                    </div>
                </div>
                <div class="hotline-bar">
                    <a href="tel:${listC.tel}">
                        <span class="text-hotline">${listC.tel}</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
    <!-- all js files -->
    <script src="js/all.js"></script>
    <!-- all plugins -->
    <script src="js/custom.js"></script>
    <!-- map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="./js/main.js"></script>
</body>   
</html>