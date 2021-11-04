<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : MService
    Created on : Oct 17, 2021, 5:28:02 PM
    Author     : LOVE
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
        <title>Life Care - Responsive HTML5 Multi Page Template</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Site Icons -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">        
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
            .TopBar {
                width: 100%;
                height: 50px;
                background-color: white;
                position: sticky;
                top: 0;
                display: flex;
                align-items: center;
                z-index: 999;

            }

            .TopLeft,
            .TopRight {
                flex: 1;
                display: flex;
                align-items: center;
                justify-content: center;

            }

            .topicon {
                font-size: 18px;
            }

            .TopCenter {
                flex: 6;

            }

            .topList {
                display: flex;
                justify-content: center;
                margin: 0;
                padding: 0;
                list-style: none;
            }

            .topListItem {
                margin-right: 20px;
                font-size: 18px;
                font-weight: 300;
                cursor: pointer;

            }

            .ListCard {
                margin-top: 20px;
                height: 300px;
                width: 100%;

                padding-top: 45px;
            }

            .card_1st {
                height: 100%;
                background-color: green;
                opacity: 0.3;
            }

            .card:first-child {
                margin-left: 25px;
            }

            .card-content {
                text-align: center;
                font-size: 100px;
                color: white;
            }

            .topListItem:hover {
                color: lightgray;
            }

            .ListCard_2th {
                width: 100%;
                margin-top: 20px;
                display: flex;
                padding: 10px;

                height: 400px;
            }

            .Card_2th {
                padding-top: 10px;
                border: 1px solid black;
                border-radius: 10px;
                min-height: 100%;
            }
            .card_content{
                padding-left: 10px;
                height: 300px;
                padding-bottom: 0px;
                overflow-y: scroll;
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
                            <li><a  href="ManagerController">HOME</a></li>
                            <li><a  href="">RESERVATION</a></li>
                            <li><a data-scroll href="PostControler">POST</a></li>
                            <li><a data-scroll href="MServiceControl">SERVICE</a></li>
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





    <div id="Apply" style="margin-top:140px">
        <div class="container">     

            <div class="dropdown">
                <div class="dropdown__select">
                    <span class="dropdown__selected">Category of Services</span>
                    <i class="fa fa-caret-down dropdown__caret"></i>
                </div>

                <ul class="dropdown__list">
                    <li class="dropdown__item">
                        <a  href="ServiceControl#Apply" class="dropdown__text" style="color:#fff;">All of Services</a>
                        <i class="fa fa-plus-circle dropdown__icon"></i>
                    </li>
                    <c:forEach items="${listC}"  var ="o">
                        <li class="dropdown__item">
                            <a  href="CategoryControl?cid=${o.scID}#Apply" class="dropdown__text" style="color:#fff;">${o.scCateName}</a>
                            <i class="fa fa-plus-circle dropdown__icon"></i>
                        </li>
                    </c:forEach>
                </ul>

            </div>
           

        </div>
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                <div class="inner-services">
                    
                    <div class="reservation">
                        <div class="wrapper1 container">
                            
                            <table class="table datatable" id = "Mytable" style="width: 100% ; margin-top: 100px; color: black; border: 1px solid rgba(0, 181, 204, 1);  text-align: center;" >
                                <thead >
                                    <tr>
                                        <th  style="text-align: center!important;">Image</th>
                                        <th  style="text-align: center!important;">Name</th>
                                        <th  style="text-align: center!important;">Description</th>
                                        <th  style="text-align: center!important;">Price</th>
                                        <th  style="text-align: center!important;">Quantity</th>
                                        <th  style="text-align: center!important;">Action<th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listS}"  var ="o">
                                        <tr style="text-align: center;">

                                            <td><span class="icon-service"><img  class="img-service"src="images/clinic_04.jpg" alt="#"  style="width: 220px;height:220px;border-radius: 10px;"/></span></td>
                                            <td><p class="card-title show_txt"><a class="name_service" href="MServiceDetail?sid=${o.sID}&&scID=${o.scID}" title="View Product">${o.sname}</a></p></td>
                                            <td>${o.description}</td>
                                            <td>${o.sprice}</td>
                                            <td>${o.maxquantity}</td>
                                            <td><a href="MServiceDetail?sid=${o.sID}&&scID=${o.scID}"><span class="glyphicon glyphicon-eye-open"></span> </a><a href="#"><span class="glyphicon glyphicon-trash"></span></a></td>

                                        </tr>

                                    </c:forEach>

                                </tbody>
                            </table>
                            <div class="modal-footer">
                                <button style="color: black; border: 1px solid rgba(0, 181, 204, 1)"  type="button" class="btn btn-secondary" data-dismiss="modal">Add service</button>

                            </div>
                        </div>
                    </div>








                    <div class= "text-center col-lg-12 col-md-12 col-sm-6 col-xs-12">
                        <ul class="pagination">
                            <c:if test="${tag>1}">
                                <li class="page-item"><a class="page-link" href="ServiceControl?index=${tag-1}#Apply">Previous</a></li>
                                </c:if>
                                <c:forEach begin="1" end="${endP}" var="i">

                                <li class="page-item ${tag== i? "active" :""}"><a class="page-link" href="ServiceControl?index=${i}#Apply">${i}</a></li>
                                </c:forEach>
                                <c:if test="${tag<endP}">


                                <li class="page-item"><a class="page-link" href="ServiceControl?index=${tag+1}#Apply">Next</a></li>
                                </c:if>
                        </ul>
                    </div>

                </div>

            </div>



        </div>



    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>



<script>
    $(document).ready(function () {
        $('#Mytable').DataTable({
            columns: [
                
                //any column configuration
                {"bSearchable": true}, //col 1
                {"bSearchable": true}, //col 2
                {"bSearchable": true}, //col 3
                {"bSearchable": true}, //col 4
                {"bSearchable": true}, //col 5
                {"bSearchable": true} //col 6 
                
            ]});
    });</script>


</body>

</html>
