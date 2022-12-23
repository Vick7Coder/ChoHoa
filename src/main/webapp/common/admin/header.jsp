<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- 
  Begin Nav
  -->

  <div class="w3-container">
    <nav class="navbar navbar-expand-xl navbar-dark bg-dark shadow-lg">
      <button id="openNav" class="w3-button w3-xlarge" onclick="w3_open()">&#9776;</button>
      <a href="#" class="navbar-brand">AUCTION<b>PLUS</b></a>
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