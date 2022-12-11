<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--
Begin Footer
-->
<div class="ontop">
	<a href="#header"><button class="btn btn-danger">
			<i class="bi bi-chevron-double-up"></i>
		</button></a>
</div>
<div class="footer-block">
	<div class="footer-block-content">ĐỪNG NGẦN NGẠI HÃY TÌM KIẾM CƠ
		HỘI CHO BẠN</div>
</div>

<div class="footer">
	<div class="footer-logo">
		<div class="logo-footer">
			<img src="<c:url value="/templates/imgs/logoa2.jpg"/>" height="100px" width="200px">
		</div>
		<div align="center">daugianghich@gmail.com</div>
		<div align="center">0902342211</div>
	</div>
	<div class="footer-about">
		<div style="font-weight: bold; padding-bottom: 5px">Về chúng tôi</div>
		<div>Giới thiệu</div>
		<div>Quy chế hoạt động</div>
		<div>Tài liệu hướng dẫn</div>
	</div>
	<div class="footer-policy">
		<div style="font-weight: bold; padding-bottom: 5px">Chính sách</div>
		<div>Cho thuê tổ chức đấu giá</div>
		<div>Chính sách bảo mật thông tin</div>
	</div>

	<div class="footer-email" style="font-weight: bold">
		Đăng ký để nhận tin mới nhất
		<div>
			<form class="form-inline mt-3">
				<input class="form-control" type="search"
					placeholder="Địa chỉ email">
				<button class="btn btn-outline-success" type="submit">Đăng
					ký</button>
			</form>
		</div>
	</div>
</div>
<div class="cart-popup" id="myCart">
	<div class="card cart-form">
		<div class="card-body">
			<div class="btn-close-form">
				<button onclick="closeCart()">&times;</button>
			</div>
			<h5 class="card-title">Giỏ hàng của bạn</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<button type="button" class="btn btn-primary"
				style="background: darkred">Chi tiết</button>
		</div>
	</div>
</div>
<div class="form-popup" id="myForm">
	<!-- Pills navs -->
	<!-- Section: Design Block -->
	<section class="">
		<!-- Jumbotron -->
		<div
			class="form-container px-4 py-5 px-md-5 text-center text-lg-start"
			style="background: firebrick">
			<h4 class="text-white float-right" onclick="closeForm()">
				<i class="bi bi-x-lg"></i>
			</h4>
			<div class="container">
				<div class="row gx-lg-5 align-items-center">
					<div class="col-lg-6 mb-5 mb-lg-0">
						<h1 class="my-5 display-3 fw-bold" style="color: white">
							The best offer <br /> <span class="text-primary">for your
								business</span>
						</h1>
						<p style="color: white">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Eveniet, itaque accusantium odio, soluta,
							corrupti aliquam quibusdam tempora at cupiditate quis eum maiores
							libero veritatis? Dicta facilis sint aliquid ipsum atque?</p>
					</div>

					<div class="col-lg-6 mb-5 mb-lg-0">
						<div class="card">

							<div class="card-body py-5 px-md-5">
								<h2 class="mb-4">Đăng nhập</h2>
								<form action="login" method="post">
								<p class="text-danger">${mess}</p>
									<!-- Email input -->
									<div class="form-outline mb-4">
										<input type="text" name="user" value="${username}" id="txtEmail" class="form-control"
											placeholder="Email" />

									</div>

									<!-- Password input -->
									<div class="form-outline mb-4">
										<input type="password" name="pass" value="${password}" id="txtPass" class="form-control"
											placeholder="Password" />
									</div>

									<!-- Checkbox -->
									<div class="form-check d-flex mb-4">
										Remember password <input class="form-check-input me-3"
											type="checkbox" value="" id="form2Example33" checked />
									</div>

									<!-- Submit button -->
									<button type="submit" class="btn btn-primary btn-block mb-4">
										Đăng nhập</button>

									<!-- Register buttons -->
									<div class="text-center">
										<p>
											Not a member? <a href="register">Register</a>
										</p>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Jumbotron -->
	</section>
	<!-- Section: Design Block -->
</div>

<!--
End Footer
-->