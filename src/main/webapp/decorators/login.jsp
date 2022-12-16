<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="<c:url value="/templates/css/style.css"/>">
<link rel="stylesheet" href="<c:url value="/templates/css/login.css"/>">
</head>
<body>
	<!--
Begin Header
-->
	<%@ include file="/common/web/header.jsp"%>

	<!--
End Header
-->
	<!--
Begin Content
-->
	<div class="content">
		<div class="form-container px-4 py-5 px-md-5 text-center "
			style="background: firebrick">
			<div class="container ">
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

							<div class="card-body py-5 px-md-5 shadow">
								<h2 class="mb-4">Đăng nhập</h2>
								<form action="login" method="post">
									<p class="text-danger">${mess}</p>
									<!-- Email input -->
									<div class="form-outline mb-4">
										<input type="text" name="user" value="${username}"
											id="txtEmail" class="form-control" placeholder="Email" />

									</div>

									<!-- Password input -->
									<div class="form-outline mb-4">
										<input type="password" name="pass" value="${password}"
											id="txtPass" class="form-control" placeholder="Password" />
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
		<!--
End Content
-->
		<!--
Begin Footer
-->
		<%@ include file="/common/web/footer.jsp"%>

		<!--
End Footer
-->

		<script src="https://code.jquery.com/jquery-3.6.1.min.js"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
			integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
			crossorigin="anonymous"></script>
</body>
</html>