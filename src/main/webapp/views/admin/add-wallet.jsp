<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<c:url value="/admin/wallet/add"></c:url>
<form role="form" action="${add}" method="post"
	enctype="multipart/form-data">
	<input name="id"  hidden="">
	<!-- form-group // -->
	<div class="form-group">
		<label for="userId" class="col-sm-3 control-label">User</label>
		 <input name="userId"
			type="text" class="form-control"  />
	</div>
	<div class="form-group">
		<label>vui lòng nhập số tiền: </label> <input name="balance"
			type="text" class="form-control"  />
	</div>

	<button type="submit" class="btn btn-default">Thêm</button>
	<button type="reset" class="btn btn-primary">Reset</button>
</form>