<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	#wrap {width:1200px; margin:0 auto;}
	header{height:180px}
	.contents{height:800px}
	footer{height:100px}
	.menu{font-size:24px;
		  font-weight:bold;}
	.box{height:320px; 
		 width:380px;
		 border: 2px solid #FF8000}
</style>
</head>
<body>
	<div id="wrap">
		<header class="bg-warning">
			<jsp:include page="header.jsp"/>
		</header>
		<div class="contents bg-success">
			<jsp:include page="list_section.jsp"/>
		</div>
		<footer class="bg-info d-flex align-items-center justify-content-center">
			<jsp:include page="footer.jsp"/>
		</footer>
	</div>

</body>
</html>