F<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : reinfo
    Created on : Oct 10, 2021, 10:43:41 PM
    Author     : Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
/*                height: 80vh;*/
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
                height: 60%;
            }

            p {
                font-weight: 3000q;
            }

            .content h2 {
                color: rgba(0, 181, 204, 1);
            }
            .button{
                margin: 10px;
            }
            button{
                background-color:  rgba(0, 181, 204, 1);
                border: none;
                border-radius: 10px;
                height: 40px;
                width: 100px;
                justify-content: center;
                align-items: center;
                margin-top: 10px;
            }
        </style>
    </head>

    <body class="clinic_version">

        <jsp:include page="Header.jsp"></jsp:include>
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
            <div class="contain">
                <div class="leftside_bar">
                    <div>
                        <ul>
                            <li>
                                <i class='fas fa-user-edit'></i>
                                <a  href="Userprofile.jsp">MY PROFILE</a>
                            </li>
                            <li>
                                <i class="fa fa-history" aria-hidden="true"></i>
                                <a href="MyResevation">RESERVATION HISTORY</a>
                            </li>
                            <li>
                                <i class="fa fa-sign-out-alt" aria-hidden="true"></i>
                                <a href="validateCustomer">LOG OUT</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="reservation">
                    <h1>RESERVATION#RES-${re.reID}</h1>
                <div class="wrapper1">
                    <h3>Your Reservation is assigned to doctor <b>${staff.first_name} ${staff.last_name}</b></h3>
                    <table>
                        <tr>
                            <td>EMAIL</td>
                            <td>PHONE</td>
                        </tr>
                        <tr>
                            <td>${staff.email}</td>
                            <td>${staff.phone}</td>
                        </tr>
                    </table>
                </div>
                <div class="wrapper1">
                    <h2>RESERVATION DETAIL</h2>
                    <table>
                        <tr>
                            <td>RESERVATION ID</td>
                            <td>STATUS</td>
                            <td>DATE</td>
                            <td>NUMBER OF SERVICE</td>
                            <td>TOTAL PRICE</td>

                        </tr>
                        <tr>
                            <td>#RES-${re.reID}</td>
                            <td>
                                <c:if test="${re.status==1}" ><c:out value="Submited"/>
                                </c:if>
                                <c:if test="${re.status==2}" ><c:out value="Confirmed"/>
                                </c:if>
                                <c:if test="${re.status==3}" ><c:out value="Success"/>
                                </c:if>
                            </td>
                            <td>${re.date}</td>
                            <td>1</td>
                            <td>${re.totalprice}$</td>

                        </tr>
                    </table>
                </div>
                <%ResultSet rs = (ResultSet) request.getAttribute("rs");%>
                <div class="wrapper2">
                    <h2>RESERVATION SUMMARY</h2>
                    <table>
                        <tr>
                            <td>SERVICE</td>
                            <td>QUANTITY </td>
                            <td>VALUE </td>
                        </tr>
                        <% while (rs.next()) {%>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getFloat(3)%></td>
                        </tr>
                        <%}%>

                    </table>
                    <div class="button">
                        <c:if test="${re.status==1}">

                            <button style="background-color: #A52A2A "><i class="far fa-trash-alt"style="margin-right:10px ;"></i><a href="CancelReservation?reid=${re.reID}" style="text-decoration: none; color: white">CANCEL</a></button>
                                </c:if>
                        <p style="background-color: #A52A2A  ;margin-top: 20px;padding: 10px; border-radius: 10px;"><i class="fas fa-exclamation-triangle"></i>You can only cancel if reservation status is submitted</p>
                    </div>
                </div>
                <div class="wrapper3">
                    <div class="left_table">
                        <h1>CONTACT INFORMATION</h1>
                        <div class="content">
                            <h2>${re.recceive_name}</h2>
                            <p>
                                GMAIL: ${re.recceive_mail}
                            </p>
                            <p>
                                TEL: ${re.recceive_tel}
                            </p>
                        </div>
                    </div>
                    <div class="right_table">
                        <h1>CUSTOMER ADDRESS</h1>
                        <div class="content">
                            <h2>${re.recceive_name}</h2>
                            <div>
                                EMAIL: ${re.recceive_mail}
                                PHONE: ${re.recceive_tel}
                            </div>
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
