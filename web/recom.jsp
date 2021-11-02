<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : recom
    Created on : Oct 6, 2021, 4:52:30 PM
    Author     : Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
        <!-- [if lt IE 9] -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <style>
            .contain {
                margin: 10px 0px;
                width: 100vw;
                height: 80vh;
                display: flex;

            }

            .leftside_bar {
                flex: 1;
                background-color: azure;

            }

            .leftside_bar ul {
                list-style: none;
                margin: 20px;
            }

            .leftside_bar li {
                margin: 10px;
                cursor: pointer;
                font-size: 20px;
                padding: 10px;
            }
            .leftside_bar li:hover{
                background-color: rgba(232, 232, 232, 1);
            }
            .reservation {
                padding: 20px;
                flex: 3;
                justify-content: center;
                align-items: center;
                color: white;
            }

            h1 {
                font-weight: bolder;
            }

            tr:first-child td {
                color: white;
                background-color: rgba(0, 181, 204, 1);
            }

            table {
                border: 1px solid rgba(0, 181, 204, 1);
                text-align: center;

            }

            td {
                color: rgba(0, 181, 204, 1);
            }

            td:first-child {
                width: 35%;
            }

            td:nth-child(2) {
                width: 20%;
            }

            td:nth-child(3) {
                width: 10%;
            }

            td:nth-child(4) {
                width: 25%;

            }

            .wrapper2 {
                margin: 40px 0px;
            }

            .wrapper3 {
                height: 40vh;
                display: flex;

            }

            .left_table {
                padding: 10px;
                flex: 1;
                justify-content: center;
                align-items: center;

            }

            .right_table {
                padding: 10px;
                flex: 1;

            }

            .content {
                width: 90%;
                background-color: rgba(243, 241, 239, 1);
                padding: 20px;
                color: rgba(0, 181, 204, 1);
                height: 40%;
            }

            p {
                font-weight: 3000q;
            }

            .content h2 {
                color: rgba(0, 181, 204, 1);
            }
        </style>
    </head>

    <body class="clinic_version">
        <jsp:include page="header.jsp"/>
<!--        <header>
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
                                <span class="iconcont"><a data-scroll
                                                          href="mailto:info@yoursite.com">info@Lifecare.com</a></span>
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
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars"
                                                                                                  aria-hidden="true"></i></button>
                        </div>

                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a class="active" href="index.html">Home</a></li>
                                <li><a data-scroll href="#about">About us</a></li>
                                <li><a data-scroll href="#service">Services</a></li>
                                <li><a data-scroll href="#doctors">Doctors</a></li>
                                <li><a data-scroll href="#price">Price</a></li>
                                <li><a data-scroll href="#testimonials">Testimonials</a></li>
                                <li><a data-scroll href="#getintouch">Contact</a></li>
                            </ul>
                        </div>
                    </nav>
                    <div class="serch-bar">
                        <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input type="text" class="form-control input-lg" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-info btn-lg" type="button">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>-->
        <div id="home" class="parallax first-section wow fadeIn" data-stellar-background-ratio="0.4"
             style="background-image:url('images/slider-bg.png');">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="text-contant">
                            <h2>
                                <span class="center"><span class="icon"><img src="images/icon-logo.png"
                                                                             alt="#" /></span></span>
                                <a href="" class="typewrite" data-period="2000"
                                   data-type='[ "Welcome to Life Care", "We Care Your Health", "We are Expert!" ]'>
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
        <div class="container" style="margin-top: 20px ">
            <h1>RESERVATION#RES-${oid}</h1>
            <div class="">
                <h2>RESERVATION DETAIL</h2>
                <h4>Your reservation is assigned to doctor <b>${staff.last_name} ${staff.first_name}</b></h4>
                <h4>DOCTOR INFORMATION:</h4>
                <table style="margin-top: 5px; margin-bottom: 20px ">
                    <tr>
                        <td>EMAIL</td>
                        <td>TEL</td>
                    </tr>
                    <tr>
                        <td>${s.email}</td>
                        <td>${s.phone}</td>
                    </tr>
                </table>
                <table style="margin-top: 20px; margin-bottom: 20px ">
                    <tr>
                        <td>RESERVATION ID</td>
                        <td>STATUS</td>
                        <td>TOTAL PRICE</td>
                    </tr>
                    <tr>
                        <td>#RES-${oid}</td>
                        <td>submitted</td>
                        <td>${total}$</td>
                    </tr>
                </table>
            </div>
            <div style="margin-top: 20px; margin-bottom: 20px ">
                <h2>RESERVATION SUMMARY</h2>

                <table style="margin-top: 20px; margin-bottom: 20px ">
                    <tr>
                        <td>SERVICE</td>
                        <td>QUANTITY </td>
                        <td>VALUE </td>
                    </tr>
                    <c:forEach var="o" items="${listO}">
                        <tr>
                            <td>${o.sid} </td>
                            <td>${o.amount}</td>
                            <td>${o.price*o.amount}$</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="" style="margin-top: 20px; margin-bottom: 20px ">
                <div class="" style="margin-top: 20px; margin-bottom: 20px ">
                    <h1>CONTACT INFORMATION</h1>
                    <div class="content">
                        <h2>${sessionScope.customer_account.username}</h2>
                        <p>
                            GMAIL:${sessionScope.customer_account.email}
                        </p>
                        <p>
                            TEL: ${sessionScope.customer_account.tel}
                        </p>
                    </div>
                </div>
                <div class="" style="margin-top: 20px; margin-bottom: 20px ">
                    <h1>RECCIVER INFORMATION</h1>
                    <div class="content">
                        <h2>${name}</h2>
                        <div>
                            ADDRESS: ${address}
                        </div>
                        <div>
                            EMAIL: ${email}
                            TEL: ${phone}
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div id="getintouch" class="section wb wow fadeIn" style="padding-bottom:0;">
            <div class="container">
                <div class="heading">
                    <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                    <h2>Get in Touch</h2>
                </div>
            </div>
            <!--        <div class="contact-section">
                        <div class="form-contant">
                            <form id="ajax-contact" action="assets/mailer.php" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group in_name">
                                            <input type="text" class="form-control" placeholder="Name" required="required">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group in_email">
                                            <input type="email" class="form-control" placeholder="E-mail" required="required">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group in_email">
                                            <input type="tel" class="form-control" id="phone" placeholder="Phone"
                                                required="required">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group in_email">
                                            <input type="text" class="form-control" id="subject" placeholder="Subject"
                                                required="required">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group in_message">
                                            <textarea class="form-control" id="message" rows="5" placeholder="Message"
                                                required="required"></textarea>
                                        </div>
                                        <div class="actions">
                                            <input type="submit" value="Send Message" name="submit" id="submitButton"
                                                class="btn small" title="Submit Your Message!">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div id="googleMap" style="width:100%;height:450px;"></div>
                    </div>-->
        </div>
        <footer id="footer" class="footer-area wow fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="logo padding">
                            <a href=""><img src="images/logo.png" alt=""></a>
                            <p>Locavore pork belly scen ester pine est chill wave microdosing pop uple itarian cliche
                                artisan.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer-info padding">
                            <h3>CONTACT US</h3>
                            <p><i class="fa fa-map-marker" aria-hidden="true"></i> PO Box 16122 Collins Street West Victoria
                                8007 Australia</p>
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
                                        <input type="email" autocomplete="off" id="mc-email" placeholder="Email address"
                                               class="form-control" name="EMAIL">
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
        <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
    </body>

</html>
