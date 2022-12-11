<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="<c:url value="/templates/css/style.css"/>">
</head>
<body>
	<!--
Begin Header
-->
	<%@ include file="/common/web/header.jsp"%>

	<!--
End Header
-->

	<!--
Begin Content
-->

	<!--
End Content
-->
	<dec:body />

	<!--
Begin Footer
-->
	<%@ include file="/common/web/footer.jsp"%>

	<!--
End Footer
-->

	<script>
		function openCart() {
			document.getElementById("myCart").style.display = "block";
		}
		function closeCart() {
			document.getElementById("myCart").style.display = "none";
		}
	</script>
	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
		window.onclick = function(event) {
			if (event.target == document.getElementById("myForm")) {
				document.getElementById("myForm").style.display = "none";
			}if (event.target == document.getElementById("myCart")) {
				document.getElementById("myCart").style.display = "none";
			}

		}
	</script>
	<script>
		window.onscroll = function() {myFunction()};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("sticky")
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script>
	<script>
		var slider1 = document.getElementById("myRange1");
		var slider2 = document.getElementById("myRange2");
		var output1 = document.getElementById("demo1");
		var output2 = document.getElementById("demo2");
		output1.innerHTML = slider1.value;
		output2.innerHTML = slider2.value;

		slider1.oninput = function() {
			output1.innerHTML = this.value;

		}
		slider2.oninput = function() {

			output2.innerHTML = this.value;
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