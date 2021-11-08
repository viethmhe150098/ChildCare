<%-- 
    Document   : BlogDetail
    Created on : Oct 25, 2021, 2:17:15 PM
    Author     : DO THANH TRUNG
--%>

<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- Site Metas -->
    <title>Blog Detail</title>
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
<body class="clinic_version">
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
            <h2>The Blog Detail</h2>
        </div>
        <div class="row">
            <%ResultSet rs1 = (ResultSet) request.getAttribute("BlogDetail");%>
            <%while (rs1.next()) {%>
            <div class="col-md-5">
                <div class="project-info-box mt-0">
                    <h2>Title: <%=rs1.getString(1)%></h2>
                    <p style="font-size: medium" class="mb-0">AUTHOR: <%=rs1.getString(7)%> <%=rs1.getString(8)%></p>
                </div><!-- / project-info-box -->

                <div class="project-info-box">
                    <p style="font-size: medium"><b>Update Date:</b> <%=rs1.getString(3)%></p>
                    <p style="font-size: medium"><b>Status:</b> <%=(rs1.getString(5).equals("1"))?"Public":"Hide"%></p>
                    <p style="font-size: medium"><b>Category:</b> <%=rs1.getString(6)%></p>
                    <p style="font-size: medium"><b>Description:</b> <%=rs1.getString(10)%></p>

                    <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Blog List" style="margin:0;background-color: orange; margin-top: 10px">
                </div> 
            </div><!-- / column -->

            <div class="col-md-7">
                <img style="padding-top: 20px; height: 520px" src="images/<%=rs1.getString(4)%>" alt="project-image" class="rounded">
            </div><!-- / column -->
            <%}%>
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