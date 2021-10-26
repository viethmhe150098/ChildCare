<%-- 
    Document   : ManagerProfile
    Created on : Oct 26, 2021, 3:38:30 PM
    Author     : Viet
--%>

<%@page import="Entity.Manager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                <li><a  href="index.html">HOME</a></li>
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
                </div>
            </div>
        </header>
        <%  session = request.getSession(true);
            Manager a = (Manager) session.getAttribute("manager_account");
        %>
        <div class="container">
            <div class="main-body">
                <br>

                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                    <div class="mt-3">
                                        <h4><%=a.getFirst_name() + " " + a.getLast_name()%></h4>


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
                                        <%=a.getFirst_name() + " " + a.getLast_name()%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">                                     
                                        <% if (a.getGender()==1) {
                                                out.println("Male");
                                            } else {
                                                out.println("Female");
                                            }%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <% %>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">   
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <%=a.getTel()%>
                                    </div>
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <%= a.getAddress()%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-info " target="__blank" href="">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
