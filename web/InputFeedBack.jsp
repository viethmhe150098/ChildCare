<%-- 
    Document   : InputFeedBack
    Created on : Nov 5, 2021, 3:38:39 PM
    Author     : LOVE
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            .container{
                flex:3
            }
            <!--Star-->
            body {
                font-family:"Open Sans", Helvetica, Arial, sans-serif;
                color:#555;
                max-width:680px;
                margin:0 auto;
                padding:0 20px;
            }

            * {
                -webkit-box-sizing:border-box;
                -moz-box-sizing:border-box;
                box-sizing:border-box;
            }

            *:before, *:after {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .clearfix {
                clear:both;
            }

            .text-center {text-align:center;}

            a {
                color: tomato;
                text-decoration: none;
            }

            a:hover {
                color: #2196f3;
            }

            pre {
                display: block;
                padding: 9.5px;
                margin: 0 0 10px;
                font-size: 13px;
                line-height: 1.42857143;
                color: #333;
                word-break: break-all;
                word-wrap: break-word;
                background-color: #F5F5F5;
                border: 1px solid #CCC;
                border-radius: 4px;
            }

            .header {
                padding:20px 0;
                position:relative;
                margin-bottom:10px;

            }

            .header:after {
                content:"";
                display:block;
                height:1px;
                background:#eee;
                position:absolute; 
                left:30%; right:30%;
            }

            .header h2 {
                font-size:3em;
                font-weight:300;
                margin-bottom:0.2em;
            }

            .header p {
                font-size:14px;
            }



            #a-footer {
                margin: 20px 0;
            }

            .new-react-version {
                padding: 20px 20px;
                border: 1px solid #eee;
                border-radius: 20px;
                box-shadow: 0 2px 12px 0 rgba(0,0,0,0.1);

                text-align: center;
                font-size: 14px;
                line-height: 1.7;
            }

            .new-react-version .react-svg-logo {
                text-align: center;
                max-width: 60px;
                margin: 20px auto;
                margin-top: 0;
            }





            .success-box {
                margin:50px 0;
                padding:10px 10px;
                border:1px solid #eee;
                background:#f9f9f9;
            }

            .success-box img {
                margin-right:10px;
                display:inline-block;
                vertical-align:top;
            }

            .success-box > div {
                vertical-align:top;
                display:inline-block;
                color:#888;
            }



            /* Rating Star Widgets Style */
            .rating-stars ul {
                list-style-type:none;
                padding:0;

                -moz-user-select:none;
                -webkit-user-select:none;
            }
            .rating-stars ul > li.star {
                display:inline-block;

            }

            /* Idle State of the stars */
            .rating-stars ul > li.star > i.fa {
                font-size:2.5em; /* Change the size of the stars */
                color:#ccc; /* Color on idle state */
            }

            /* Hover state of the stars */
            .rating-stars ul > li.star.hover > i.fa {
                color:#FFCC36;
            }

            /* Selected state of the stars */
            .rating-stars ul > li.star.selected > i.fa {
                color:#FF912C;
            }
