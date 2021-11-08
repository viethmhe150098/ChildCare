<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : displayMedicine
    Created on : Oct 17, 2021, 9:50:06 PM
    Author     : Viet
--%>

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
        <title>Medicine</title>
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
        <title>Document</title>
        <style>
            .display {
                width: 70%;
                height: 500px;

                margin: 0 auto;
                overflow: scroll;
                align-items: center;

            }
            .card{
                margin-top: 5px;
                height: 300px;

            }
            .center{
                display: flex;
                justify-content: center;
                align-items: center;
            }
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

    <body>

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
                                <span class="iconcont"><a data-scroll
                                                          href="mailto:info@yoursite.com">info@Lifecare.com</a></span>
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
        <div class="header-bottom fadeIn">
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars"
                                                                                              aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.html">HOME</a></li>
                            <li><a href="index.html">RESERVATION</a></li>
                            <li><a data-scroll href="#about">POST</a></li>
                            <li><a data-scroll href="#service">SLOT</a></li>
                            <li><a data-scroll href="#doctors">MEDICINE</a></li>
                            <li><a data-scroll href="#price">FEEDBACK</a></li>

                        </ul>
                    </div>
                </nav>
                <div class="serch-bar">
                    <div id="custom-search-input">
                        <div class="input-group col-md-12">
                            <input type="text" class="form-control input-lg" placeholder="Search" />
                            <span class="input-group-btn">
                                <button class="btn btn-info btn-lg" type="button">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </header>

    <div style="margin-top: 200px;display: flex;">
        <div class="row display">
            <c:forEach var="o" items="${list}">
                <div class="col-sm-6 card">
                    <h1><b>NAME:</b>${o.meName}</h1>
                    <p><b>DESC:</b>${o.meDes}</p>
                    <p><b>QUANTITY:</b>${o.meQuantity}</p>
                    <p><b>PRICE:</b>${o.mePrice}</p>
                    <img src=${o.meImg} style="height: 100px; width: 100px;"></br>
                    <a href="Medicine?service=delete&meid=${o.meID}" class="delete" data-confirm="Are you sure to delete this item?"><i class="far fa-trash-alt button" style="font-size: 20px"></i></a>
                    <a ><i class="fas fa-pen button" data-modal="modalTwo" style="font-size: 20px"></i></a>
                </div>
                <div id="modalTwo" class="modal">
                    <div class="modal-content">
                        <div class="contact-form">
                            <a class="close">&times;</a>
                            <form action="Medicine?service=update&meid=${o.meID}" method="post">
                                <div>
                                    <input class="fname" type="text" name="name" value="${o.meName}">
                                    <input type="text" name="quan" value="${o.meQuantity}">
                                    <input type="text" name="price" value="${o.mePrice}">
                                    <input type="text" name="des" value="${o.meDes}">
                                    <input type="text" name="img" value="${o.meImg}">
                                </div>
                                <button type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="center">
        <button class="button" data-modal="modalOne" style="background-color: #07B3F9; margin: 20px 0px; ">ADD NEW MEDICINE</button>
    </div>
    <div id="modalOne" class="modal">
        <div class="modal-content">
            <div class="contact-form">
                <a class="close">&times;</a>
                <form action="Medicine?service=add"  method="post">
                    <div>
                        <input class="fname" type="text" name="name" placeholder="MEDICINE NAME">
                        <input type="text" name="quan" placeholder="QUANTITY">
                        <input type="text" name="price" placeholder="PRICE">
                        <input type="text" name="des" placeholder="DESCRIPTION（UP TO 50 CHARACTERS）">
                        <input type="text" name="img" placeholder="PASTE HERE FIREBASE LINK">
                    </div>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>

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
        var deleteLinks = document.querySelectorAll('.delete');

        for (var i = 0; i < deleteLinks.length; i++) {
            deleteLinks[i].addEventListener('click', function (event) {
                event.preventDefault();

                var choice = confirm(this.getAttribute('data-confirm'));

                if (choice) {
                    window.location.href = this.getAttribute('href');
                }
            });
        }
    </script>
</body>

</html>
