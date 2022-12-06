<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="<c:url value="/templates/css/admin.css"/>">
<body>
<!--
Begin Sidebar
-->
<div class="sidebar">
    <div class="w3-sidebar w3-bar-block w3-card w3-animate-left shadow-lg" style="display:none; background: whitesmoke" id="mySidebar">
        <button class="btn float-right" onclick="w3_close()"><i class="bi bi-chevron-bar-left" style="font-size: 30px"></i></button>
        <a href="#" class="w3-bar-item ">
            <img src="./img/logoa2.jpg" alt="" width="200px">
        </a>
        <li class="nav-item text-center mt-4" id="demo">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="bi bi-house"></i>
                <span class="text-top-heading">Trang chủ</span>
                <span id="exNav"><i class="bi bi-chevron-down" onclick="nav_open1()"></i> </span>
            </a>
            <div id="collapseTwo" class="collapse ml-4 mt-2 mb-2" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="rounded ml-5">
                    <a class="collapse-item text-par-heading mt-3" href="#">Admin</a>
                    <a class="collapse-item text-par-heading mt-3" href="admin.html">Main</a>
                    <a href="#">
                        <span class="ml-5"><i class="bi bi-arrow-bar-up" onclick="nav_close1()"></i></span>
                    </a>
                </div>
            </div>
        </li>
        <li class="nav-item text-center mt-4" id="demo2">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo2">
                <i class="bi bi-wrench"></i>
                <span class="text-top-heading">Quản Lí</span>
                <span id="exNav2"><i class="bi bi-chevron-down" onclick="nav_open2()"></i> </span>
            </a>
            <div id="collapseTwo2" class="collapse ml-4 mt-2 mb-2" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="rounded ml-5">
                    <a class="collapse-item text-par-heading mt-3" href="#">Auction</a>
                    <a class="collapse-item text-par-heading mt-3" href="#">Product</a>
                    <a class="collapse-item text-par-heading mt-3" href="#">User</a>
                    <a class="collapse-item text-par-heading mt-3" href="#">Payment</a>
                    <a href="#">
                        <span class="ml-5"><i class="bi bi-arrow-bar-up" onclick="nav_close2()"></i></span>
                    </a>
                </div>
            </div>
        </li>
        <li class="nav-item text-center mt-4" id="demo5">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo5"
               aria-expanded="true" aria-controls="collapseTwo2">
                <i class="bi bi-headset"></i>
                <span class="text-top-heading">Hỗ trợ</span>
                <span id="exNav5"><i class="bi bi-chevron-down" onclick="nav_open3()"></i> </span>
            </a>
            <div id="collapseTwo5" class="collapse ml-4 mt-2 mb-2" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="rounded ml-5">
                    <a class="collapse-item text-par-heading mt-3" href="#">Chat</a>
                    <a class="collapse-item text-par-heading mt-3" href="#">FAQ</a>
                    <a class="collapse-item text-par-heading mt-3" href="#">Mail</a>
                    <a href="#">
                        <span class="ml-5"><i class="bi bi-arrow-bar-up" onclick="nav_close3()"></i></span>
                    </a>
                </div>
            </div>
        </li>
        <li class="nav-item text-center mt-4" id="demo3">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo3"
               aria-expanded="true" aria-controls="collapseTwo2">
                <i class="bi bi-clipboard2-data-fill"></i>
                <span class="text-top-heading">Thống Kê</span>
            </a>
            <div id="collapseTwo3" class="collapse ml-4 mt-2 mb-2" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="rounded ml-5">

                </div>
            </div>
        </li>
        <li class="nav-item text-center mt-4" id="demo4">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo3"
               aria-expanded="true" aria-controls="collapseTwo4">
                <i class="bi bi-tools"></i>
                <span class="text-top-heading">Cài đặt</span>
            </a>
            <div id="collapseTwo4" class="collapse ml-4 mt-2 mb-2" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="rounded ml-5">

                </div>
            </div>
        </li>
    </div>
</div>

