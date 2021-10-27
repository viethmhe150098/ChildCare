<%-- 
    Document   : UserList
    Created on : Oct 14, 2021, 2:14:34 PM
    Author     : DO THANH TRUNG
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
    <title>User List</title>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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

<body class="clinic_version">
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
                <h2>List User</h2>
                 
            
            
            <div class="col-sm-6">
                <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add Customer</span></a>
                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
            </div>
            
              <form method="post" style="margin-bottom:20px;" action="SearchingUser?service=searchBy" class="form-inline" id="searchForm" name="searchObject">
                <select class="form-control" id="trangThai" name="status">
                    <option  value="4">All</option>
                    <option value="0">Active</option>
                    <option value="1">Inactive</option><!--
                    <option ${checkStatus == 2?"selected":""} value="2">Status2</option>     
                    <option ${checkStatus == 3?"selected":""} value="3">Name</option> -->
                </select>
                <button  type="submit" class="bg-secondary" id="btnDuyetDonHang">Filter</button>
            </form>
                 <form action="searchUserControl1" method="post">
                <div class="search1" style="width: 40% ;margin: 0 auto;">
                    <input type="text" value="${txtS}" name="name" placeholder="Type your search :" />
                    <button  type="submit" style=" background: -webkit-linear-gradient(left, #39b49a 0%, #1d86df 100%);
                             background: linear-gradient(to right, #39b49a 0%, #1d86df 100%);">Search</button>
                             </div>
            </form>

            <!-- end title -->
            <h1>Customer</h1>
            <table class="table table-dark" style="background: #333;border-radius:10px;margin-top:30px;">
                <thead>

                    <tr>
                        <th>ID</th>
                        <!--<th>Firstname</th>-->
                        <th>Full Name</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Status</th>
                        <th>Role</th>
                        <th>Detail</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listUser}" var="o">
                        <tr>
                            <td>${o.cID}</td>
                            <td>${o.first_name} ${o.last_name}</td>
                            <td>${o.username}</td>
                            <td>${o.email}</td>
                            <td>${o.gender ==1?"Male":"Female"}</td>
                            <td>${o.age}</td>
                            <td>${o.address}</td>
                            <td>${o.tel}</td>
                            <td>${o.status ==1 ?"Active" : "Inactive"}</td>
                            <td>${o.role==1 ?"Customer": "Staff"}</td>

                            <td><a href="userDetailControl?cid=${o.cID}#about" style="color:#fff; opacity: 0.8;">Detail</td>
                            <td >
                                    <a href="updateCustomerControl?cID=${o.cID}" style="color:#fff" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href=""  style="color:#fff;" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>

                        </c:forEach>
                            
                    </tr>
                </tbody>
            </table> 
                     
        </div>
                       <div class="container text-center">
            <ul class="pagination">
                <c:if test="${tag>1}">
                    <li class="page-item "><a class="page-link" href="userControl?index=${tag-1}#about">Previous</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${endP}" var="i">

                    <li class="page-item ${tag== i? "active" :""}"><a class="page-link" href="userControl?index=${i}#about">${i}</a></li>
                    </c:forEach>
                    <c:if test="${tag<endP}">


                    <li class="page-item"><a class="page-link" href="userControl?index=${tag+1}#about">Next</a></li>
                    </c:if>
            </ul>
        </div>  
                      <div>
                <a href="#addEmployeeModal1"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add Staff</span></a>
                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
            </div>
                    <h1 class="text-center">Staff</h1>
                       <table class="table table-dark" style="background: #333;border-radius:10px;margin-top:30px;">
                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Username</th>
                         <th>Address</th>   
                          <th>Gender</th>
                        <th>Role</th>
                        <th>is Doctor</th>
                                                 <th>Detail</th>



                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listStaff}" var="o">
                        <tr>
                              <td>${o.stID}</td>

                            <td>${o.first_name} ${o.last_name}</td>
                            <td>${o.username}</td>
                            <td>${o.address}</td>
                              <td>${o.gender}</td>
                            <td>${o.role==1 ?"Staff": ""}</td>
                                <td>${o.isDoctor ==1?"Doctor" : ""}</td>
                                 <td><a href="userDetailControl?cid=${o.stID}#about" style="color:#fff; opacity: 0.8;">Detail</td>
                                  <td >
                                    <a href="updateCustomerControl?cID=${o.stID}" style="color:#fff" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href=""  style="color:#fff;" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>

                        </c:forEach>
                            
                    </tr>
                </tbody>
            </table> 
                      <div>
                <a href="#addEmployeeModal1"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add Manager</span></a>
                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
            </div>
                    <h1 class="text-center">Manager</h1>
                       <table class="table table-dark" style="background: #333;border-radius:10px;margin-top:30px;">
                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Username</th>
                         <th>Address</th>                                 
                        <th>Role</th>
                                                 <th>Detail</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listManager}" var="o">
                        <tr>
                              <td>${o.mID}</td>
                            <td>${o.first_name} ${o.last_name}</td>
                            <td>${o.username}</td>
                            <td>${o.address}</td>
                            <td>${o.role==1 ?"Manager": ""}</td>
                                 <td><a href="userDetailControl?cid=${o.mID}#about" style="color:#fff; opacity: 0.8;">Detail</td>
                                  <td >
                                    <a href="updateCustomerControl?cID=${o.mID}" style="color:#fff" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href=""  style="color:#fff;" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>

                        </c:forEach>
                            
                    </tr>
                </tbody>
            </table> 
                    
     
       <jsp:include page="Footer.jsp"/>
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addUserControl" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add New Customer <i class="fas fa-user-friends"></i></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>First Name</label>
                                <input name="firstname" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input name="lastname" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Gender</label>
                                <input name="gender" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email <i class="far fa-envelope"></i></label>
                                <input name="email" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Tel <i class="fas fa-phone"></i>
                                </label>
                                <input name="tel" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input name="age" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <input name="status" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <input name="role" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer" style="margin-top:30px;">
                            <input type="submit" class="btn btn-success" value="Add">
                            <input style="background-color: red" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        </div>
                    </form>
                </div>
            </div>
        </div>
                <div id="addEmployeeModal1" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addUserControl" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add New Staff <i class="fas fa-user-friends"></i></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>First Name</label>
                                <input name="firstname" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Admin ID</label>
                                <input name="lastname" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>LastName</label>
                                <input name="gender" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Age <i class="far fa-envelope"></i></label>
                                <input name="email" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Gender <i class="fas fa-phone"></i>
                                </label>
                                <input name="tel" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input name="age" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="file" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <input name="role" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Phone</label>
                                <input name="Phone" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer" style="margin-top:30px;">
                            <input type="submit" class="btn btn-success" value="Add">
                            <input style="background-color: red" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
        <!-- all js files -->
        <script>
            function disable() {
                document.getElementById("trangThai").disabled = true;
            }
            function enable() {
                document.getElementById("trangThai").disabled = false;
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