<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
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