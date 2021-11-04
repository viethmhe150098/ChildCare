<%-- 
    Document   : Header
    Created on : Oct 19, 2021, 2:29:47 PM
    Author     : DO THANH TRUNG
--%>

<%--<%@page import="java.sql.ResultSet"%>
<%@page import="Entity.Customer"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- LOADER -->
<div id="preloader">
    <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
</div>
<!-- END LOADER -->
<header>
    <div class="header-top fadeIn" >
        <div class="container">
            <a class="navbar-brand" href="ServiceControl"><img src="images/logo.png" alt="image"></a>
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
<!--                    <div style="color: black;" class="info-inner">
                        <ul class="list-main">
                            <c:choose>
                                <c:when test= "${sessionScope.customer_account == null}">
                                    <li><i class="fa fa-user-circle"></i> <a href="#">My account</a></li>
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
                    </div>-->
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom fadeIn" >
        <div class="container">
            <div class="row">

                <nav class="main-menu ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="ServiceControl">Home</a></li>
                            <li><a data-scroll href="#about">About us</a></li>
                            <li><a data-scroll href="ServiceControl">Services</a></li>
                            <li><a data-scroll href="#doctors">Doctors</a></li>
                            
                            <c:if test="${sessionScope.customer_account != null}">
                            <li><a data-scroll href="MedicalCustomer">Testimonials</a></li>
                            </c:if>
                            <li><a data-scroll href="BlogController">Blogs</a></li>
                            <li><a data-scroll href="#getintouch">Contact</a></li>
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
                        <c:when test= "${sessionScope.customer_account != null}">
                            <div class=" col-md-1">
                                <a href="ShowCartControl"><span class="glyphicon glyphicon-shopping-cart align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>
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

                <!--                <a href="#"><span class="glyphicon glyphicon-shopping-cart align-self-center" style="color: white!important; display: inline-block; top: 17px; height: 40px"></span></a>-->

            </div>
        </div>
    </div>
</header>
