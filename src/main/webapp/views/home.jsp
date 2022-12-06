<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!--
Begin Content
-->
<div class="content">
	<!--
     Begin Banner
     -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<c:url value="/templates/imgs/banner7.png"/>"
					class="d-block w-100" alt="..." />
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/templates/imgs/bannerhoa9.jpg"/>"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/templates/imgs/bannerhoa10.jpg"/>"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-target="#carouselExampleIndicators" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-target="#carouselExampleIndicators" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
		</button>
	</div>
	<!--
    End Banner
    -->

	<!--
     Begin Product
     -->
	<div class="content-product">
		<div class="container mt-3 mb-5 ">
			<div class="row">
				<div class="col-lg-7 col-md-7 mb-5 text-center mx-auto">
					<p class="text-top-heading">Đấu giá</p>
					<h2 class="text-black">
						TÀI SẢN <strong> SẮP ĐƯỢC ĐẤU GIÁ </strong>
					</h2>
				</div>
			</div>
			<div class="row row-cols-1 row-cols-md-3">
				<c:forEach items="${last3Auc}" var="a">
					<div class="col mb-4">
						<div class="card shadow">
							<img src="<c:url value="/templates/imgs/hoacuoi1.jpg"/>"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${a.getProd().getpName()}</h5>
								<h5><fmt:formatNumber
										type="number" groupingUsed="true" value="${a.getRePrice()}" />
									VND</h5>
								<div class="d-flex justify-content-around mt-3">
									<span class="heart-cart"><i class="bi bi-heart-fill "></i></span>

									<button type="button" class="btn btn-outline-dark">Tham
										gia</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!--
       End Product
       -->
	<hr />
	<!--
     Begin Category
     -->
	<div class="content-product-category">
		<div class="container mt-3">
			<div class="row">
				<div class="col-lg-7 col-md-7 mb-5 text-center mx-auto">
					<p class="text-top-heading">Sản Phẩm</p>
					<h2 class="text-black">
						DANH MỤC <strong> SẢN PHẨM </strong>
					</h2>
				</div>
				<div class="row">
					<div class="content-product-grid-img">
						<div class="item item1">
							<img src="<c:url value="/templates/imgs/hoatulip.jpg"/>"
								class="img-thumbnail image image1" alt="...">
							<div class=" block-img block-img-text"></div>
							<div class="overlay">
								<div class="img-text">Hoa Tulip</div>
								<a href="${pageContext.request.contextPath}/auction-list" class="btn btn-light stretched-link">Xem thêm</a>
							</div>
						</div>
						<div class="item item2">
							<img src="<c:url value="/templates/imgs/hoacuoi2.jpg"/>"
								class="img-thumbnail image image2" alt="...">

							<div class="overlay">
								<div class="img-text">Hoa Cưới</div>
								<a href="${pageContext.request.contextPath}/auction-list" class="btn btn-light stretched-link">Xem
									thêm</a>
							</div>
						</div>
						<div class="item item3">
							<img src="<c:url value="/templates/imgs/hoabo5.jpg"/>"
								class="img-thumbnail image image3" alt="...">

							<div class="overlay">
								<div class="img-text">Hoa Bó</div>
								<a href="${pageContext.request.contextPath}/auction-list" class="btn btn-light stretched-link">Xem thêm</a>
							</div>
						</div>
						<div class="item item4">

							<img src="<c:url value="/templates/imgs/hoamai5.jpg"/>"
								class="img-thumbnail image image4" alt="...">

							<div class="overlay">
								<div class="img-text">Hoa Tết</div>
								<a href="${pageContext.request.contextPath}/auction-list" class="btn btn-light stretched-link">Xem thêm</a>
							</div>
						</div>
						<div class="item item5">
							<img src="<c:url value="/templates/imgs/giohoa3.jpg"/>"
								class="img-thumbnail image image5" alt="...">

							<div class="overlay">
								<div class="img-text">Hoa Giỏ</div>
								<a href="${pageContext.request.contextPath}/auction-list" class="btn btn-light stretched-link">Xem thêm</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--
   End Category
   -->
