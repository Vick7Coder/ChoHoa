<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/templates/css/admin.css"/>">
</head>
<body>
	<!--
Begin Sidebar
-->
	<%@ include file="/common/admin/sidebar.jsp"%>

	<!--
End Sidebar
-->

	<!--
Begin Main
-->
	<div id="main">
		<!--
  Begin Nav
  -->

		<%@ include file="/common/admin/header.jsp"%>
		<!--
  End Nav
  -->

		<!--
Begin content
-->

		<dec:body />
		<!--
End content
-->
	</div>

	<!--
End Main
-->
	<script>
		function w3_open() {
			document.getElementById("main").style.marginLeft = "15%";
			document.getElementById("mySidebar").style.width = "15%";
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("openNav").style.display = 'none';
		}
		function nav_open1() {
			document.getElementById("demo").style.marginBottom = "10%";
			document.getElementById("collapseTwo").style.width = "10%";
			document.getElementById("collapseTwo").style.display = "block";

		}
		function nav_close1() {
			document.getElementById("demo").style.marginLeft = "0%";
			document.getElementById("collapseTwo").style.display = "none";
			document.getElementById("exNav").style.display = "inline-block";
		}
		function nav_open2() {
			document.getElementById("demo2").style.marginBottom = "10%";
			document.getElementById("collapseTwo2").style.width = "10%";
			document.getElementById("collapseTwo2").style.display = "block";

		}
		function nav_close2() {
			document.getElementById("demo2").style.marginLeft = "0%";
			document.getElementById("collapseTwo2").style.display = "none";
			document.getElementById("exNav2").style.display = "inline-block";
		}
		function nav_open3() {
			document.getElementById("demo5").style.marginBottom = "10%";
			document.getElementById("collapseTwo5").style.width = "10%";
			document.getElementById("collapseTwo5").style.display = "block";

		}
		function nav_close3() {
			document.getElementById("demo5").style.marginLeft = "0%";
			document.getElementById("collapseTwo5").style.display = "none";
			document.getElementById("exNav5").style.display = "inline-block";
		}
		function w3_close() {
			document.getElementById("main").style.marginLeft = "0%";
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("openNav").style.display = "inline-block";
		}
	</script>

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