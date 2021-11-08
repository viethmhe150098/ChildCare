<%-- 
    Document   : MyReservation
    Created on : Oct 24, 2021, 5:43:32 PM
    Author     : LOVE
--%>

<%@page import="Entity.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <title>My Reservation</title>
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
                                <a href="Userprofile.jsp">MY PROFILE</a>
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

                <div class="wrapper1">
                    <h2>MY RESERVATION</h2>
                    <table style="width: 100%">
                        <tr>
                            <td>RESERVATION ID</td>

                            <td>DATE</td>
                            <td>TOTAL PRICE</td>
                            <td>ACTION</td>
                            <td>Detail</td>

                        </tr>
                        <% List<Reservation> list = (ArrayList<Reservation>) session.getAttribute("Reser");
                            for (Reservation r : list) {
                        %>
                        <tr>

                            <td><%=r.getReID()%></td>
                           
                            <td><%=r.getDate()%></td>
                            <td><%=r.getTotalprice()%></td>
                            <td><button class="button" style="color : white;" data-toggle="modal" data-target="#Reservation<%=r.getReID()%>" >Shortcut</button></td>
                            <td><a href="ReservationInfo?reID=<%=r.getReID()%>">Detail</a></td>

                        </tr>
                        <div class="modal fade" id="Reservation<%=r.getReID()%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Reservation Detail</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body" style="color: black;">
                                        <p>ID: <%=r.getReID() %></p>
                                        
                                        <p>Name: <%=r.getRecceive_name() %></p>
                                        <p>Mail: <%=r.getRecceive_mail() %></p>
                                        <p>Tel: <%=r.getRecceive_tel() %></p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% }%>
                    </table>
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
        <div class="contact-section">
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

