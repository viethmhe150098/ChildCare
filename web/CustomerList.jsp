<%-- 
    Document   : CustomerList
    Created on : Oct 8, 2021, 10:27:49 PM
    Author     : DO THANH TRUNG
--%>
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
    <title>Customer List Page</title>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="./img/logo_web.png" type="image/x-icon">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/service.css">
    <!-- [if lt IE 9] -->
</head>

<body class="clinic_version">
    <!-- LOADER -->
    <div id="preloader">
        <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
    </div>
    <!-- END LOADER -->
    <header>
        <div class="header-top fadeIn">
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
                        <div style="color: black;" class="info-inner">
                            <ul class="list-main">
                                <c:choose>
                                    <c:when test= "${sessionScope.customer_account == null}">
                                        <!--<li><i class="fa fa-user-circle"></i> <a href="#">My account</a></li>-->
                                    </c:when>
                                    <c:otherwise>
                                        <i class="fa fa-user-circle"></i> <a href="Userprofile.jsp"> ${sessionScope.customer_account.username} | </a>
                                    </c:otherwise>
                                </c:choose>
                                <c:choose >
                                    <c:when test = "${sessionScope.customer_account == null}">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i><a href="login"> Login</a>
                                        </c:when>
                                        <c:otherwise>
                                        <i class="fa fa-sign-in"></i><a href="validateCustomer"> Logout</a>
                                        </c:otherwise>
                                    </c:choose>                            
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom fadeIn">
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="ServiceControl">Home</a></li>
                            <li><a data-scroll href="#about">About us</a></li>
                            <li><a data-scroll href="ServiceControl">Services</a></li>
                            <li><a data-scroll href="#doctors">Doctors</a></li>
                            <li><a data-scroll href="#price">Price</a></li>
                            <li><a data-scroll href="BlogController">Blogs</a></li>
                            <li><a data-scroll href="#getintouch">Contact</a></li>
                        </ul>
                    </div>
                </nav>

                <!--                <form action="searchCustomerControl" method="get">
                                    <div class="serch-bar">
                                        <div id="custom-search-input">
                                            <div class="input-group col-md-12">
                                                <input name="name" type="text" class="form-control input-lg" placeholder="Search" />
                                                <span class="input-group-btn">
                                                    <button class="btn btn-info btn-lg" type="button">
                                                        <i class="fa fa-search" aria-hidden="true"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" col-md-4">
                                        <a href="#"><span class="glyphicon glyphicon-shopping-cart align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>
                                    </div>
                                </form>-->

                <form action="searchCustomerControl" method="get">
                    <div class="serch-bar ">
                        <div class="col-md-7" id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input name="name" type="text" class="form-control input-lg" placeholder="Search Here" />
                                <!--                            <span class="input-group-btn">
                                                                <button class="btn btn-info btn-lg" type="button">
                                                                    <i class="fa fa-search" aria-hidden="true"></i>
                                                                </button>
                                                            </span>-->
                            </div>

                        </div>
                        <c:choose>
                            <c:when test= "${sessionScope.customer_account != null}">
                                <div class=" col-md-1">
                                    <a href="MyResevation"><span class="glyphicon glyphicon-shopping-cart align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>
                                </div>
                                <div class="col-md-1">
                                    <a href="Userprofile.jsp"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
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
                </form>
            </div>
        </div>
    </header>
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

    <div id="about" class="section wow fadeIn" style="padding:0; margin:0;">
        <div class="container">
            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>List Customer</h2>
            </div>
            <div class="col-sm-6">
                <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                <!--<a href="updateCustomerControl" class="btn btn-info" ><i class="material-icons">&#xE15C;</i> <span>Update</span></a>-->						
            </div>
            <!--data-toggle="modal"-->

            <form method="post" style="margin-bottom:20px;" action="SearchingCustomer?service=searchBy" class="form-inline" id="searchForm" name="searchObject">
                <select class="form-control" id="trangThai" name="status">
                    <option  value="4">All</option>
                    <option value="0">Status Active</option>
                    <option value="1">Status Inactive</option><!--
                    <option ${checkStatus == 2?"selected":""} value="2">Status2</option>     
                    <option ${checkStatus == 3?"selected":""} value="3">Name</option> -->
                </select>
                <button  type="submit" class="btn btn-success" id="btnDuyetDonHang">Filter</button>
            </form>

            <!-- end title -->

            <table class="table table-dark" style="background: #333;border-radius:10px;margin-top:30px;">
                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>Status</th>
                        <th>Phone</th>
                        <th>Detail</th>
                        <th>Update</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listC}" var="o">
                        <tr>
                            <td>${o.cID}</td>
                            <td>${o.first_name} ${o.last_name}</td>
                            <td>${o.email}</td>
                            <td>${o.gender ==1?"Male":"Female"}</td>
                            <td>${o.age}</td>
                            <td>${o.address}</td>
                            <td>${o.status ==1?"Active":"Inactive"}</td>    
                            <td>${o.tel}</td>    

                            <td><a href="CustomerDetail?cid=${o.cID}#about" style="color:#fff; opacity: 0.8;">Detail</td>
                            <td>
                                <a href="updateCustomerControl?cID=${o.cID}" style="color:#fff" class="edit">Update</a>
                            </td>

                        </c:forEach>
                    </tr>
                </tbody>
            </table> 
        </div>
        <div class="container text-center">
            <ul class="pagination">
                <c:if test="${tag>1}">
                    <li class="page-item "><a class="page-link" href="CustomerControl?index=${tag-1}#about">Previous</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${endP}" var="i">

                    <li class="page-item ${tag== i? "active" :""}"><a class="page-link" href="CustomerControl?index=${i}#about">${i}</a></li>
                    </c:forEach>
                    <c:if test="${tag<endP}">


                    <li class="page-item"><a class="page-link" href="CustomerControl?index=${tag+1}#about">Next</a></li>
                    </c:if>
            </ul>
        </div>

        <jsp:include page="Footer.jsp"/>

        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddCustomer" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Customer <i class="fas fa-user-friends"></i></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>First Name</label>
                                <input name="firstname" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input name="lastname" type="text" class="form-control" required>
                            </div>
                            <div >
                                <p style="color: grey; font-size: 20px">Gender</p>
                                <div class="p-t-10">
                                    <label class="radio-container m-r-45">Male
                                        <input type="radio" name="gender" value="1">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">Female
                                        <input type="radio" name="gender" value="0">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Email <i class="far fa-envelope"></i></label>
                                <input name="email" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Tel <i class="fas fa-phone"></i>
                                </label>
                                <input name="tel" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="text" minlength="8" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input name="age" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <input name="status" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <input name="role" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer" style="margin-top:30px;">
                            <input style="margin-top: 5px" type="submit" class="btn btn-success" value="Add">
                            <input style="background-color: red; color: white; margin-top: 5px;" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        

        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- all js files -->
        <script>
            function disable() {
                document.getElementById("trangThai").disabled = true;
            }
            function enable() {
                document.getElementById("trangThai").disabled = false;
            }
        </script>
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