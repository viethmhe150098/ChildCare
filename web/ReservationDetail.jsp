<%-- 
    Document   : ReservationDetail
    Created on : Oct 10, 2021, 5:41:45 PM
    Author     : DO THANH TRUNG
--%>

<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- Site Metas -->
        <title>Reservation Detail</title>
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
        <style>
            .contain {
                margin: 10px 0px;
                width: 100vw;
                height: 80vh;
                display: flex;

            }

            .leftside_bar {
                flex: 1;
                background-color: azure;

            }

            .leftside_bar ul {
                list-style: none;
                margin: 20px;
            }

            .leftside_bar li {
                margin: 10px;
                cursor: pointer;
                font-size: 20px;
                padding: 10px;
            }
            .leftside_bar li:hover{
                background-color: rgba(232, 232, 232, 1);
            }
            .reservation {
                padding: 20px;
                flex: 3;
                justify-content: center;
                align-items: center;
                color: white;
            }

            h1 {
                font-weight: bolder;
            }

            tr:first-child td {
                color: white;
                background-color: rgba(0, 181, 204, 1);
            }

            table {
                border: 1px solid rgba(0, 181, 204, 1);
                text-align: center;

            }

            td {
                color: rgba(0, 181, 204, 1);
            }

            td:first-child {
                width: 15%;
            }

            td:nth-child(2) {
                width: 25%;
            }

            td:nth-child(3) {
                width: 10%;
            }

            td:nth-child(4) {
                width: 20%;

            }
            
            td:nth-child(5) {
                width: 15%;

            }
            
            td:nth-child(6) {
                width: 15%;

            }

            .wrapper2 {
                margin: 40px 0px;
            }

            .wrapper3 {
                height: 40vh;
                display: flex;

            }

            .left_table {
                padding: 10px;
                flex: 1;
                justify-content: center;
                align-items: center;

            }

            .right_table {
                padding: 10px;
                flex: 1;

            }

            .content {
                width: 90%;
                background-color: rgba(243, 241, 239, 1);
                padding: 20px;
                color: rgba(0, 181, 204, 1);
                height: 60%;
            }

            p {
                font-weight: 3000q;
            }

            .content h2 {
                color: rgba(0, 181, 204, 1);
            }
        </style>
    </head>

    <body class="clinic_version">

        <jsp:include page="Header.jsp"/>
        <div id="home" class="parallax first-section wow fadeIn" data-stellar-background-ratio="0.4"
             style="background-image:url('images/slider-bg.png');">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="text-contant">
                            <h2>
                                <span class="center"><span class="icon"><img src="images/icon-logo.png"
                                                                             alt="#" /></span></span>
                                <a href="" class="typewrite" data-period="2000"
                                   data-type='[ "Welcome to Life Care", "We Care Your Health", "We are Expert!" ]'>
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
        <div class="contain">

            <!--            <div class="leftside_bar">
                            <div>
                                <ul>
                                    <li>
                                        <i class='fas fa-user-circle'></i>
                                        <a>MY ACCOUNT</a>
                                    </li>
                                    <li>
                                        <i class='fas fa-user-edit'></i>
                                        <a>MY PROFILE</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-history" aria-hidden="true"></i>
                                        <a>RESERVATION HISTORY</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-address-card" aria-hidden="true"></i>
                                        <a>ADDRESS</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-sign-out-alt" aria-hidden="true"></i>
                                        <a>LOG OUT</a>
                                    </li>
                                </ul>
                            </div>
                        </div>-->

            <div class="reservation">
                <%ResultSet rs1 = (ResultSet) request.getAttribute("reserDetail");%>
                <%while (rs1.next()) {%>
                <h1>Reservation ID : <%=rs1.getString(1)%></h1>
                <div class="wrapper1">
                    <h2>MY RESERVATION</h2>
                    <table>
                        <tr>
                            <td>RESERVATION ID</td>
                            <td>STATUS</td>
                            <td>DATE</td>
                            <td>SERVICE CATEGORY</td>
                            <td>TOTAL PRICE</td>
                            <td>MEDICAL EXAMINATION </td>
                        </tr>
                        <tr>
                            <td><%=rs1.getString(1)%></td>
                            <td>
                                <%=(rs1.getInt(11) == 1) ? "Shipped" : "Waiting"%>

                                <a href="request?action=accept&ida=<%=rs1.getInt(1)%>" class="btn-success" style="border-radius: 5px; background-color: #39b49b">Accept</a>
                                <a href="request?action=reject&idr=<%=rs1.getInt(1)%>" class="btn-success" style="border-radius: 5px; background-color: #39b49b">Reject</a>
                                <!--<a href="request?action=accept&ida=<%=rs1.getInt(11)%>">Accept</a>
                                <a href="request?action=reject&idr=<%=rs1.getInt(11)%>">Reject</a>-->
                            </td>
                            <td><%=rs1.getString(2)%></td>
                            <td><%=rs1.getString(12)%></td>
                            <td><%=rs1.getDouble(10)%></td>
                            <td><a href="medical?reID=<%=rs1.getInt(1)%>" style="color: rgba(0, 181, 204, 1);">Medical</a></td>
                        </tr>
                    </table>
                </div>
                <div class="wrapper2">
                    <!--                    <h2>RESERVATION SUMMARY</h2>
                                        <table>
                                            <tr>
                                                <td>SERVICE</td>
                                                <td>QUANTITY </td>
                                                <td>VALUE </td>
                                            </tr>
                                            <tr>
                                                <td>KHÁM PHỔI </td>
                                                <td>1</td>
                                                <td>40$</td>
                                            </tr>
                                        </table>-->
                </div>
                <div class="wrapper3">
                    <div class="left_table">
                        <h1>CUSTOMER INFORMATION</h1>
                        <div class="content">
                            <h2>Full Name: <%=rs1.getString(3)%></h2>
                            <div>
                                Gmail: <%=rs1.getString(4)%><br>
                                Tel: <%=rs1.getString(5)%>
                            </div>
                        </div>
                    </div>
                    <div class="right_table">
                        <h1>RECEIVER INFORMATION</h1>
                        <div class="content">
                            <h2>Full Name: <%=rs1.getString(6)%></h2>
                            <div>
                                Gender: <%=(rs1.getString(8) == "1") ? "Male" : "Female"%><br>
                                Gmail: <%=rs1.getString(9)%><br>
                                Tel: <%=rs1.getString(7)%>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>

        <jsp:include page="Footer.jsp"/>
        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- all js files -->
        <script src="js/all.js"></script>
        <!-- all plugins -->
        <script src="js/custom.js"></script>
        <!-- map -->
        <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
    </body>

</html>


