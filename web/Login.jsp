<%-- 
    Document   : Login.jsp
    Created on : Sep 22, 2021, 2:50:02 PM
    Author     : DO THANH TRUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- Site Metas -->
        <title>Login page</title>
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
        <!-- [if lt IE 9] -->

        <!--<link rel="stylesheet" href="./css/login.css">-->
        <link rel="stylesheet" href="./css/register.css">

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
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

        <!--        <div class="login">
                    <h2 class="title">Login Form</h2>
                    <form action="login" method="post">
                        <p class="text-danger">${mess}</p>
                        <div class="enter">
                            <img src="images/user.png">
                            <input placeholder="Enter your username" type="text" name="adUser">
                            <br>
                        </div>	
                        <div class="enter">
                            <img src="images/pass.png">
                            <input id="pass" placeholder="Enter your password" type="password" minlength="8" name="adPass">
                            <img onclick="myFunction()" src="images/eye2.jpg" width="30" height="30">
                            <br>
                        </div>
                        <div style="text-align: center; margin: 10 auto"><a href="#">forgot your password?</a></div>
                        <div style="text-align: center; margin: 10 auto"><a href="register">register account</a></div>
                        <button>Login</button>
                        <input onclick="send()" type="button" value="Submit">
                    </form>
                </div>-->

        <div class="main-w3layouts wrapper">
            <h1>Login Form</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="login" method="post">
                        <p class="text-danger">${mess}</p>
                        <input class="text" type="text" name="adUser" placeholder="Username" required="">
                        <input id="pass" class="text" type="password" name="adPass" minlength="8" placeholder="Password" required=""><img onclick="myFunction()" src="images/eye2.jpg" width="30" height="30">
                        <div style="text-align: center; margin: 10 auto"><a href="#">forgot your password?</a></div>
                        <div style="text-align: center; margin: 10 auto"><a href="register">register account</a></div>
                        
                        <input type="submit" value="LOGIN">
                    </form>
                </div>
            </div>
        </div>

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

        <script type="text/javascript">
            var x = true;
            function myFunction() {
                if (x) {
                    document.getElementById('pass').type = "text";
                    x = false;
                } else {
                    document.getElementById('pass').type = "password";
                    x = true;
                }
            }
        </script>
    </body>
</html>
