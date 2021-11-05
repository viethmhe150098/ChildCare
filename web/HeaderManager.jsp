<%-- 
    Document   : HeaderManager
    Created on : Nov 5, 2021, 1:41:10 PM
    Author     : DO THANH TRUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                            <li><a data-scroll href="CustomerControl">CUSTOMER</a></li>

                        </ul>
                    </div>
                </nav>
                <div class="serch-bar ">
<!--                    <div class="col-md-7" id="custom-search-input">
                        <div class="input-group col-md-12">
                            <input type="text" class="form-control input-lg" placeholder="Search Here" />
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-info btn-lg" type="button">
                                                                <i class="fa fa-search" aria-hidden="true"></i>
                                                            </button>
                                                        </span>
                        </div>

                    </div>-->
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
</body>
</html>
