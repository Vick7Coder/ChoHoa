<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--Begin Header-->
<div class="header" id="header">

	<!--
    Begin Function
    -->
	<div class="header-function">
		<div class="logo">
			<a href="index.html"><img
				src="<c:url value="/templates/imgs/logoa2.jpg"/>" height="100px"
				width="200px"></a>
		</div>
		<div class="nav-search">
			<div class="input-group mb-3">
				<input type="text" class="form-control  rounded-pill "
					placeholder="Tìm kiếm">
				<div class="input-group-append">
					<button class="btn" type="button" id="button-addon2">
						<i class="bi bi-search"></i>
					</button>
				</div>
			</div>
		</div>
		<div class="function"></div>

	</div>
	<!--
     End Function
     -->

	<!--
     Begin Navbar
     -->

	<div class="header-category">
		<nav class="navbar navbar-expand-lg navbar-dark sticky-top"
			style="background: darkred" id="navbar">
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link"
						data-toggle="dropdown"><i class="bi bi-list"></i> DANH MỤC SẢN
							PHẨM</a>
						<div class="dropdown-menu">
							<c:forEach items="${listcate}" var="o">
								<a class="dropdown-item" href="#"><i class="bi bi-flower2"></i>${o.getcName()}</a>
							</c:forEach>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="auction.html">CUỘC
							ĐẤU GIÁ </a></li>
					<li class="nav-item"><a class="nav-link" href="tutorial.html">HƯỚNG
							DẪN </a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">GIỚI
							THIỆU</a></li>
				</ul>
				<div id="navbarCollapse"
					class="collapse navbar-collapse justify-content-start">
					<div class="navbar-nav ml-auto">
						<a href="#" class="nav-item nav-link active"><i
							class="bi bi-house"></i></a>
					</div>
					<div class="dropdown">
						<div href="#" data-toggle="dropdown" class="dropdown-link"
							aria-haspopup="true" aria-expanded="false">
							<span class="nav-item nav-link "> <i class="bi bi-bag"></i>
							</span>
						</div>
						<div class="dropdown-menu dropdown-menu-lg-left"
							aria-labelledby="dropdownMenuButton">
							<div class="title-wrap">
								<a href="#" class="small ml-auto">Mark all as read</a>
							</div>
							<ul class="list-group">
								<li class="list-group-item">An item</li>
								<li class="list-group-item">A second item</li>
								<li class="list-group-item">A third item</li>
							</ul>
							<p class="text-center m-0 p-0">
								<a href="#" class="small">View All</a>
							</p>
						</div>
					</div>
					<!-- <div class="dropdown"> -->
						<div href="mailto:name@email.com" data-toggle="dropdown" class="dropdown-link"
							aria-haspopup="true" aria-expanded="false">
							<span class="nav-item nav-link "> <i
								class="bi bi-chat-dots"></i>
							</span>
						</div>
						<!-- <div class="dropdown-menu dropdown-menu-lg-left"
							aria-labelledby="dropdownMenuButton"> -->
							<!-- <div class="title-wrap"> -->
								<a href="mailto:name@email.com" class="small ml-auto"><!-- Mark all as read --></a>
							<!-- </div> -->
							<!-- <ul class="list-group">
								<li class="list-group-item">An item</li>
								<li class="list-group-item">A second item</li>
								<li class="list-group-item">A third item</li>
							</ul>
							<p class="text-center m-0 p-0">
								<a href="#" class="small">View All</a>
							</p> -->
					<!-- 	</div> -->
					</div>
					<div class="dropdown">
						<div href="#" data-toggle="dropdown" class="dropdown-link"
							aria-haspopup="true" aria-expanded="false">
							<span class="nav-item nav-link "><i
								class="bi bi-bell-fill"></i></span>
						</div>
						<div class="dropdown-menu dropdown-menu-lg-left"
							aria-labelledby="dropdownMenuButton">
							<div class="title-wrap">
								<a href="#" class="small ml-auto">Mark all as read</a>
							</div>
							<ul class="list-group">
								<li class="list-group-item">An item</li>
								<li class="list-group-item">A second item</li>
								<li class="list-group-item">A third item</li>
							</ul>
							<p class="text-center m-0 p-0">
								<a href="#" class="small">View All</a>
							</p>
						</div>
					</div>
					<div class="nav-item dropdown">
						<div href="#" data-toggle="dropdown"
							class="nav-item nav-link dropdown-toggle user-action">
							<img
								src="https://www.tutorialrepublic.com/examples/images/avatar/3.jpg"
								class="avatar" alt="Avatar"> Antonio Moreno <b
								class="caret"></b>
						</div>
						<div class="dropdown-menu">
							<a href="#" class="dropdown-item"><i class="fa fa-user-o"></i>
								Profile</a> <a href="#" class="dropdown-item"><i
								class="fa fa-calendar-o"></i> Calendar</a> <a href="#"
								class="dropdown-item"><i class="fa fa-sliders"></i> Settings</a>
							<div class="divider dropdown-divider"></div>
							<a href="#" class="dropdown-item"> Logout</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!--
     End Navbar
     -->

</div>

<!--
End Header
-->
