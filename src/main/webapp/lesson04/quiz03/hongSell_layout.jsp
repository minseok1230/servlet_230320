<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	#wrap {width:1200px; margin:0 auto;}
	header{height:180px}
	.contents{height:800px}
	.menu{font-size:24px;
		  font-weight:bold;}
	footer{height:100px}
</style>

</head>
<body>
	<div id="wrap">
		<header class="bg-warning">
			<jsp:include page="header.jsp"/>
		</header>
		<div class="contents bg-success">
			<div class="display-4">물건 올리기</div>
			<div class="d-flex justify-content-between">
				<div class="col-3">
					<select name="id" class="form-control">
  						<option disabled selected>-아이디 선택-</option>
  						<option value="1">1</option>
 						<option value="2">1ssss</option>
 						<option value="3">2</option>
  						<option value="4">3</option>
					</select>
				</div>
				<input type="text" class="form-control col-4" placeholder="제목">
				<input type="text" class="form-control col-3" placeholder="가격">
			</div>
		</div>
		<footer class="bg-info d-flex align-items-center justify-content-center">
			<jsp:include page="footer.jsp"/>
		</footer>
	</div>
</body>
</html>