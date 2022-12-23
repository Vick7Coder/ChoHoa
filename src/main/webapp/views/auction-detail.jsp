<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--
Begin Content
-->
<div class="content">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Library</a></li>
			<li class="breadcrumb-item active" aria-current="page">Data</li>
		</ol>
	</nav>
	<h2 class="text-heading">THÔNG TIN SẢN PHẨM</h2>
	<div class="container m-5">
		<div class="row d-flex justify-content-left">
			<div class="col-xl-5">
				<img src="${a.getProd().getpImage()} "
					class="img-fluid img-thumbnail" alt="${a.getProd().getpName()}">
			</div>
			<div class="col-xl-7">
				<div class="card-header mt-3 border-dark mb-3 shadow"
					style="font-size: 15px; font-weight: bold;">
					<h3 class="card-title">${a.getProd().getpName()}</h3>
					<div class="card-body text-dark">
						<h5 class="card-text">${a.getProd().getDetail()}</h5>
						<div class="card-title mt-5"></div>
						<div class="card-title">
							<h3>
								<!-- <span class="badge badge-success ">Trạng thái</span> <span>Đang
									diễn ra</span> -->
								<c:choose>
									<c:when test="${a.isComplete() == false}">
										<span class="badge badge-success ">Trạng thái</span>
										<span>Đang diễn ra</span>
									</c:when>
									<c:otherwise>

										<span class="badge badge-success ">Trạng thái</span>
										<span>Hoàn tất</span>
									</c:otherwise>
								</c:choose>
							</h3>
						</div>
						<div class="card-title">
							<h3>
								<span class="badge badge-success">Thông tin đấu giá</span> <span>${count}
									lượt ra giá</span>

							</h3>
						</div>
						<div class="card-title">
							<h3>
								<span class="badge badge-success">Giá khởi điểm</span> <span><fmt:formatNumber
										type="number" groupingUsed="true" value="${a.getRePrice()}" /></span>
								<span>VND</span>
							</h3>
						</div>
					</div>
					<div class="float-right mt-5">
						<button type="button" class="btn btn-danger"
							onclick="openDetail()">Tham gia</button>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-lg m-5">
		<div class="card border-light mb-3 shadow" style="min-width: 18rem;">
			<div class="card-header">Những người đang tham gia</div>
			<div class="card-body text-dark">
				<table class="table ">
					<thead>
						<tr>
							<th scope="col">Số thứ tự</th>
							<th scope="col">Tên Shop tham gia</th>
							<th scope="col">Giá đặt</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${partList}" var="k" varStatus="STT">
							<tr>
								<th scope="row">${STT.index+1}</th>
								<td>${k.getSupId().getSupName()}</td>
								<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${k.getAucSSPrice()}" /> VND</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>

	</div>
	<div class="container m-5">
		<div class="card border-dark mb-3 shadow" style="min-width: 18rem;">
			<div class="card-header">Mô tả sản phẩm</div>
			<div class="card-body text-dark">
				<table class="table table-borderless">

					<tbody>
						<tr>
							<th scope="row">Giá thắng liền</th>
							<td><fmt:formatNumber type="number" groupingUsed="true"
									value="${a.getCloPrice()}" /> VND</td>

						</tr>
						<tr>
							<th scope="row">Số lượng</th>
							<td>1</td>

						</tr>
						<tr>
							<th scope="row">Thời gian bắt đầu</th>
							<td><fmt:formatDate type="both" dateStyle="short"
									timeStyle="short" value="${a.getStartDay()}" /></td>

						</tr>
						<tr>
							<th scope="row">Thời gian kết thúc</th>
							<td><fmt:formatDate type="both" dateStyle="short"
									timeStyle="short" value="${a.getEndDay()}" /></td>

						</tr>
						<tr>
							<th scope="row">Giá khởi điểm</th>
							<td><fmt:formatNumber type="number" groupingUsed="true"
									value="${a.getRePrice()}" /> VND</td>
						</tr>
						<tr>
							<th scope="row">Bước nhảy</th>
							<td><fmt:formatNumber type="number" groupingUsed="true"
									value="${a.getPriceStep()}" /> VND</td>
						</tr>
						<tr>
							<th scope="row">Người đăng</th>
							<td>${a.getUser().getlName()}${a.getUser().getfName()}</td>
						</tr>
						<tr>
							<th scope="row">Thông tin liên hệ</th>
							<td>${a.getUser().getEmail()}</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<h2 class="text-heading">TÀI SẢN TƯƠNG TỰ</h2>
	<div class="container m-5">
		<div class="card-deck">
			<c:forEach items="${rcmList}" var="r">
				<div class="card shadow">
					<div class="image-product">
						<img src="${r.getProd().getpImage()}"
							alt="${r.getProd().getpName()}">
					</div>
					<div class="card-body">
						<h5 class="card-title">${r.getProd().getpName()}</h5>
						<div class="card-text">
							<p>${r.getProd().getDetail()}</p>
						</div>
						<a
							href="auction-detail?ssid=${r.getSsId()}&cid=${r.getProd().getcId()}&uid=${sessionScope.acc.getuId()}"
							class="btn btn-danger float-right">Tham gia</a>
					</div>
				</div>
			</c:forEach>

		</div>

	</div>

