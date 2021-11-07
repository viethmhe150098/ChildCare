<%-- 
    Document   : Cart
    Created on : Oct 31, 2021, 1:17:29 AM
    Author     : LOVE
--%>
<%@page import="Entity.Customer"%>
<%@page import="Entity.Service"%>
<%@page import="Entity.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

            .text-field {
                position: relative;
            }
            .text-field label {
                display: inline-block;
                color: #333;
                font-weight: 600;
                cursor: pointer;
                position: absolute;
                top: 0;
                left: 10px;
                background-color: white;
                padding: 1px 5px;
                font-size: 12px;
                transform: translateY(-50%);
                color: #6a5af9;
            }
            .text-field input {
                padding: 15px;
                display: block;
                width: 100%;
                color: #999;
                font-size: 14px;
                border: 1px solid #6a5af9;
                border-radius: 4px;
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

            .line-loading {
                width: 100%;
                height: 0.5rem;
                position: relative;
                margin: 0 auto;
            }
            .line-loading:before {
                content: "";
                position: absolute;
                right: auto;
                left: 0;
                height: 100%;
                background-color: var(--primary);
                animation: lineLoading 10s forwards infinite linear;
            }

            @keyframes lineLoading {
                0% {
                    right: 100%;
                }
                50% {
                    right: 63%;
                    left: 0;
                }

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

    <body class="clinic_version" >

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

                <div class="reservation">
                <%
                    List<Service> list = (List<Service>) request.getAttribute("list");
                    Customer cus = (Customer) session.getAttribute("customer_account");
                    double totalBill = 0;
                    for (Service order : list) {
                        totalBill += order.getSprice() * order.getAmount();
                    }
                %>
                <div class="wrapper1">
                    <h2>MY RESERVATION</h2>
                    <table style="width: 100%">
                        <tr>
                            <td>ITEM</td>
                            <td>DESCRIPTION </td>
                            <td>PRICE</td>
                            <td>QUANTITY</td>
                            <td>TOTAL</td>
                            <td></td>

                        </tr>
                        <% for (Service r : list) {%>
                        <tr>

                            <td><%=r.getSname()%></td>
                            <td><%=r.getDescription()%></td>
                            <td><%=r.getSprice()%></td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <a class="cart_quantity_down" href="sub?id=<%=r.getsID()%>"> - </a>

                                    <input class="cart_quantity_input" type="text" name="quantity" value="<%=r.getAmount()%>" autocomplete="off" size="2">
                                    <a class="cart_quantity_up" href="ReservationDetailforCus?id=<%=r.getsID()%>"> + </a>
                                </div>
                            </td>
                            <td class="cart_total">
                                <div style="height: 33.6px; width: 200px"><p class="cart_total_price"><%=String.format("%.2f", r.getSprice() * r.getAmount())%>$</p></div>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href="remove?id=<%=r.getsID()%>"><i class="fa fa-times"></i></a>
                            </td>                           
                        </tr>

                        <% }%>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><h2>Total Bill: <%=String.format("%.2f", totalBill)%>$</h2></td>

                    </table>
                </div>
                <section id="do_action" style="margin-top:30px;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="total_area">

                                    <ul >

                                        <h1 style="text-align: center;padding:20px;background-color: rgba(0, 181, 204, 1);border-radius:20px;"><a href="ServiceControl" style="color: black">Continue Shopping</a></h1>


                                    </ul>

                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="total_area">
                                    <ul>
                                        <div class="shopper-info">
                                            <% if (cus != null) {%>

                                            <form method="post" action="Checkout?service=checkout">
                                                <div style="background:azure;padding:10px;border-radius:4px;">
                                                    <h2>Shopper Information</h2>
                                                    <div class="line-loading"></div>
                                                    <input type="hidden" value="<%=cus.getcID()%>" style="color:#000;" name="cid">
                                                    <label style="color:#000;min-width: 90px;" >Name:</label>
                                                    <span style="color:#000;"><%=cus.getLast_name()%></span>
                                                    <br>
                                                    <label style="color:#000;min-width: 90px;">Username:</label>
                                                    <span style="color:#000;"><%=cus.getUsername()%></span>
                                                    <br>
                                                    <label style="color:#000;min-width: 90px;"> Tel:</label>
                                                    <span style="color:#000;"><%=cus.getTel()%></span>
                                                    <br>
                                                    <label style="color:#000;min-width: 90px;"> Address:</label>
                                                    <span style="color:#000;"><%=cus.getAddress()%></span>

                                                </div>
                                                <div style="background:azure;padding:10px;border-radius:10px;">
                                                    <h2>Receiver Information</h2>
                                                    <div class="line-loading" style="margin-bottom:20px;"></div>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <div class="text-field">
                                                                <label >Name</label>
                                                                <input autocomplete="off" type="text"  name="name" placeholder="Enter your name" />
                                                            </div>
                                                            <br>
                                                            <input type="radio" id="gender" name="gender" class="radio-input" value="1">
                                                            <label for="gender" style="color: #6a5af9;font-weight: 500;">Male</label><br>
                                                            <input type="radio" id="gender" name="gender" value="0" class="radio-input">
                                                            <label for="gender" style="color: #6a5af9;font-weight: 500;">Female</label><br>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="text-field">
                                                                <label >Email</label>
                                                                <input autocomplete="off" type="email"  name="email" placeholder="Enter your email" style="margin-bottom:30px;"/>
                                                            </div>

                                                            <div class="text-field">
                                                                <label >Phone</label>
                                                                <input autocomplete="off" type="text"  name="phone" placeholder="Enter your phone" />
                                                            </div>                                                 
                                                        </div>
                                                    </div>                  
                                                    <div style="text-align: center"><button class="btn-warning btn-lg">
                                                            <input type="submit" value="Check Out" style="color:#000;">
                                                        </button></div>                      
                                                        <%} else {%>
                                                    <h1 style="text-align: center;padding:20px;background-color: rgba(0, 181, 204, 1);border-radius:20px;"><a href=Login.jsp style="color: #000;"><i class="fas fa-sign-in-alt"></i> Login To Check out</a></h1>
                                                    <% }%>
                                            </form>
                                        </div>
                                </div>
                            </div>
                        </div>

                        </ul>

                    </div>
            </div>
        </div>
    </div>
</section><!--/#do_action-->



</div>

</div>
</div>

<footer id="footer" class="footer-area wow fadeIn" style="margin-top:50px;">
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


