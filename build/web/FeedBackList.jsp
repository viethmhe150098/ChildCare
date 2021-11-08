<%-- 
    Document   : FeedBackList
    Created on : Oct 15, 2021, 8:34:44 PM
    Author     : ADMIN
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
    <title>Feedback List</title>
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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <div class="container">
            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>The Feedback List</h2>
            </div>
            <div class="handleform" style="margin-bottom:20px;">
                <form method="post" style="margin-bottom:20px; text-align: center" action="SearchingFeedback?service=searchBy" class="form-inline" id="searchForm" name="searchObject">
                <select class="form-control" id="trangThai" name="status">
                    <option  value="4">All</option>
                    <option value="0">Name <i class="fas fa-male"></i></option>
                    <option value="1">Star <i class="fas fa-star-half-alt"></i></option><!--
                    <option ${checkStatus == 2?"selected":""} value="2">Status2</option>     
                    <option ${checkStatus == 3?"selected":""} value="3">Name</option> -->
                </select>
                <button  type="submit" class="bg-secondary" id="btnDuyetDonHang">Filter</button>
            </form>
                 <form action="searchFeedback" method="post">
                <div class="search1" style="width: 40% ;margin: 0 auto;">
                    <input type="text" value="${txtS}" name="name" placeholder="Type your search :" />
                    <button  type="submit" style=" background: -webkit-linear-gradient(left, #39b49a 0%, #1d86df 100%);
                             background: linear-gradient(to right, #39b49a 0%, #1d86df 100%);">Search</button>
                             </div>
            </form>
            </div>
                 
           
           
            <!-- end title -->
                             <c:forEach items="${listFeedback}" var="o">
                                 <div class="container">
                                          <div class="row">
                <div class="col-md-6">
                    <div class="message-box">
                        <div style="padding:15px ; background:#fff;border-radius:5px;margin-bottom: 15px;">
                             <h4>${o.fID}</h4>
                             <h2><a href="FeedbackDetailControl?fID=${o.fID}#about" style="margin:0 auto;">${o.name}</a></h2>
                       
                   
                            <div class="service-price" style="margin-top:10px; background-color:#39b49a;color:white;width: 10%; ">
                               
                                                                <p style="text-align:center;">${o.star} <i class="fas fa-star-half-alt"></i></p>

                               
                        </div>
                        <p class="lead">${o.content}</p>
                       
                         </div>
                                    </div>
                         <button class="w3-left w3-button w3-white w3-border" onclick="likeFunction(this)"><b>&#10003 Like</b></button></p>
                            <button class="w3-right w3-button w3-black mtl" onclick="myFunction('demo3')"
                                id="myBtn"><b>Replies
                                    &nbsp;</b> <span class="w3-tag w3-white">1</span></button></p>
                            <p class="w3-clear"></p>
                              <div id="demo3" style="display:none">
                            <hr>
                            <div class="w3-row w3-margin-bottom">
                                <div class="w3-col l2 m3">
                                    <img src="images/doctor_03.jpg" style="width:90px;">
                                </div>
                                <div class="w3-col l10 m9">
                                    <h4>Jane <span class="w3-opacity w3-medium">April 10, 2015, 7:22 PM</span></h4>
                                    <p>That was a great runway show! Thanks for everything.</p>
                                </div>
                            </div>
                            <div class="w3-row w3-margin-bottom">
                                <div class="w3-col l2 m3">
                                    <img src="images/doctor_01.jpg" style="width:90px;">
                                </div>
                                <div class="w3-col l10 m9">
                                    <h4>John <span class="w3-opacity w3-medium">April 8, 2015, 10:32 PM</span></h4>
                                    <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet,
                                        consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                </div>
                            </div>
                            <div class="w3-row w3-margin-bottom">
                                <div class="w3-col l2 m3">
                                    <img src="images/doctor_02.jpg" style="width:90px;">
                                </div>
                                <div class="w3-col l10 m9">
                                    <h4>Anja <span class="w3-opacity w3-medium">April 7, 2015, 9:12 PM</span></h4>
                                    <p>Cant wait for the runway to start!</p>
                                </div>
                            </div>
                              </div>

                    </div>
                    <!-- end messagebox -->
               
                <!-- end col -->
                <div class="col-md-6">
                    <div class="post-media wow fadeIn" >
                        <img src="images/${o.image}" alt="" class="img-responsive" style="height:280px; margin-bottom: 25px;">
                    </div>
                    <!-- end media -->
                </div>
                <!-- end col -->
                
                                         </c:forEach>
                  </div>

            <div class="container text-center">
            <ul class="pagination">
                <c:if test="${tag>1}">
                    <li class="page-item "><a class="page-link" href="FeedbackControl?index=${tag-1}#about">Previous</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${endP}" var="i">

                    <li class="page-item ${tag== i? "active" :""}"><a class="page-link" href="FeedbackControl?index=${i}#about">${i}</a></li>
                    </c:forEach>
                    <c:if test="${tag<endP}">


                    <li class="page-item"><a class="page-link" href="FeedbackControl?index=${tag+1}#about">Next</a></li>
                    </c:if>
            </ul>
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>

        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="https://unpkg.com/scrollreveal"></script>
        <script src="./js/main.js"></script>
        <script>
        // Toggle between hiding and showing blog replies/comments
        document.getElementById(" myBtn").click(); function myFunction(id) {
            var x = document.getElementById(id); if
                (x.className.indexOf("w3-show") == -1) { x.className += " w3-show"; } else {
                x.className = x.className.replace(" w3-show", "");
            }
           
        }
        const isPlaying = false;
         function likeFunction(x) {
            if(this.isPlaying){
                x.style.fontWeight = "bold"; x.innerHTML = "&#10003; Like";
                this.isPlaying=false;
            }else {
                x.style.fontWeight = "bold"; x.innerHTML = "&times; UnLike";
                this.isPlaying = true;

            }
            
        }
          function dieu_huong(){
            location.assign("http://localhost:63270/ChildCare/ServiceControl");
        }
            </script>

</body>   
</html>