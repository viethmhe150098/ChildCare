<%-- 
    Document   : ReservationList
    Created on : Oct 7, 2021, 3:03:57 PM
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
    <title>Reservation List</title>
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
<body class="clinic_version">
    <!-- LOADER -->
    <!--    <div id="preloader">
            <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
        </div>-->
    <!-- END LOADER -->
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
                        <div class="info-inner">
                            <ul class="list-main">
                                <c:choose>
                                    <c:when test= "${sessionScope.customer_account == null}">
                                        <!--<li><i class="fa fa-user-circle"></i> <a href="#">My account</a></li>-->
                                    </c:when>
                                    <c:otherwise>
                                        <li><i class="fa fa-user-circle"></i> <a href="Userprofile.jsp">${sessionScope.customer_account.username}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose >
                                        <c:when test = "${sessionScope.customer_account == null}">
                                        <li><i class="fa fa-sign-in"></i><a href="login">Login</a></li>
                                            </c:when>
                                            <c:otherwise>
                                        <li><i class="fa fa-sign-in"></i><a href="validateCustomer">Logout</a></li>
                                            </c:otherwise>
                                        </c:choose>
                            </ul>
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
                            <li><a class="active" href="index.html">Home</a></li>
                            <li><a data-scroll href="#about">About us</a></li
                            <li><a data-scroll href="#blogs">Blogs</a></li>
                            <li><a data-scroll href="#service">Services</a></li>
                            <li><a data-scroll href="#doctors">Doctors</a></li>
                            <li><a data-scroll href="#price">Price</a></li>
                            <li><a data-scroll href="#testimonials">Testimonials</a></li>
                            <li><a data-scroll href="#getintouch">Contact</a></li>
                        </ul>
                    </div>
                </nav>

                <form action="searchReservation" method="get">
                    <div class="serch-bar">
                        <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input name="pname" type="text" class="form-control input-lg" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-info btn-lg" type="submit">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
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
            <h2>The Reservation List</h2>
        </div>
        <!-- end title -->

        <div>
            <form action="filterReservation" method="get">
                From:
                <input name="datefrom" type="text" placeholder="yyyy-MM-dd"/> 
                To: 
                <input name="dateto" type="text" placeholder="yyyy-MM-dd"/>
                <input style="color: red" type="submit" value="Filter">
                <br>
            </form>
        </div>


        <table class="table table-dark" style="background: #333;border-radius:10px">
            <thead>
                <tr>
                    <th>Reservation ID</th>
                    <th>Reservation Date</th>
                    <th>Customer Name</th>
                    <th>Receive Name</th>
                    <th>Total Price</th>
                    <th>Status</th>
                    <th>Receive phone number</th>
                    <th>Service Name</th>
                    <th>Reservation Detail</th>
                </tr>
            </thead>
            <tbody>
                <%ResultSet rs1 = (ResultSet) request.getAttribute("ketQua1");%>
                <%while (rs1.next()) {%>
                <tr>
                    <td><%=rs1.getString(1)%></td>
                    <td><%=rs1.getDate(2)%></td>
                    <td><%=rs1.getString(3)%></td>
                    <td><%=rs1.getString(4)%></td>
                    <td><%=rs1.getDouble(5)%></td>
                    <td><%=(rs1.getInt(6) == 1) ? "Shipped" : "Waiting"%></td>
                    <td><%=rs1.getString(7)%></td>
                    <td><%=rs1.getString(8)%></td>
                    <td><a id="grey" href="reservationDetail?reID=<%=rs1.getString(1)%>">Detail</a></td>
                </tr>	
                <%}%>
            </tbody>
        </table>
    </div>


    <div class="container text-center">
        <ul class="pagination">
            <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>



    <!--<div class="limiter">-->
    <!--    <div class="container-table100">
            <div class="wrap-table100">
                <h2 class="title" style="text-align: center">Reservation List</h2>
                
                
                    <div class="table100-head">
                        <table>
                            <thead>
                                <tr class="row100 head">
                                    <th class="cell100">Reservation ID</th>
                                    <th class="cell100">Reservation Date</th>
                                    <th class="cell100">Customer Name</th>
                                    <th class="cell100">Receive Name</th>
                                    <th class="cell100">Price</th>
                                    <th class="cell100">Status</th>
                                    <th class="cell100">Receive phonenumber</th>
                                    <th class="cell100">Service Name</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
    
                    <div class="table100-body js-pscroll">
                        <table>
                            <tbody>
    <%while (rs1.next()) {%>
    <tr class="row100 body">
        <td class="cell100"><%=rs1.getString(1)%></td>
        <td class="cell100"><%=rs1.getDate(2)%></td>
        <td class="cell100"><%=rs1.getString(3)%></td>
        <td class="cell100"><%=rs1.getString(4)%></td>
        <td class="cell100"><%=rs1.getDouble(5)%></td>
        <td class="cell100"><%=rs1.getInt(6)%></td>
        <td class="cell100"><%=rs1.getString(7)%></td>
        <td class="cell100"><%=rs1.getString(8)%></td>
    </tr>	
    <%}%>
