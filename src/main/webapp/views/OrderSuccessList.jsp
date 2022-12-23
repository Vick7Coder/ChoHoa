<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div class="container">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<table id="example" class="table table-striped table-bordered"
			style="width: 100%">
			<thead>
				<tr>
					<th>Order ID</th>


					<th>ID phiên đấu giá</th>
					<th>Tổng tiền</th>

					<th>Ngày tạo</th>



					<th>Mã vận chuyển</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${order}" var="o">
					<tr class="odd gradeX">
						<td>${o.getOrdId()}</td>

						<td>${o.getSsId()}</td>
						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${o.getTotal()}" /> VND</td>

						<td><fmt:formatDate type="both" dateStyle="short"
								timeStyle="short" value="${o.getCreaDate()}" /></td>
						<td>${o.getdId()}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>Order ID</th>


					<th>ID phiên đấu giá</th>
					<th>Tổng tiền</th>

					<th>Ngày tạo</th>



					<th>Mã vận chuyển</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<script>
	$(document).ready(function() {
		var table = $('#example').DataTable({
			fixedHeader : true
		});
	});
</script>