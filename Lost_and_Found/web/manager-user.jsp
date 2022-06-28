<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="manage-article/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 10]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
          <![endif]-->
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
        <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
        <meta name="author" content="codedthemes" />
        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
        <!-- Google font-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
        <!-- waves.css -->
        <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
        <!-- Required Fremwork -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
        <!-- waves.css -->
        <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
        <!-- themify icon -->
        <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
        <!-- scrollbar.css -->
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
        <!-- am chart export.css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body class="sb-nav-fixed">
        <c:if test="${sessionScope.LOGIN_MEMBER.roleID != 1}">
            <c:redirect url="login.jsp"/>           
        </c:if> 
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a href="admin.jsp">
                <img class="img-fluid fpt-uni-logo" src="manage-article/assets/img/logo-fpt-certificate.png" style="width: 80%;" alt="Theme-Logo" />
            </a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form> -->
            <!-- Navbar-->

            <ul class="navbar-nav ms-auto me-0 me-md-3 my-2 my-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i >
                            <span>admins </span>
                            <i class="ti-angle-down"></i>
                        </i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                        <!-- <li><hr class="dropdown-divider" /></li> -->
                        <li><a class="dropdown-item" href="login.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                           <div class="sb-sidenav-menu-heading">HOME</div>
                            <a class="nav-link" href="SearchAdminController">
                                <div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
                                Home
                            </a>
                            <div class="sb-sidenav-menu-heading">Article</div>
                            <a class="nav-link" href="SearchAdminController">
                                <div class="sb-nav-link-icon"><i class="fas fa-edit"></i></div>
                                Manager Article
                            </a>
                            <a class="nav-link" href="ReportArticleController">
                                <div class="sb-nav-link-icon"><i class="far fa-file-alt"></i></div>
                                Manager Report
                            </a>
                            <a class="nav-link" href="SearchAdminControllerBand">
                                <div class="sb-nav-link-icon"><i class="far fa-newspaper"></i></div>
                                Manage Band
                            </a>
                            <div class="sb-sidenav-menu-heading">Users</div>
                            <a class="nav-link" href="SearchMemberByAdminController">
                                <div class="sb-nav-link-icon"><i class="fas fa-edit"></i></div>
                                Manager User
                            </a>
                            <a class="nav-link" href="ReportMemberController">
                                <div class="sb-nav-link-icon"><i class="far fa-file-alt"></i></div>
                                Manager Report
                            </a>
                            <a class="nav-link" href="SearchBandMemberByAdminController">
                                <div class="sb-nav-link-icon"><i class="far fa-newspaper"></i></div>
                                Manage Band
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        ADMIN
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Manage</li>
                        </ol>



                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Manage Users
                            </div>
                            <div class="card-body"><div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="student" role="tabpanel"
                                         aria-labelledby="student-tab">
                                        <table id="datatablesSimple">
                                            <thead>
                                                <tr>
                                                    <th>FullName</th>
                                                    <th>Email</th>
                                                    <th>Picture</th>
                                                    <th>Phone</th>
                                                    <th>ProfileInfo</th>
                                                    <th>RoleID</th>
                                                    <th>TotalReport</th>
                                                    <th>Delete</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="member" items="${GET_LIST_MEMBER_BY_ADMIN}">
                                                <tr>                                               
                                                    <td>${member.fullName}</td>
                                                    <td>${member.email}</td>  
                                                    <td><img src="${member.picture}" style="width: 60px"></td>                                                        
                                                    <td>${member.phone}</td>                                                                                                             
                                                    <td>${member.profileInfo}</td>                                                        
                                                    <td>${member.roleID}</td>
                                                    <td>${member.totalReport}</td>
                                                    <td><a href="DeleteMemberByAdminController?memberID=${member.id}" style="color: red;"> <i class="fa fa-trash" aria-hidden="true"></i> Delete</a></td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"></div>
                            <div>

                            </div>
                        </div>
                    </div>
                </footer>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="manage-article/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="manage-article/assets/demo/chart-area-demo.js"></script>
        <script src="manage-article/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="manage-article/js/datatables-simple-demo.js"></script>
        
    </body>
</html>