/*            //Star*/

        </style>
    </head>

    <body class="clinic_version">

        <div id="header">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>


        <%  session = request.getSession(true);
            Customer a = (Customer) session.getAttribute("customer_account");
        %>
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

            <div class="leftside_bar" >
                <div>
                    <ul>
                        <li>
                            <i class='fas fa-user-circle' ></i>
                            <a style = "color: black;" >MY ACCOUNT</a>
                        </li>
                        <li>
                            <i class='fas fa-user-edit' ></i>
                            
                            <a href = "Userprofile" style = "color: black;"> MY PROFILE</a>
                        </li>
                        <li>
                            <i class="fa fa-history" aria-hidden="true" ></i>
                            <a style = "color: black;">RESERVATION HISTORY</a>
                        </li>
                        <li>
                            <i class="fa fa-address-card" aria-hidden="true" ></i>
                            <a style = "color: black;">ADDRESS</a>
                        </li>
                        <li>
                            <i class="fa fa-address-card" aria-hidden="true"></i>
                            <a href = "MyResevation"style = "color: black;"> MY RESERVATION</a>
                        </li>
                        <li>
                            <i class="fa fa-sign-out-alt" aria-hidden="true" ></i>
                            <a style = "color: black;">LOG OUT</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="container">
                <div class="main-body">
                    <br>

                    <form  action="CFeedbackControl" method="POST">
                        <!--Star -->

                        
                            <div class="form-group">
                                <label for="exampleFormControlFile1" style="color: black">Rating</label>

                            </div>
                   

                        <section class='rating-widget'>

                            <!-- Rating Stars Box -->
                            <div class='rating-stars text-center' name="sta">
                                <ul id='stars'>
                                    <li class='star' title='Poor' data-value='1'>
                                        <i class='fa fa-star fa-fw'></i>
                                    </li>
                                    <li class='star' title='Fair' data-value='2'>
                                        <i class='fa fa-star fa-fw'></i>
                                    </li>
                                    <li class='star' title='Good' data-value='3'>
                                        <i class='fa fa-star fa-fw'></i>
                                    </li>
                                    <li class='star' title='Excellent' data-value='4'>
                                        <i class='fa fa-star fa-fw'></i>
                                    </li>
                                    <li class='star' title='WOW!!!' data-value='5'>
                                        <i class='fa fa-star fa-fw'></i>
                                    </li>
                                </ul>
                            </div>

                            <div class='success-box'>
                                <div class='clearfix'></div>
                                <img alt='tick image' width='32' src='data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0MjYuNjY3IDQyNi42NjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQyNi42NjcgNDI2LjY2NzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM2QUMyNTk7IiBkPSJNMjEzLjMzMywwQzk1LjUxOCwwLDAsOTUuNTE0LDAsMjEzLjMzM3M5NS41MTgsMjEzLjMzMywyMTMuMzMzLDIxMy4zMzMgIGMxMTcuODI4LDAsMjEzLjMzMy05NS41MTQsMjEzLjMzMy0yMTMuMzMzUzMzMS4xNTcsMCwyMTMuMzMzLDB6IE0xNzQuMTk5LDMyMi45MThsLTkzLjkzNS05My45MzFsMzEuMzA5LTMxLjMwOWw2Mi42MjYsNjIuNjIyICBsMTQwLjg5NC0xNDAuODk4bDMxLjMwOSwzMS4zMDlMMTc0LjE5OSwzMjIuOTE4eiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K'/>
                                <div class='text-message'></div>
                                <div class='clearfix'></div>
                            </div>



                        </section>

                            <!--Star -->
                            <div class="form-group">
                                <label for="exampleFormControlFile1" style="color: black">Image & Video</label>
                                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="ima">
                            </div>
                            <div class="form-group" style="margin-bottom: 50px">
                                <label for="exampleFormControlTextarea1" style="color: black">Share your opinion about the service:</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="text"></textarea>
                            </div>

                            <hr>
                            <div class="col-md-8" style="margin-bottom: 100px">
                                <div class="card mb-3">
                                    <div class="card-body">
                                        <div style="background:azure;padding:10px;border-radius:4px;">
                                            <h2>Shopper Information</h2>
                                            <div class="line-loading"></div>
                                            <input type="hidden" value="<%=a.getcID()%>" style="color:#000;" name="cid">
                                            <label style="color:#000;min-width: 90px;" >Name:</label>
                                            <span style="color:#000;"><%=a.getLast_name()%></span>
                                            <br>
                                            <label style="color:#000;min-width: 90px;">Username:</label>
                                            <span style="color:#000;"><%=a.getUsername()%></span>
                                            <br>
                                            <label style="color:#000;min-width: 90px;"> Tel:</label>
                                            <span style="color:#000;"><%=a.getTel()%></span>
                                            <br>
                                            <label style="color:#000;min-width: 90px;"> Address:</label>
                                            <span style="color:#000;"><%=a.getAddress()%></span>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal-footer">

                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                    </form>

                </div>

            </div>

        </div>
    </div>





</div>

<footer id="footer" class="footer-area wow fadeIn" style="margin-top: 100px">
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
<!-- star -->
<script>
    $(document).ready(function () {

        /* 1. Visualizing things on Hover - See next part for action on click */
        $('#stars li').on('mouseover', function () {
            var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

            // Now highlight all the stars that's not after the current hovered star
            $(this).parent().children('li.star').each(function (e) {
                if (e < onStar) {
                    $(this).addClass('hover');
                } else {
                    $(this).removeClass('hover');
                }
            });

        }).on('mouseout', function () {
            $(this).parent().children('li.star').each(function (e) {
                $(this).removeClass('hover');
            });
        });


        /* 2. Action to perform on click */
        $('#stars li').on('click', function () {
            var onStar = parseInt($(this).data('value'), 10); // The star currently selected
            var stars = $(this).parent().children('li.star');

            for (i = 0; i < stars.length; i++) {
                $(stars[i]).removeClass('selected');
            }

            for (i = 0; i < onStar; i++) {
                $(stars[i]).addClass('selected');
            }

            // JUST RESPONSE (Not needed)
            var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
            var msg = "";
            if (ratingValue > 1) {
                msg = "Thanks! You rated this " + ratingValue + " stars.";
            } else {
                msg = "We will improve ourselves. You rated this " + ratingValue + " stars.";
            }
            responseMessage(msg);

        });


    });


    function responseMessage(msg) {
        $('.success-box').fadeIn(200);
        $('.success-box div.text-message').html("<span>" + msg + "</span>");
    }

</script>
<!-- star -->
<script>src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap" ></script>
</body> 




</html>

