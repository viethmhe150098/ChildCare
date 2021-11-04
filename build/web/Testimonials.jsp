<%-- 
    Document   : MedicalExamination
    Created on : Nov 1, 2021, 10:30:18 PM
    Author     : DO THANH TRUNG
--%>
<%@page import="Entity.Customer"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Service Detail Page</title>
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
    <style>
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
                background-color : var(--primary);
                animation: lineLoading 10s forwards infinite linear;
            }

            @keyframes lineLoading {
                0% {
                    right: 100%;
                }
                50% {
                    right: 80%;
                    left: 0;
                }

            }

    </style>
    <body>
        <jsp:include page="Header.jsp"/>
        
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

        <link rel="stylesheet" href="servicedetail.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
        <div class="container">
            <div class="heading">
                <span  class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>The Testimonials List</h2>
            </div>
   
            <div class="row">
                <%ResultSet rs1 = (ResultSet) request.getAttribute("medical");
                  Customer cus = (Customer) session.getAttribute("customer_account");%>
                 <%while (rs1.next()) {%>
                 <div class="col-md-12 col-sm-12 wow fadeIn" style="background-color:azure;border-radius:10px;" data-wow-duration="1s" data-wow-delay="0.6s" >
                <div class="testimonial clearfix" >
                    <div class="desc" style="background-color:#F0F8FF;border-radius:10px;border:none;">
                        <h3><i class="fas fa-pills"></i> Reservation ID : <%=rs1.getInt(1)%></h3>
                        <div class="line-loading" style="margin-bottom:20px;"></div>
                        <h3>Customer Name: <%=cus.getLast_name()%></h3>
                        <h3 >Service: <%=rs1.getString(3)%></h3>
                        <h3>Date: <%=rs1.getString(2)%></h3>
                                                <h3>Medicine :<%=rs1.getString(4)%></h3>
                                                                        <h3>Description: <%=rs1.getString(5)%></h3>


                    </div>
                    <div class="testi-meta">
                        <img src="images/testi_03.png" alt="" class="img-responsive alignleft">
                        <h4>Amanda DOE <small>- Manager of Racer</small></h4>
                    </div>
                    <!-- end testi-meta -->
                </div>
                <!-- end testimonial -->
            </div>
                                                                         <%}%>
            <!-- end col -->
            
            <!-- end col -->
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
    </body>
</html>