</tbody>
</table>
</div>
</div>								
</div>
</div>      -->

    <!--    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="card card-4">
                <div class="card-body" style="padding: 1rem">
                    <h2 class="title" style="text-align: center">Reservation List</h2>
    
                    <table border="1" style="border-collapse: collapse; padding: 20px; text-align: center">
                        <thead>
                            <tr>
                                <th>Reservation ID</th>
                                <th>Reservation Date</th>
                                <th>Customer Name</th>
                                <th>Receive Name</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Receive phonenumber</th>
                                <th>Service Name</th>
                            </tr>
                        </thead>
    
                        <tbody>
    <%while (rs1.next()) {%>
    <tr>
        <td><%=rs1.getString(1)%></td>
        <td><%=rs1.getDate(2)%></td>
        <td><%=rs1.getString(3)%></td>
        <td><%=rs1.getString(4)%></td>
        <td><%=rs1.getDouble(5)%></td>
        <td><%=rs1.getInt(6)%></td>
        <td><%=rs1.getString(7)%></td>
        <td><%=rs1.getString(8)%></td>
    </tr>
    <%}%>
</tbody>
</table>
</div>
</div>
</div>-->

    <footer id="footer" class="footer-area wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="logo padding">
                        <a href=""><img src="images/logo.png" alt=""></a>
                        <p>Locavore pork belly scen ester pine est chill wave microdosing pop uple itarian cliche artisan.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-info padding">
                        <h3>CONTACT US</h3>
                        <p><i class="fa fa-map-marker" aria-hidden="true"></i> PO Box 16122 Collins Street West Victoria 8007 Australia</p>
                        <p><i class="fa fa-paper-plane" aria-hidden="true"></i> info@gmail.com</p>
                        <p><i class="fa fa-phone" aria-hidden="true"></i> (+1) 800 123 456</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="subcriber-info">
                        <h3>SUBSCRIBE</h3>
                        <p>Get healthy news, tip and solutions to your problems from our experts.</p>
                        <div class="subcriber-box">
                            <form id="mc-form" class="mc-form">
                                <div class="newsletter-form">
                                    <input type="email" autocomplete="off" id="mc-email" placeholder="Email address" class="form-control" name="EMAIL">
                                    <button class="mc-submit" type="submit"><i class="fa fa-paper-plane"></i></button> 
                                    <div class="clearfix"></div>
                                    <!-- mailchimp-alerts Start -->
                                    <div class="mailchimp-alerts">
                                        <div class="mailchimp-submitting"></div>
                                        <!-- mailchimp-submitting end -->
                                        <div class="mailchimp-success"></div>
                                        <!-- mailchimp-success end -->
                                        <div class="mailchimp-error"></div>
                                        <!-- mailchimp-error end -->
                                    </div>
                                    <!-- mailchimp-alerts end -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="copyright-area wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="footer-text">
                        <p>© 2018 Lifecare. All Rights Reserved.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="social">
                        <ul class="social-links">
                            <li><a href=""><i class="fa fa-rss"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            <li><a href=""><i class="fa fa-youtube"></i></a></li>
                            <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end copyrights -->
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
