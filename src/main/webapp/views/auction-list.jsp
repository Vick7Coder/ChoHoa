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
	<div class="container-fluid mt-3">
		<div class="row">
			<div class="col-sm-3">
				<div class="card border-light mb-3" style="max-width: 18rem">
					<div class="card-header" style="font-weight: bold; font-size: 20px">Danh
						Mục Sản Phẩm</div>
					<div class="card-body">
						<div class="list-group-flush">
							<a href="auction-list?cid=${0}"
								class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Tất
								cả<span style="background: darkred"
								class="badge badge-primary badge-pill">1</span>
							</a>
							<c:forEach items="${listcate}" var="o">
								<a href="auction-list?cid=${o.getcId()}"
									class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">${o.getcName()}<span
									style="background: darkred"
									class="badge badge-primary badge-pill">1</span></a>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="card border-light mt-2 mb-3" style="max-width: 18rem;">
					<div class="card-header" style="font-weight: bold; font-size: 20px"></div>
					<div class="card-body">
						<div class="list-group-flush"></div>

					</div>

				</div>

			</div>
			<div class="col-sm-9">

				<div class="card-header" style="font-size: 20px; font-weight: bold;">

					<h5>${catName.getcName()}</h5>

				</div>
				<div class="row row-cols-1 row-cols-md-3 mt-3">
					<c:forEach items="${listAuc}" var="a">
						<div class="col mb-4">
							<div class="card shadow">
								<div class="image-product">
									<img src="${a.getProd().getpImage()}"
										class="card-img-top image" alt="ảnh ${a.getProd().getpName()}">
								</div>
								<div class="card-body ">
									<h5 class="card-title">${a.getProd().getpName()}</h5>
									<p class="card-text">
										Giá:<i class="bi bi-heart-fill "><fmt:formatNumber
												type="number" groupingUsed="true" value="${a.getRePrice()}" />
											VND</i>
									</p>
									<p class="card-text">
										Ngày kết thúc:
										<fmt:formatDate type="both" dateStyle="short"
											timeStyle="short" value="${a.getEndDay()}" />
									</p>
									<p class="card-text">Người tạo: ${a.getUser().getlName()}
										${a.getUser().getfName()}</p>
									<div class="d-flex justify-content-around mt-3">
										<span class="heart-cart"> <i class="bi bi-heart-fill "></i></span>

										<a
											href="auction-detail?ssid=${a.getSsId()}&cid=${a.getProd().getcId()}&uid=${sessionScope.acc.uId}"
											class="btn btn-outline-danger">Tham gia</a>

									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="pag d-flex justify-content-sm-end">
					<nav aria-label="...">
						<ul class="pagination">
							<c:if test="${tag>1}">
								<li class="page-item"><a class="page-link"
									href="auction-list?cid=${tagactive}&index=${tag-1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>
							<c:forEach begin="1" end="${endP}" var="i">
								<li class="page-item"><a class="page-link ${tag==i ? "
									active":"" }" href="auction-list?cid=${tagactive}&index=${i}">${i}</a></li>
							</c:forEach>
							<c:if test="${tag<endP}">
								<li class="page-item"><a class="page-link"
									href="auction-list?cid=${tagactive}&index=${tag+1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>
						</ul>
					</nav>
				</div>

			</div>
		</div>

	</div>

	<!--
End Content
-->