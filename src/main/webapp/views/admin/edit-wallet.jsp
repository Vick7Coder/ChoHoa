<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<c:url value="/admin/category/edit"></c:url>
<form role="form" action="${edit}" method="post"
	enctype="multipart/form-data">
	<input name="id" value="${wall.getwId()}" hidden=""> <input
		name="userId" value="${wall.getuId().getuId()}" hidden="">
	<div class="form-group">
		<label>Số tiền cũ:<fmt:formatNumber type="number"
				groupingUsed="true" value="${wall.getBalance()}" /> vui lòng nhập
			số tiền mới: mới
		</label> <input name="balance" type="text" class="form-control"
			value="${wall.getBalance()}" />
	</div>

	<button type="submit" class="btn btn-default">Edit</button>
	<button type="reset" class="btn btn-primary">Reset</button>
</form>