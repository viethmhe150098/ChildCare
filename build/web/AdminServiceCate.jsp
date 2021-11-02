<%-- 
    Document   : AdminServiceCate
    Created on : Oct 28, 2021, 10:10:24 PM
    Author     : DO THANH TRUNG
--%>

<%@page import="Entity.SerCate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- Site Metas -->
        <title>Admin Service Category</title>
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

    <body>
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
        <div class="header-bottom fadeIn" >
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a  href="AdminController">HOME</a></li>
                            <li><a data-scroll href="ServiceCategory">Service Category</a></li>
                            <li><a data-scroll href="PostCategory">Post Category</a></li>
                        </ul>
                    </div>
                </nav>
                <div class="serch-bar ">
                    <div class="col-md-7" id="custom-search-input">
                        <div class="input-group col-md-12">
                            <input type="text" class="form-control input-lg" placeholder="Search Here" />
                        </div>
                    </div>

                    <c:choose>
                        <c:when test= "${sessionScope.admin_account != null}">
                            <div class="col-md-1">
                                <a href="AdminProfile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
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
    <div class="contain">
        <div class="leftside_bar">
            <div>
                <ul>
                    <li>
                        <i class="fa fa-address-card" aria-hidden="true"></i>
                        <a href = "ServiceCategory">Service Category</a>
                    </li>
                    <li>
                        <i class="fa fa-address-card" aria-hidden="true"></i>
                        <a href = "PostCategory">Post Category</a>
                    </li>
                </ul>
            </div>
        </div>

        <div style="width: 100%; margin-right: 20px" class="reservation">

            <div class="wrapper1">
                <h2>Post Category List</h2>
                <table style="width: 100%">
                    <tr>
                        <td>Post Category ID</td>
                        <td>Post Category NAME</td>
                        <td>Update</td>
                        <!--<td>Add</td>-->
                    </tr>
                    <% List<SerCate> list = (ArrayList<SerCate>) request.getAttribute("listServiceCate");
                        for (SerCate r : list) {
                    %>
                    <tr>
                        <td><%=r.getScID()%></td>
                        <td><%=r.getScCateName()%></td>
                        <td style="text-decoration: underline"><a href="UpdateServiceCate?scID=<%=r.getScID()%>">Update</a></td>
                    </tr>
                    <% }%>
                </table>

                <div style="margin-top: 10px">
                    <a href="#addServiceCateModal" style="background-color: #20B2AA; color: white" class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Add New Service Category</span></a>
                </div>
            </div>
        </div>
    </div>

    <div id="addServiceCateModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="AddServiceCate" method="post">
                    <div class="modal-header">						
                        <h4 class="modal-title">Add Service Category <i class="fas fa-user-friends"></i></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Service Name</label>
                            <input name="scCateName" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer" style="margin-top:30px;">
                        <input style="margin-top: 5px" type="submit" class="btn btn-success" value="Add">
                        <input style="background-color: red; color: white; margin-top: 5px" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>
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

