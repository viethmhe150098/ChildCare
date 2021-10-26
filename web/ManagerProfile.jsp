<%-- 
    Document   : ManagerProfile
    Created on : Oct 26, 2021, 3:38:30 PM
    Author     : Viet
--%>

<%@page import="Entity.Manager"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                <li><a data-scroll href="PostControler">POST</a></li>
                                <li><a data-scroll href="#service">SLOT</a></li>
                                <li><a data-scroll href="Medicine">MEDICINE</a></li>
                                <li><a data-scroll href="#price">FEEDBACK</a></li>

                            </ul>
                        </div>
                    </nav>
                    <div class="serch-bar ">
                        <div class="col-md-7" id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input type="text" class="form-control input-lg" placeholder="Search Here" />
                                <!--                            <span class="input-group-btn">
                                                                <button class="btn btn-info btn-lg" type="button">
                                                                    <i class="fa fa-search" aria-hidden="true"></i>
                                                                </button>
                                                            </span>-->
                            </div>

                        </div>
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
        <%  session = request.getSession(true);
            Manager a = (Manager) session.getAttribute("manager_account");
        %>
        <div class="container" style="margin-top: 200px ">
            <div class="main-body">
                <br>

                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                    <div class="mt-3">
                                        <h4><%=a.getFirst_name() + " " + a.getLast_name()%></h4>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <%=a.getFirst_name() + " " + a.getLast_name()%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">                                     
                                        <% if (a.getGender() == 1) {
                                                out.println("Male");
                                            } else {
                                                out.println("Female");
                                            }%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">

                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">   
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">

                                    </div>
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <%= a.getAddress()%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-info " target="__blank" href="">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
