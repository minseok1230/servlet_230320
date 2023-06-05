<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	header {height: 60px;}
	nav {height: 50px;}
	footer{height: 50px;}
	.menu-link-text {color: white;}
	.menu-link-text:hover { color: #DBA4A4;}
	.menu-bg {background-color: #D44242; font-size: 14px; height:50px;}
</style>
</head>
<body>
	
	
	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<section class="content">
			<div>
				<jsp:include page="category.jsp"/>
			</div>	
		</section>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>