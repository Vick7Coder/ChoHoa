<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!--
Begin Content
-->
<div class="content">
	<section class="h-100 " style="background: firebrick">
		<div class="container py-5 h-100">
			<form action="register" role="form" method="post"
	enctype="multipart/form-data">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
										alt="Sample photo" class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Đăng ký tài khoản</h3>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name="ten" type="text" id="form3Example1m"
														class="form-control form-control-lg" placeholder="Tên" />

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input name="ho" type="text" id="form3Example1n"
														class="form-control form-control-lg" placeholder="Họ" />

												</div>
											</div>
										</div>

										<div class="form-outline mb-4">
											<input name="mail" type="text" id="form3Example8"
												class="form-control form-control-lg" placeholder="Email" />

										</div>

										<div class="form-outline mb-4">
											<input name="chungminh" type="text" id="form3Example9"
												class="form-control form-control-lg" placeholder="ID/CMND" />

										</div>

										<div class="form-outline mb-4">
											<!-- form-group // -->

											<label for="diachi" class="form-control form-control-lg">Địa
												chỉ</label>
											<div class="col-sm-3">
												<select class="form-control" name="diachi" id="diachi">
													<c:forEach items="${listadd}" var="o">
														<option value="${o.getdId()}">${o.getdName()}</option>
													</c:forEach>
												</select>

											</div>

										</div>

										<div class="form-outline mb-4">
											<input name="sdt" type="text" id="form3Example99"
												class="form-control form-control-lg"
												placeholder="Số điện thoại" />

										</div>

										<div class="form-outline mb-4">
											<input name="user" type="text" id="form3Example97"
												class="form-control form-control-lg" placeholder="Tài khoản" />

										</div>
										<div class="form-outline mb-4">
											<input name="pass" type="text" id="form3Example97"
												class="form-control form-control-lg" placeholder="Mật khẩu" />

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
			</form>
		</div>
	</section>
</div>
<!--
End Content
-->