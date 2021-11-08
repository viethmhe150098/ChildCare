<%-- 
    Document   : AddMedicine
    Created on : Oct 17, 2021, 9:08:02 PM
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
    <title>Add Medicine</title>
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

        }



        img {
            max-width: 180px;
        }

        input{
            border: none;
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

    <div style="margin-top: 200px; ">
        <div class="row display">
            <form method="POST" action="Medicine?service=add">
                <table style="margin: 0 auto">
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" autofocus></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><input type="text" name="quantity"></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="price"></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><input type="text" name="des"></td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="file" name="img"></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit">ADD</button>
                        </td>
                    </tr>
                </table>
                
            </form>

        </div>

    </div>

</body>

</html>