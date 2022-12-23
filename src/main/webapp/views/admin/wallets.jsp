<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div class="container">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<table id="example" class="table table-striped table-bordered"
			style="width: 100%">
			<thead>
				<tr>
					<th>ID ví</th>


					<th>User</th>
					<th>Tên chủ tài khoản</th>

					<th>Số dư ví</th>



					<th>Hành động</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${wallList}" var="wall">
					<tr class="odd gradeX">
						<td>${wall.getwId()}</td>

						<td>${wall.getuId().getuName()}</td>
						<td>${wall.getuId().getlName()}${wall.getuId().getfName()}</td>

						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${wall.getBalance()}" /> VND</td>
						<td><a
							href="<c:url value='/admin/wallet/edit?id=${wall.getwId()}'/>"
							class="center">nạp tiền</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>ID ví</th>


					<th>User</th>
					<th>Tên chủ tài khoản</th>

					<th>Số dư ví</th>



					<th>Hành động</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<a href="<c:url value="/admin/wallet/add"/>"
	class=" btn btn-warning
	btn-lg ms-2"
	style="background: darkred; color: white">Đăng ký ví mới</a>
<script>
	$(document).ready(function() {
		var table = $('#example').DataTable({
			fixedHeader : true
		});
	});
</script>