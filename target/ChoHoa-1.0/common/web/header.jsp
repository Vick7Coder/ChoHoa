<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--Begin Header-->
<div class="header" id="header">

	<!--
    Begin Function
    -->
	<div class="header-function">
		<div class="logo"><a href="${pageContext.request.contextPath}/home"><img src="<c:url value="/templates/imgs/logoa2.jpg"/>"  height="100px" width="200p"/></a> </div>
		<div class="nav-search">
			<form class="form">
				<div class="p-1 bg-light rounded rounded-pill shadow mb-4">
					<div class="input-group">
						<input type="search" placeholder="What're you searching for?" aria-describedby="button-addon1" class="form-control border-0 bg-light">
						<div class="input-group-append">
							<button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="bi bi-search" style="color: darkred"></i></button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="function mt-5 mr-4">
			<a href="#" onclick="openForm()"><span class="login text-login">Đăng nhập/Đăng ký</span></a>
		</div>

	</div>
	<!--
     End Function
     -->

	<!--
     Begin Navbar
     -->

	<div class="header-category">
		<nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background: darkred" id="navbar">
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown">
						<a class="nav-link" data-toggle="dropdown" ><i class="bi bi-list"></i> DANH MỤC SẢN PHẨM</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/auction-list"><i class="bi bi-flower2"></i>Hoa Tết</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/auction-list"><i class="bi bi-flower2"></i>Hoa Cưới</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/auction-list"><i class="bi bi-flower2"></i>Hoa Tulip</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/auction-list"><i class="bi bi-flower2"></i>Hoa Giỏ</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/auction-list"><i class="bi bi-flower2"></i>Hoa Bó</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="auction.html">CUỘC ĐẤU GIÁ </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="tutorial.html">HƯỚNG DẪN </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.html">GIỚI THIỆU</a>
					</li>
				</ul>
				<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
					<div class="navbar-nav ml-auto">
						<a href="#" class="nav-item nav-link active"><i class="bi bi-house"></i></a>
					</div>
					<div class="dropdown">
						<div href="#" data-toggle="dropdown" class="dropdown-link" aria-haspopup="true" aria-expanded="false">
							<span  class="nav-item nav-link "> <i class="bi bi-bag"></i> </span>
						</div>
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
						<div href="#" data-toggle="dropdown" class="dropdown-link" aria-haspopup="true" aria-expanded="false">
							<span  class="nav-item nav-link "> <i class="bi bi-chat-dots"></i> </span>
						</div>
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
						<div href="#" data-toggle="dropdown" class="dropdown-link" aria-haspopup="true" aria-expanded="false">
							<span class="nav-item nav-link "><i class="bi bi-bell-fill"></i></span>
						</div>
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
						<div href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><img src="https://www.tutorialrepublic.com/examples/images/avatar/3.jpg" class="avatar" alt="Avatar"> Antonio Moreno <b class="caret"></b></div>
						<div class="dropdown-menu">
							<a href="#" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a>
							<a href="#" class="dropdown-item"><i class="fa fa-calendar-o"></i> Calendar</a>
							<a href="#" class="dropdown-item"><i class="fa fa-sliders"></i> Settings</a>
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
