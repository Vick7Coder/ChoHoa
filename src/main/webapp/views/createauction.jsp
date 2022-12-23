<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!--
Begin Content
-->
<div class="content">
	<form action="create-auction" method="post">
		<section class="h-100" style="background: firebrick">
			<div class="container py-5 h-100  mb-3">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img src="<c:url value="/templates/imgs/auction.jpg"/>"
										alt="Sample photo" class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Đăng ký đấu giá</h3>


										<div class="form-outline mb-4">
											<p>ID của bạn: </p>
											<input name = "ten" id = "ten" class="form-control" type="text"
												 value="${user.getuId()}" readonly>

										</div>
										<div class="form-outline mb-4">
											<label>Chọn sản phẩm cần mua</label> 
											<select class="form-control" name="sanpham" id="sanpham">
													<c:forEach items="${prod}" var="o">
														<option value="${o.getpId()}">${o.getpName()}</option>
													</c:forEach>
												</select>
										</div>

										<label>Giá tiền (VND)</label>
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name = "khoidiem" id ="khoidiem" type="number" class="form-control form-control"
														placeholder="Giá khởi điểm" />

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name = "muangay" id = "muangay" type="number" class="form-control form-control"
														placeholder="Giá mua ngay" />

												</div>
											</div>
										</div>
										<label> Thời gian bắt đầu</label> <label
											style="margin-left: 110px"> Thời gian kết thúc</label>
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name ="batdau" id = "batdau" type="datetime-local" id=""
														class="form-control form-control" placeholder="Bắt đầu" />

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name = "ketthuc" id ="ketthuc" type="datetime-local"
														class="form-control form-control" placeholder="Kết thúc" />

												</div>
											</div>
										</div>

										<div class="form-outline mb-4">
											<label>Bước giá</label> <input name = "step" id ="step" type="number"
												class="form-control form-control" placeholder="Nhập vào" />
										</div>
										<div class="d-flex justify-content-end pt-3">
											<button type="reset" class="btn btn-light btn-lg">Reset
												all</button>
											<button type="submit" class="btn btn-warning btn-lg ms-2"
												style="background: darkred; color: white">Đăng ký</button>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
</div>