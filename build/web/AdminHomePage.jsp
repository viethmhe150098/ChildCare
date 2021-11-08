<%-- 
    Document   : AdminHomePage
    Created on : Oct 28, 2021, 8:07:20 PM
    Author     : DO THANH TRUNG
--%>

<%@page import="Entity.Admin"%>
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
        <title>Admin HomePage</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- Site Metas -->
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
                width: 100%;
                height: 80vh;
                display: flex;

            }

            .leftside_bar {
                width: 15%;
                background-color: azure;

            }
            .right{
               
                width: 85%;
              
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
            .right_cart{
                height: 150px;
               width: 350px
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
              right: 0;
              left: 0;
            }
           
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
  
          .tabs5 {
            display: flex;
            border: 1px solid #6a5af9;
          }
          .tabs5 .tab-item:not(:first-child) {
            border-left: 1px solid #6a5af9;
          }
          .tabs5 .tab-item.active {
            color: white;
            background-color: #6a5af9;
          }
          .tabs5 .tab-item {
            white-space: nowrap;
            padding: 10px 15px;
            cursor: pointer;
            color: #6a5af9;
            font-weight: 500;
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
          }
          
        </style>
    </head>

    <body class="clinic_version">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
        <%
            Admin cus = (Admin) session.getAttribute("admin_account");
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
        <div class="leftside_bar">
            <div>
                <ul>
                    <li>
                        <i class="fas fa-signature"></i>
                        <a href="AdminProfile.jsp"><%=cus.getName()%></a>
                        <div class="line-loading"></div>
                    </li>
                    <li>
                        <i class='fas fa-user-edit'></i>
                        <a href="AdminProfile.jsp">MY PROFILE</a>
                        <div class="line-loading"></div>
                    </li>
                    <li>
                       <i class="fas fa-notes-medical"></i>
                        <a href = "ServiceCategory">Service Category</a>
                        <div class="line-loading"></div>
                    </li>
                    <li>
                        <i class="fa fa-address-card" aria-hidden="true"></i>
                        <a href = "PostCategory">Post Category</a>
                        <div class="line-loading"></div>
                    </li>
                     <li>
                       <i class="fas fa-users"></i>
                        <a href = "userControl">User List</a>
                        <div class="line-loading"></div>
                    </li>
                    
                    <li>
                        <i class="fa fa-sign-out-alt" aria-hidden="true"></i>
                        <a href="validateCustomer_1">LOG OUT</a>
                        <div class="line-loading"></div>
                    </li>
                </ul>
            </div>
        </div>
                        
        <div class="right">
            <div class="container">
                <div class="row">
                    <div class="tabs5">
         <div class="tab-item active">
     <i class="fas fa-user-circle">  Customer Account</i>
     
    </div>
    <div class="tab-item">
     <i class="fas fa-user-circle">  Employee Account</i>
      
    </div>
    <div class="tab-item">
      <i class="tab-icon fas fa-plus-circle">  Reservation</i>
     
    </div>
   
    <div class="line"></div>
  
     
                    <div class="tab-content">
    <div class="tab-pane active" style="background:azure;width: 50%;margin: 0 auto;border: none;border-radius:30px;">
       <h2 style="text-align: center ;">Total Customer Account</h2>
                        <p style="font-size: 50px; text-align: center" >${totalCus}</p>
    </div>
    <div class="tab-pane" style="background:azure;width: 50%;margin: 0 auto;border: none;border-radius:30px;">
      <h2 style="text-align: center">Total Employee Account</h2>
                        <p style="font-size: 50px; text-align: center">${totalE}</p>
    </div>
    <div class="tab-pane" style="background:azure;width: 50%;margin: 0 auto;border: none;border-radius:30px;">
      <h2 style="text-align: center">Reservation</h2>
                        <p style="font-size: 50px; text-align: center">${totalR}</p>
    </div>
   
  </div>
    </div>
                   
                    
                   
                </div>
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
    <script>
        const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const tabs = $$(".tab-item");
const panes = $$(".tab-pane");
const line = $(".tabs .line");
const tabActive = $(".tab-item.active");
    console.log([tabActive]);
tabs.forEach((tab,index) =>{
    tab.onclick = function(){
        const pane=panes[index];
        $(".tab-item.active").classList.remove("active");
        $(".tab-pane.active").classList.remove("active");
        this.classList.add("active");
        pane.classList.add("active");

    }
})

    </script>
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