<!--
End Sidebar
-->
<!--
Begin Main
-->
<div id="main">
    <!--
    Begin Nav
    -->

    <div class="w3-container">
        <nav class="navbar navbar-expand-xl navbar-dark bg-dark shadow-lg">
            <button id="openNav" class="w3-button w3-xlarge" onclick="w3_open()">&#9776;</button>
            <a href="#" class="navbar-brand">Brand<b>Name</b></a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collection of nav links, forms, and other content for toggling -->
            <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                <form class="navbar-form form-inline">
                    <div class="input-group search-box">
                        <input type="text" id="search" class="form-control" placeholder="Search here...">
                        <span class="input-group-addon"><i class="bi bi-search"></i></span>
                    </div>
                </form>
                <div class="navbar-nav ml-auto">
                    <a href="#" class="nav-item nav-link active mr-2"><i class="bi bi-house"></i></a>

                </div>
                <div class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-link" aria-haspopup="true" aria-expanded="false">
                        <span  class="wrap-icon nav-item nav-link "> <i class="bi bi-chat-dots"></i> </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg-left" aria-labelledby="dropdownMenuButton">
                        <div class="title-wrap">
                            <a href="#" class="small ml-auto">Mark all as read</a>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">An item</li>
                            <li class="list-group-item">A second item</li>
                            <li class="list-group-item">A third item</li>
                        </ul>
                        <p class="text-center m-0 p-0"><a href="#" class="small">View All</a></p>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-link" aria-haspopup="true" aria-expanded="false">
                        <span class="wrap-icon nav-item nav-link "><i class="bi bi-bell-fill"></i></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg-left" aria-labelledby="dropdownMenuButton">
                        <div class="title-wrap">
                            <a href="#" class="small ml-auto">Mark all as read</a>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">An item</li>
                            <li class="list-group-item">A second item</li>
                            <li class="list-group-item">A third item</li>
                        </ul>
                        <p class="text-center m-0 p-0"><a href="#" class="small">View All</a></p>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><img src="https://www.tutorialrepublic.com/examples/images/avatar/3.jpg" class="avatar" alt="Avatar"> Antonio Moreno <b class="caret"></b></a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a>
                        <a href="#" class="dropdown-item"><i class="fa fa-calendar-o"></i> Calendar</a>
                        <a href="#" class="dropdown-item"><i class="fa fa-sliders"></i> Settings</a>
                        <div class="divider dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> Logout</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <!--
    End Nav
    -->

    <!--
  Begin content
  -->
    <dec:body />
    <!--
  End content
  -->
</div>

<!--
End Main
-->


<script>
    function w3_open() {
        document.getElementById("main").style.marginLeft = "15%";
        document.getElementById("mySidebar").style.width = "15%";
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("openNav").style.display = 'none';
    }
    function nav_open1() {
        document.getElementById("demo").style.marginBottom = "10%";
        document.getElementById("collapseTwo").style.width = "10%";
        document.getElementById("collapseTwo").style.display = "block";

    }
    function nav_close1() {
        document.getElementById("demo").style.marginLeft = "0%";
        document.getElementById("collapseTwo").style.display = "none";
        document.getElementById("exNav").style.display = "inline-block";
    }
    function nav_open2() {
        document.getElementById("demo2").style.marginBottom = "10%";
        document.getElementById("collapseTwo2").style.width = "10%";
        document.getElementById("collapseTwo2").style.display = "block";

    }
    function nav_close2() {
        document.getElementById("demo2").style.marginLeft = "0%";
        document.getElementById("collapseTwo2").style.display = "none";
        document.getElementById("exNav2").style.display = "inline-block";
    }
    function nav_open3() {
        document.getElementById("demo5").style.marginBottom = "10%";
        document.getElementById("collapseTwo5").style.width = "10%";
        document.getElementById("collapseTwo5").style.display = "block";

    }
    function nav_close3() {
        document.getElementById("demo5").style.marginLeft = "0%";
        document.getElementById("collapseTwo5").style.display = "none";
        document.getElementById("exNav5").style.display = "inline-block";
    }
    function w3_close() {
        document.getElementById("main").style.marginLeft = "0%";
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("openNav").style.display = "inline-block";
    }
</script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>