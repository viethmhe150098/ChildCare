<%-- 
    Document   : MDetail
    Created on : Nov 4, 2021, 3:59:23 AM
    Author     : LOVE
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
                <div class="col-md-12">
                    <div class="project-info-box mt-0">
                        <h2>SERVICE CATEGORY: ${Sdetail2.scCateName}</h2>
                         <div class="reservation">
                        <div class="wrapper1">
                            <table  style="width: 100% ; color: black; border: 1px solid rgba(0, 181, 204, 1);  text-align: center;">
                                <thead >
                                    <tr class="bg-info" >
                                        <th  style="text-align: center!important;">Image</th>
                                        <th  style="text-align: center!important;">Description</th>
                                        <th  style="text-align: center!important;">Price</th>
                                        <th  style="text-align: center!important;">Quantity</th>
                                        <th  style="text-align: center!important;">Action<th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr style="text-align: center;">
                                        
                                            <td><span class="icon-service"><img  class="img-service"src="images/clinic_04.jpg" alt="#"  style="width: 220px;height:220px;border-radius: 10px;"/></span></td>
                                            <td>${Sdetail1.description}</td>
                                            <td>${Sdetail1.sprice}</td>
                                            <td>${Sdetail1.maxquantity}</td>
                                            <td><a href="MServiceDetail?sid=${Sdetail1.sID}&&scID=${Sdetail1.scID}&type=edit "><span class="glyphicon glyphicon-pencil"></span> </a></a></td>
                                            
                                    </tr>
                                    
                                   

                                </tbody>
                            </table>
                            
                        </div>
                    </div>
                        
                    </div><!-- / project-info-box -->


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