<hr />
<!--
   Begin Contact
   -->

<div class="content-contact">
	<div class="container mt-5 mb-5">
		<div class="row">
			<div class="col-lg-7 col-md-7 mb-5 text-center mx-auto">
				<p class="text-top-heading">LIÊN HỆ</p>
				<h2 class="text-black">
					NHẮN TIN <strong> CHO CHÚNG TÔI </strong>
				</h2>
			</div>
		</div>
		<div class="row">
			<!-- Section: Design Block -->
			<section class="text-center text-lg-start">
				<style>
.cascading-right {
	box-shadow: -8px 12px 29px 4px rgba(0, 0, 0, 0.37);
	-webkit-box-shadow: -8px 12px 29px 4px rgba(0, 0, 0, 0.37);
	-moz-box-shadow: -8px 12px 29px 4px rgba(0, 0, 0, 0.37);
}

@media ( max-width : 991.98px) {
	.cascading-right {
		margin-right: 0;
	}
}
</style>

				<!-- Jumbotron -->
				<div class="container py-4">
					<div class="row g-0 align-items-center">
						<div class="col-lg-6 mb-5 mb-lg-0">
							<div class="card cascading-right"
								style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
								<div class="card-body p-5 shadow-5 text-center">
									<h2 class="fw-bold mb-3">Thông tin của bạn</h2>
									<form>
										<!-- 2 column grid layout with text inputs for the first and last names -->
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example1" class="form-control"
														placeholder="Họ tên" />

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example2" class="form-control"
														placeholder="Số điện thoại" />

												</div>
											</div>
										</div>

										<!-- Email input -->
										<div class="form-outline mb-4">
											<input type="email" id="form3Example3" class="form-control"
												placeholder="Email" />

										</div>

										<!-- Address input -->
										<div class="form-outline mb-4">
											<input type="password" id="form3Example4"
												class="form-control" placeholder="Địa chỉ" />

										</div>
										<div class="form-outline mb-4">
											<textarea placeholder="Tin nhắn" id="form3Example5"
												class="form-control" style="resize: none"></textarea>

										</div>

										<!-- Submit button -->
										<button type="submit" class="btn btn-primary btn-block mb-4"
											style="background: darkred">Gửi tin nhắn cho chúng
											tôi</button>
									</form>
								</div>
							</div>
						</div>

						<div class="col-lg-6 mb-5 mb-lg-0">
							<img src="<c:url value="/templates/imgs/support.png"/>"
								class="w-100 rounded-4 shadow-4" alt="" />
						</div>
					</div>
				</div>
				<!-- Jumbotron -->
			</section>
			<!-- Section: Design Block -->
		</div>
	</div>
</div>
<!--
   End Contact
   -->
<hr />
<!--
   Begin Tutorial
   -->
<div class="site-section pt-0">
	<div class="container mt-3 mb-5">
		<div class="row">
			<div class="col-lg-7 mb-5">
				<p class="text-top-heading">Hướng dẫn</p>
				<h2 class="text-black">
					HƯỚNG DẪN <strong> CƠ BẢN </strong>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<div class="step">
					<span class="wrap-icon icon-user"><i
						class="bi bi-person-circle"></i></span>
					<h3>Register</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Sed consequatur quaerat magnam sequi nobis ut et iure.</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="step">
					<span class="wrap-icon icon-money"><i class="bi bi-coin"></i></span>
					<h3>Buy or Bid</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Sed consequatur quaerat magnam sequi nobis ut et iure.</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="step">
					<span class="wrap-icon icon-glass"><i
						class="bi bi-check-circle"></i></span>
					<h3>Submit a bid</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Sed consequatur quaerat magnam sequi nobis ut et iure.</p>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="step last">
					<span class="wrap-icon icon-trophy"><i class="bi bi-trophy"></i></span>
					<h3>Win</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Sed consequatur quaerat magnam sequi nobis ut et iure.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!--
   End Tutorial
   -->
</div>
<!--
End Content
-->