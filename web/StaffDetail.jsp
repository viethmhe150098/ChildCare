<%-- 
    Document   : UserDetail
    Created on : Oct 14, 2021, 10:15:48 PM
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
    <title>User Detail</title>
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
    <!-- [if lt IE 9] -->
</head>
<body class="clinic_version" style="background:
#EEEEEE">
    <!-- LOADER -->
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
    <div id="about" class="section wow fadeIn" style="padding:0; margin:0;">
        <div class="container bg-secondary">
            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>The Staff Detail</h2>
            </div>
            <!-- end title -->
                      <div class="container">
                <div class="main-body">
                    <br>

                    <div class="row gutters-sm" style="background:#fff;padding:15px;margin-bottom: 15px;">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                        <div class="mt-3">
                                            <h4>${listUser.first_name} ${listUser.last_name}></h4>


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
                                            ${listUser.first_name} ${listUser.last_name}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Gender</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">                                     
                                           ${listUser.gender==1?"Male":"Female"}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                           ${listUser.email}
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">   
                                            <h6 class="mb-0">Phone</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            ${listUser.phone}
                                        </div>
                                    </div>
                                    <hr>

                                    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Role</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                           ${listUser.role==1 ?"Doctor" :"Staff"}
                                        </div>
                                    </div>
                                  
                                </div>
                            </div>
                        </div>

                    </div>
                                         <div class="row">
                                        <div class="col-sm-3">
                                            
                                           <a  href="#services"  data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1 " style="margin-bottom: 15px;"onclick="document.getElementById('subscribe').style.display='block'">Contact with</a>
                                        
                                        </div>
                                       <div class="col-sm-9">
                    <div class="post-media wow fadeIn">
                        <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Customer List" style="margin:0;background-color: orange;margin-left:190px;">
                       
                    </div>
                    <!-- end media -->
                </div>
                                    </div>
                </div>

            </div>
                </div>
                <!-- end col -->
            </div>
        </div>
       
        <!-- end row -->
        <jsp:include page="Footer.jsp"/>
         <style>
              /* Base setting, you can remove */
            
              .modal {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                z-index: 4;
                background-color: rgba(0, 0, 0, 0.25);
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 20px;
              }
              .modal-content {
                min-height: 350px;
                width: 100%;
                max-width: 800px;
                padding: 25px;
                border-radius: 15px;
                position: relative;
                background-color: #fff;
                margin-left: 400px;
                margin-top:200px;
                position: fixed;
                z-index:999;
              }
              .modal-close {
                display: flex;
                justify-content: center;
                align-items: center;
                position: absolute;
                top: 10px;
                right: 10px;
                width: 30px;
                height: 30px;
                border-radius: 10rem;
                background-color: #6a5af9;
                color: white;
                cursor: pointer;
              }
            </style>
            <div id="subscribe" class="modal" style="display: none;">
                <div class="modal-content">
                    <i class="fa fa-times modal-close" onclick="document.getElementById('subscribe').style.display='none'"></i>
                    <h2>Contact with us <i class="fas fa-phone"></i>    </h2>
                    <p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
                                        <h4> <i class="fas fa-envelope"></i> Email: ${listUser.email}</h4>
                                                                               <h4> <i class="fas fa-phone"></i>Phone: ${listUser.phone}</h4>


                    <input type="password" class="form-control" id="inputMatKhau" placeholder="Enter e-mail" style="margin: top 7px;
                                            margin-bottom: 7px;">
                    <p><button style="margin-top:7px" type="button"
                            onclick="document.getElementById('subscribe').style.display='block'"
                            class="w3-button w3-block w3-red">Subscribe</button></p>
                </div>
            
            </div>
                                                                              
<!--<script>
    const modal = document.querySelector('.modal');
      console.log(modal);
        modal.addEventListener('click', () => {
            document.getElementById('subscribe').style.display = 'none';
        })
</script>-->

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