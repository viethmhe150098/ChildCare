<%-- 
    Document   : Detail
    Created on : Sep 23, 2021, 3:00:40 PM
    Author     : DO THANH TRUNG
--%>
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
                <h2>The Detail Service</h2>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="project-info-box mt-0">
                        <h2>SERVICE CATEGORY: ${Sdetail2.scCateName}</h2>
                        <p style="font-size: medium" class="mb-0">Description: ${Sdetail1.description}</p>
                    </div><!-- / project-info-box -->

                    <div class="project-info-box">
                        <p style="font-size: medium"><b>Service ID:</b> ${Sdetail1.sID}</p>
                        <p style="font-size: medium"><b>Name:</b> ${Sdetail1.sname}</p>
                        <p style="font-size: medium"><b>Max quantity:</b> ${Sdetail1.maxquantity} people/turn</p>
                        <div class="service-price" style="background-color:#39b49a;color:white;width: 50%;">
                            <p style = "text-decoration: underline; color: black;
                               text-underline-offset: -2px; text-decoration: line-through;text-align: center; font-size: medium;">$${Sdetail1.sprice}</p>
                            <p style="text-align: center; color: red; font-size: medium;">Sale Price</p>
                        </div>
                        <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Service List" style="margin:0;background-color: orange; margin-top: 10px">
                        <!--<div><a href="updateServiceControl?sID=${Sdetail1.sID}" style="margin-top: 5px" class="btn btn-success" class="edit">Update</a></div>-->
                        <div><a href="" style="margin-top: 5px; width: 100%; height: 30px; text-align: center; background-color: #39b49a" class="btn btn-success" class="edit">CONTACT</a></div>
                    </div><!-- / project-info-box -->
                </div><!-- / column -->

                <div class="col-md-7">
                    <img style="padding-top: 20px; height: 450px" src="images/${Sdetail1.ser_image}" alt="project-image" class="rounded">
                </div><!-- / column -->
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

