<%-- 
    Document   : PostDetail
    Created on : Oct 18, 2021, 9:23:04 PM
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
                        <!--                        <div class="info-inner">
                                                    <ul class="list-main">                                
                        <c:choose>
                            <c:when test= "${sessionScope.manager_account == null}">
                                <li><i class="fa fa-user-circle"></i> <a href="#">My account</a></li>
                            </c:when>
                            <c:otherwise>
                            <li><i class="fa fa-user-circle"></i> <a href="#">${sessionScope.manager_account.username}</a></li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose >
                            <c:when test = "${sessionScope.manager_account == null}">
                            <li><i class="fa fa-sign-in"></i><a href="login">Login</a></li>
                            </c:when>
                            <c:otherwise>
                        <li><i class="fa fa-sign-in"></i><a href="validateCustomer">Logout</a></li>
                            </c:otherwise>
                        </c:choose>
            </ul>
        </div>-->
                    </div>
                </div>
            </div>
        </div>

        <div class="header-bottom fadeIn" >
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a  href="ManagerController">HOME</a></li>
                            <li><a  href="">RESERVATION</a></li>
                            <li><a data-scroll href="ManagerController?service=post">POST</a></li>
                            <li><a data-scroll href="#service">SLOT</a></li>
                            <li><a data-scroll href="Medicine">MEDICINE</a></li>
                            <li><a data-scroll href="#price">FEEDBACK</a></li>

                        </ul>
                    </div>
                </nav>
                <div class="serch-bar ">
                    <c:choose>
                        <c:when test= "${sessionScope.manager_account != null}">
                            <div class="col-md-1">
                                <a href="ManagerProfile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
                            </div>
                            <div class="col-md-1">
                                <a href="validateCustomer"><span class="glyphicon glyphicon-log-out align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>
                            </div>

                        </c:when>
                        <c:otherwise>
                            <div class="col-md-1">
                                <a href="login"><span class="glyphicon glyphicon-log-in align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </header>

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

    <div class="container">
        <div class="heading">
            <span  class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
            <h2>The Post Detail</h2>
        </div>
        <div>
            <div class="row">
                <%ResultSet rs1 = (ResultSet) request.getAttribute("postDetail");%>
                <%while (rs1.next()) {%>
                <div class="col-md-5">
                    <div class="project-info-box mt-0">
                        <h2>Title: <%=rs1.getString(1)%></h2>
                        <p style="font-size: medium" class="mb-0">AUTHOR: <%=rs1.getString(7)%> <%=rs1.getString(8)%></p>
                    </div><!-- / project-info-box -->

                    <div class="project-info-box">
                        <p style="font-size: medium"><b>Date Create:</b> <%=rs1.getString(2)%></p>
                        <p style="font-size: medium"><b>Status:</b> <%=(rs1.getString(4).equals("1"))?"Public":"Hide"%></p>
                        <p style="font-size: medium"><b>Category:</b> <%=rs1.getString(6)%></p>
                        <p style="font-size: medium"><b>Description:</b> <%=rs1.getString(9)%></p>

                        <div><a href="updatePostDetail?pID=<%=rs1.getString(5)%>" style="margin-top: 5px" class="btn btn-success" class="edit">Update</a></div>
                        <a style="margin-top: 5px; background-color: #20B2AA" href="requestPostDetail?action=hide&pid=<%=rs1.getInt(5)%>" class="btn btn-warning">Hide</a>
                        <a style="margin-top: 5px; background-color: #20B2AA" href="requestPostDetail?action=public&pid=<%=rs1.getInt(5)%>" class="btn btn-warning">Public</a><br>
                        <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Post List" style="margin:0;background-color: orange; margin-top: 10px">
                    </div>
                </div><!-- / column -->

                <div class="col-md-7">
                    <img style="padding-top: 20px; height: 520px; width: 100%" src="images/<%=rs1.getString(3)%>" alt="project-image" class="rounded">
                </div><!-- / column -->
                <%}%>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>
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


