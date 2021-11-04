<%-- 
    Document   : MedicalExamination
    Created on : Nov 1, 2021, 10:30:18 PM
    Author     : DO THANH TRUNG
--%>

<%@page import="java.sql.ResultSet"%>
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
    <title>Medical Examination</title>
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

    <!--<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">-->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main1.css">

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
    <!-- [if lt IE 9] -->
</head>
<style>
    /* You can remove these code below*/
    :root {
        --primary: #08aeea;
        --secondary: #13D2B8;
        --purple: #bd93f9;
        --pink: #ff6bcb;
        --blue: #8be9fd;
        --gray: #333;
        --font: "Poppins", sans-serif;
        --gradient: linear-gradient(40deg, #ff6ec4, #7873f5);
        --shadow: 0 0 15px 0 rgba(0,0,0,0.05);
    }*{box-sizing:border-box;}input,button,textarea{border:0;outline:none;}
    /* Main code */

    .search-auto {
        max-width: 50rem;
        margin: 2rem auto;
        position: relative;
    }
    .search-auto-input {
        width: 100%;
        display: block;
        padding: 1.5rem;
        font-family: "Poppins";
        color: #333;
        border-radius: 4px;
        outline: none;
        background-color: transparent;
        transition: 0.2s ease;
        border: 1px solid transparent;
        box-shadow : var(--shadow);
    }
    .search-auto-input:focus {
        border-color: #ff695b;
        box-shadow: 0 0 0 2px #ffe0dd;
    }
    .search-auto-input:focus + .search-auto-list {
        opacity: 1;
        visibility: visible;
    }
    .search-auto-list {
        position: absolute;
        top: 100%;
        left: 0;
        width: 100%;
        background-color: white;
        padding: 1.5rem;
        box-shadow : var(--shadow);
        border-radius: 8px;
        opacity: 0;
        visibility: hidden;
        transition: 0.2s ease;
    }
    .search-auto-item {
        padding: 1.5rem;
        cursor: pointer;
        border-radius: inherit;
        transition: 0.2s ease;
    }
    .search-auto-item:hover {
        color: #ff695b;
        background-color: #fafafa;
    }
</style>
<body class="clinic_version">



    <header>
        <div class="header-top wow fadeIn">
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
        <div class="header-bottom wow fadeIn">
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

                <form action="searchMedical" method="get">
                    <div class="serch-bar ">
                        <div class="col-md-7" id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input name="name" type="text" class="form-control input-lg" placeholder="Search Here" />
                            </div>

                        </div>
                        <c:choose>
                            <c:when test= "${sessionScope.staff_account != null}">
                                <div class="col-md-1">
                                    <a href="StaffProfile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
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
    <!-- end section -->

    <div class="container">
        <div class="heading">
            <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
            <h2>The Medical Examination</h2>
        </div>
        <!-- end title -->

        <form action="SearchByService" method="post">
            <div class="search-auto">
                <input
                    type="text" name="nameService"
                    class="search-auto-input"
                    placeholder="Typing something..."
                    />
                <div class="search-auto-list">
                    <%ResultSet rs1 = (ResultSet) request.getAttribute("medical_service");%>
                    <%while (rs1.next()) {%>

                    <div class="search-auto-item"><%=rs1.getString(3)%></div>
                    <%}%>

                </div>
            </div>
        </form>

        <div>
            <form action="filterMedical" method="get">
                <p style="color: #20B2AA; font-weight: bold">From:</p>
                <input name="datefrom" type="date" placeholder="yyyy-MM-dd"/> 
                <p style="color: #20B2AA; font-weight: bold">To:</p>
                <input name="dateto" type="date" placeholder="yyyy-MM-dd"/>
                <input style="background-color: #20B2AA; color: white; margin-bottom: 10px" class="btn btn-success" type="submit" value="Filter">
                <br>
            </form>
        </div>

        <table class="table table-dark" style="background: #333;border-radius:10px">
            <thead>
                <tr>
                    <th>RESERVATION ID</th>
                    <th>SERVICE NAME</th>
                    <th>DATE</th>
                    <th>MEDICINE NAME</th>
                    <th>MEDICINE DESCRIPTION</th>
                </tr>
            </thead>
            <tbody>
                <%ResultSet rs2 = (ResultSet) request.getAttribute("medical");%>
                <%while (rs2.next()) {%>
                <tr>
                    <td><%=rs2.getInt(1)%></td>
                    <td><%=rs2.getString(3)%></td>
                    <td><%=rs2.getString(2)%></td>
                    <td><%=rs2.getString(4)%></td>
                    <td><%=rs2.getString(5)%></td>
                </tr>	
                <%}%>
            </tbody>
        </table>
        <div class="center">
            <button style="background-color: #07B3F9; margin: 20px 0px; padding: 10px; border-radius: 10%; color: white">ADD NEW MEDICINE</button>
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>
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



    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
        $('.js-pscroll').each(function () {
            var ps = new PerfectScrollbar(this);

            $(window).on('resize', function () {
                ps.update();
            })
        });


    </script>
    <!--===============================================================================================-->
    <script src="js/main1.js"></script>
</body>
</html>