</div>
<div class="form-popup" id="formDetail">
	<!-- Begin: form đấu giá -->
	<form action="auction-offer" method="post">
		<!-- Jumbotron -->
		<div class="form-detail rounded shadow mb-5"
			style="background: firebrick">
			<div class="d-flex justify-content-between">
				<h4 class="text-white">Đấu giá</h4>
				<input class="text-white" type="text"
					placeholder="Mời thượng đế ${sessionScope.nameUSer} ra giá!"
					readonly>
				<h4 class="text-white" onclick="closeDetail()">
					<i class="bi bi-x-lg"></i>
				</h4>
			</div>
			<div class="container-lg text-center text-lg-start">
				<div class="row">
					<div class="col-lg-6">
						<p class="text-white float-left">ID Phiên đấu giá:</p>
						<input name="phien" id="phien" class="form-control" type="text"
							placeholder="" value="${a.getSsId()}" readonly>
						<p class="text-white float-left">Giá hiện tại</p>
						<input class="form-control" type="text"
							placeholder="<fmt:formatNumber
												type="number" groupingUsed="true" value="${lastOffer.getAucSSPrice()}" /> VND"
							readonly>
						<h5 class="my-5 display-4 fw-bold" style="color: white">
							The best offer <br /> <span class="text-primary">for your
								product</span>
						</h5>
					</div>
					<div class="col-lg-6 mb-5 mt-5">

						<p class="text-white float-left">ID : ${Sup.getSupName()}</p>
						<input name="supp" id="supp" class="form-control" type="text"
							placeholder="" value="${Sup.getSupId()}" readonly>
						<p for="numberForm" class="text-white float-left mt-5">Ra giá
							ở đây:</p>
						<div class="input-group">
							<input id="offer" name="offer" type="number" id="numberForm"
								class="form-control" min="0" max="${lastOffer.getAucSSPrice()}"
								step="${a.getPriceStep()}" value="${offer}">
							<div class="input-group-append">
								<span class="input-group-text">VND</span>
							</div>
						</div>
						<div class="form-group float-left mt-4">
							<div class="form-check">
								<input class="form-check-input" type="checkbox"> <label
									class="form-check-label text-white"> Đồng ý tất cả điều
									khoản và qui định của chúng tôi </label> <label
									class="form-check-label text-white"> Vui lòng đọc kỹ
									trước qui định và chính sách trước khi xác nhận </label>
							</div>
						</div>
						<button type="submit" class="btn btn-success btn-lg btn-block">Xác
							nhận</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- end form ra giá -->
</div>
<!--
End Content
-->

<script>
	function openDetail() {
		document.getElementById("formDetail").style.display = "block";
	}
	function closeDetail() {
		document.getElementById("formDetail").style.display = "none";
	}
</script>

