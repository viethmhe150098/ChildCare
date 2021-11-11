<%-- 
    Document   : FeedBackDetail
    Created on : Oct 22, 2021, 12:29:38 PM
    Author     : ADMIN
--%>

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
    <title>Feedback Detail</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Site Icons -->
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
         <jsp:include page="HeaderManager.jsp"/>

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
                <h2>The Detail Feedback</h2>
            </div>
            <!-- end title -->
            <div class="row">
                <div class="col-md-6">
                    <div class="message-box" style="padding:15px ; background:#fff;border-radius:5px;margin-bottom: 15px;">
                                                                                       <h1>${feedback.content}</h1>

                        <h2>${feedback.name}</h2>
                         <div class="service-price" style="margin-top:10px; background-color:#39b49a;color:white;width: 10%; ">
                               
                                                                <p style="text-align:center;">${feedback.star} <i class="fas fa-star-half-alt"></i></p>

                               
                        </div>
                                                                 <div class="service-price" style="margin:10px 0;padding:10px; background-color:#EEEEEE;color:#000;width: 100%; ">
                        <p>Email: ${feedback.email}</p>
                        <p>Sex : ${feedback.gender==1 ? "Male" : "FeMale"}</p>                         
                        <p>Phone: ${feedback.mobile}</p>
                          </div>
                                                  <p>Description: ${feedback.description}</p>
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

                        <div class="row">
                                        <div class="col-sm-3">
                                              <div class="post-media wow fadeIn">
                        <input class="btn btn-default  check_out" type="button" onclick="history.back()" value="Back to Customer List" style="margin:0;background-color: orange;margin-bottom: 15px;">
                       
                    </div>
                                          
                                        
                                        </div>
                                       <div class="col-sm-9" >
                                            <a  href="#services"  data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1 " style="margin-bottom: 15px;margin-left:100px;"onclick="document.getElementById('subscribe').style.display='block'">Contact with</a>
                  
                    <!-- end media -->
                </div>
                                    </div>
                                                               
                    </div>
                    <!-- end messagebox -->
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="post-media wow fadeIn">
                        <img src="images/${feedback.image}" alt="" class="img-responsive">
                        <a href="http://www.youtube.com/watch?v=nrJtHemSPW4" data-rel="prettyPhoto[gal]" class="playbutton"><i class="flaticon-play-button"></i></a>
                    </div>
                    <!-- end media -->
                </div>
                <!-- end col -->
            </div>
        </div>
        <!-- end row -->
        
        </div>
                                                          <jsp:include page="Footer.jsp"/>
                                                            <style>
              /* Base setting, you can remove */
            
              .modal {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                z-index: 0;
                background-color: rgba(0, 0, 0, 0.25);
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 20px;
                z-index :999;
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
                z-index:4;
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
              .hotline-phone-ring-wrap {
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 999999;
}
.hotline-phone-ring {
  position: relative;
  visibility: visible;
  background-color: transparent;
  width: 110px;
  height: 110px;
  cursor: pointer;
  z-index: 11;
  -webkit-backface-visibility: hidden;
  -webkit-transform: translateZ(0);
  transition: visibility .5s;
  left: 0;
  bottom: 0;
  display: block;
}
.hotline-phone-ring-circle {
	width: 85px;
  height: 85px;
  top: 10px;
  left: 10px;
  position: absolute;
  background-color: transparent;
  border-radius: 100%;
  border: 2px solid #e60808;
  -webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
  animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
  transition: all .5s;
  -webkit-transform-origin: 50% 50%;
  -ms-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
  opacity: 0.5;
}
.hotline-phone-ring-circle-fill {
	width: 55px;
  height: 55px;
  top: 25px;
  left: 25px;
  position: absolute;
  background-color: rgba(230, 8, 8, 0.7);
  border-radius: 100%;
  border: 2px solid transparent;
  -webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
  animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
  transition: all .5s;
  -webkit-transform-origin: 50% 50%;
  -ms-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
}
.hotline-phone-ring-img-circle {
	background-color: #e60808;
	width: 33px;
  height: 33px;
  top: 37px;
  left: 37px;
  position: absolute;
  background-size: 20px;
  border-radius: 100%;
  border: 2px solid transparent;
  -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
  animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
  -webkit-transform-origin: 50% 50%;
  -ms-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
}
.hotline-phone-ring-img-circle .pps-btn-img {
	display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
}
.hotline-phone-ring-img-circle .pps-btn-img img {
	width: 20px;
	height: 20px;
}
.hotline-bar {
  position: absolute;
  background: rgba(230, 8, 8, 0.75);
  height: 40px;
  width: 180px;
  line-height: 40px;
  border-radius: 3px;
  padding: 0 10px;
  background-size: 100%;
  cursor: pointer;
  transition: all 0.8s;
  -webkit-transition: all 0.8s;
  z-index: 9;
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
  border-radius: 50px !important;
  /* width: 175px !important; */
  left: 33px;
  bottom: 37px;
}
.hotline-bar > a {
  color: #fff;
  text-decoration: none;
  font-size: 15px;
  font-weight: bold;
  text-indent: 50px;
  display: block;
  letter-spacing: 1px;
  line-height: 40px;
  font-family: Arial;
}
.hotline-bar > a:hover,
.hotline-bar > a:active {
  color: #fff;
}
@-webkit-keyframes phonering-alo-circle-anim {
  0% {
    -webkit-transform: rotate(0) scale(0.5) skew(1deg);
    -webkit-opacity: 0.1;
  }
  30% {
    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
    -webkit-opacity: 0.5;
  }
  100% {
    -webkit-transform: rotate(0) scale(1) skew(1deg);
    -webkit-opacity: 0.1;
  }
}
@-webkit-keyframes phonering-alo-circle-fill-anim {
  0% {
    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
    opacity: 0.6;
  }
  50% {
    -webkit-transform: rotate(0) scale(1) skew(1deg);
    opacity: 0.6;
  }
  100% {
    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
    opacity: 0.6;
  }
}
@-webkit-keyframes phonering-alo-circle-img-anim {
  0% {
    -webkit-transform: rotate(0) scale(1) skew(1deg);
  }
  10% {
    -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    -webkit-transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    -webkit-transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    -webkit-transform: rotate(0) scale(1) skew(1deg);
  }
  100% {
    -webkit-transform: rotate(0) scale(1) skew(1deg);
  }
}
@media (max-width: 768px) {
  .hotline-bar {
    display: none;
  }
}
            </style>
                                                               <div id="subscribe" class="modal" style="display: none;">
                <div class="modal-content">
                    <i class="fa fa-times modal-close" onclick="document.getElementById('subscribe').style.display='none'"></i>
                    <h2>Contact <i class="fas fa-phone"></i>    </h2>
                    <p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
                                        <h4> <i class="fas fa-envelope"></i> Email: ${feedback.email}</h4>
                                                                               <h4> <i class="fas fa-phone"></i>Phone: ${feedback.mobile}</h4>

 <form action="userDetailControl?service=sendEmail" method="POST">
                   <input name="inputEmail" type="text" class="form-control" id="inputMatKhau" placeholder="Enter sthing :" style="margin: top 7px;
                       margin-bottom: 7px;">
                <input type="hidden" name="sendEmail" value="${feedback.email}">
                
                <p><button style="margin-top:7px; font-size: medium; background-color: #20B2AA; color: black" type="submit"
                           onclick="document.getElementById('subscribe').style.display = 'block'"
                           class="w3-button w3-block w3-red">Subscribe</button></p>
 </form>
                            <div class="hotline-phone-ring-wrap">
	<div class="hotline-phone-ring">
		<div class="hotline-phone-ring-circle"></div>
		<div class="hotline-phone-ring-circle-fill"></div>
		<div class="hotline-phone-ring-img-circle">
		<a href="tel:${feedback.mobile}" class="pps-btn-img">
			<img src="https://nguyenhung.net/wp-content/uploads/2019/05/icon-call-nh.png" alt="Gọi điện thoại" width="50">
		</a>
		</div>
	</div>
	<div class="hotline-bar">
		<a href="tel:${feedback.mobile}">
			<span class="text-hotline">${feedback.mobile}</span>
		</a>
	</div>
</div>
                </div>
            
            </div>

        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- all js files -->
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