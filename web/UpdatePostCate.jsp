<%-- 
    Document   : UpdatePostCate
    Created on : Oct 28, 2021, 9:36:32 PM
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
    <title>Update Post Category</title>
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

    <!--    <link rel="stylesheet" href="./css/register.css">-->
    <!-- [if lt IE 9] -->
</head>

<body style="background: -webkit-linear-gradient(to top, #52a0b8, #8DC26F);
      background: -moz-linear-gradient(to top, #52a0b8, #8DC26F);
      background: -o-linear-gradient(to top, #52a0b8, #8DC26F);
      background: linear-gradient(to top, #52a0b8, #8DC26F);" class="clinic_version">

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
                                <a href="#"><span class="glyphicon glyphicon-user align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span>
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

<!--<div id="editEmployeeModal" class="modal fade">-->
<div class="modal-dialog">
    <div class="modal-content">
        <form action="UpdatePostCate" method="POST">
            <div class="modal-header">						
                <h4 class="modal-title">Update Post Category <i class="fas fa-user-friends"></i></h4>
            </div>
            <div class="modal-body">					
                <div class="form-group">
                    <label>Post Category ID</label>
                    <input type="text" name="pcateid" value="${postcate.pCateID}" readonly/>
                </div>
                <div class="form-group">
                    <label>Post Category Name</label>
                    <input name="pcatename" type="text" value="${postcate.pCateName}" class="form-control" required>
                </div>                    
            </div>
            <div class="modal-footer" style="margin-top:30px;">
                <input style="margin-top: 5px" type="submit" class="btn btn-success" value="Update">
            </div>
        </form>
    </div>
</div>
<!--</div>-->


<jsp:include page="Footer.jsp"/>


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