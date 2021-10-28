<%-- 
    Document   : Post
    Created on : Oct 23, 2021, 11:40:51 AM
    Author     : Viet
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
    <title>Blog List</title>
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

    <!--<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">-->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main1.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="./img/logo_web.png" type="image/x-icon">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/blog.css">
    <!-- [if lt IE 9] -->

    <!--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>-->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        button{
            width: 200px;
            padding: 10px;
            border: none;
            border-radius: 10px;
            font-weight: bolder;
            background-color: #07B3F9;
            color: white
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 8;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.4);
        }
        .modal-content {
            margin: 50px auto;
            border: 1px solid #999;
            width: 60%;
        }
        form {
            padding: 25px;
            margin: 25px;
            box-shadow: 0 2px 5px #f5f5f5;
            background: #eee;
        }
        input,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #1c87c9;
            outline: none;
        }
        .contact-form button {
            width: 100%;
            padding: 10px;
            border: none;
            background: #1c87c9;
            font-size: 16px;
            font-weight: 400;
            color: #fff;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        button.button {
            background: none;
            border-top: none;
            outline: none;
            border-right: none;
            border-left: none;
            border-bottom: #02274a 1px solid;
            padding: 0 0 3px 0;
            font-size: 16px;
            cursor: pointer;
        }
        button.button:hover {
            border-bottom: #a99567 1px solid;
            color: #a99567;
        }
    </style>
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


    <div  class="container" style="margin-top: 200px">
        <%ResultSet rs1 = (ResultSet) request.getAttribute("ketQua1");%>
        <%while (rs1.next()) {%>
        <div class="row col-md-4">
            <div >
                <div style="margin-right: 20px; height: 510px" class="item-box-blog">
                    <div class="item-box-blog-image">
                        <figure> <img alt="" style="width: 100%; height: 250px" src=<%=rs1.getString(4)%>> </figure>
                    </div>
                    <div class="item-box-blog-body">
                        <!--Heading-->
                        <div class="item-box-blog-heading" style="height: 40px; margin-bottom: 10px">
                            <a href="#" tabindex="0">
                                <h2><%=rs1.getString(1)%></h2>
                            </a>
                        </div>
                        <!--Data-->
                        <div class="item-box-blog-data" style="padding: px 15px; color: black">
                            <p>Post Category: <%=rs1.getString(6)%></p>
                            <p>Author: <%=rs1.getString(7)%> <%=rs1.getString(8)%></p>
                        </div>
                        <!--Text-->
                        <div class="item-box-blog-text" style="color: black">
                            <p style="text-overflow: ellipsis; display: -webkit-box;-webkit-line-clamp: 1;-webkit-box-orient: vertical; "><%=rs1.getString(10)%></p>
                        </div>
                        <div class="item-box-blog-text" style="color: black">
                            <p>Create Date: <%=rs1.getString(2)%></p>
                        </div>

                        <div style="width: 100%; height: 27px"> 
                            <a href="postDetail?pID=<%=rs1.getInt(9)%>" style="margin-left: 0 auto" class="btn btn-primary">READ MORE</a> 
                        </div>
                        <div class="row" style="height: 27px; margin-top: 10px; ">
                            <div class="col-md-6">
                                <a href="PostControler?service=delete&pid=<%=rs1.getInt(9)%>" class="btn btn-danger">DELETE</a>
                            </div>
                            <% if (rs1.getInt(11) == 1) {%>
                            <div class="col-md-6">
                                <a href="PostControler?service=changeStatus&pid=<%=rs1.getInt(9)%>&status=<%=rs1.getInt(11)%>" class="btn btn-warning">Hide</a>
                            </div>
                            <%} else {%>
                            <div class="col-md-6">
                                <a href="PostControler?service=changeStatus&pid=<%=rs1.getInt(9)%>&status=<%=rs1.getInt(11)%>" class="btn btn-success">Publish</a>
                            </div>
                            <%}%>
                        </div>
                        <!--Read More Button-->
                    </div>
                </div>
            </div>                                 
        </div>
        <%}%>
        <div class="center">
            <button class="button" data-modal="modalOne" style="background-color: #07B3F9; margin: 20px 0px; ">ADD NEW POST</button>
        </div>
        <div id="modalOne" class="modal">
            <div class="modal-content">
                <div class="contact-form">
                    <a class="close">&times;</a>
                    <form action="PostControler?service=add"  method="post"　enctype="multipart/form-data">
                        <div>
                            <input type="hidden" name="author" value="${sessionScope.manager_account.mID}">
                            <input class="fname" type="text" name="title" placeholder="TITLE">
                            <input type="file" name="img">
                            <select name="cat">
                                <c:forEach var="o" items="${list}">
                                    <option value="${o.pCateID}">${o.pCateName}</option>
                                </c:forEach>
                            </select>
                            <textarea name="content" style="margin-top: 20px"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-6" > 
                                <button type="submit" name="status" value="0">Save</button>
                            </div>
                            <div class="col-md-6" > 
                                <button type="submit" name="status" value="1" style="background-color: teal">Publish</button>
                            </div>

                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>




    <div class="container text-center">
        <ul class="pagination">
            <c:if test="${tag>1}">
                <li class="page-item "><a class="page-link" href="BlogController?index=${tag-1}#about">Previous</a></li>
                </c:if>
                <c:forEach begin="1" end="${endP}" var="i">

                <li class="page-item ${tag== i? "active" :""}"><a class="page-link" href="BlogController?index=${i}#about">${i}</a></li>
                </c:forEach>
                <c:if test="${tag<endP}">


                <li class="page-item"><a class="page-link" href="BlogController?index=${tag+1}#about">Next</a></li>
                </c:if>
        </ul>
    </div>



    <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
    <script>
        let modalBtns = [...document.querySelectorAll(".button")];
        modalBtns.forEach(function (btn) {
            btn.onclick = function () {
                let modal = btn.getAttribute('data-modal');
                document.getElementById(modal)
                        .style.display = "block";
            };
        });
        let closeBtns = [...document.querySelectorAll(".close")];
        closeBtns.forEach(function (btn) {
            btn.onclick = function () {
                let modal = btn.closest('.modal');
                modal.style.display = "none";
            };
        });
        window.onclick = function (event) {
            if (event.target.className === "modal") {
                event.target.style.display = "none";
            }
        };
    </script>
    <!-- all js files -->
    <script src="js/all.js"></script>
    <!-- all plugins -->
    <script src="js/custom.js"></script>
    <!-- map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="./js/main.js"></script>



    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
        $('.js-pscroll').each(function () {
            var ps = new PerfectScrollbar(this);

            $(window).on('resize', function () {
                ps.update();
            })
        });


    </script>
    <!--===============================================================================================-->
    <script src="js/main1.js"></script>
</body>
</html>
