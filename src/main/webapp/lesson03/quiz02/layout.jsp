<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	.wrap {margin:0 auto; width:1300px;}
	header {height: 100px;}
	nav { height:60px;}
	.content {height:600px;}
	footer {height:40px}
	.up {height:30%}
	.down {height:70%}
	.menu-link-text {font-weight:bold; color: black;}
</style>
</head>
<body>

	<div class="wrap bg-dark">
		<header class="bg-danger d-flex align-items-center">
			<h2 class="text-success ml-2">Melong</h2>
			<div class="ml-5 input-group">
				<input type="text" class="form-control search col-4">
				<div class="input-group-append">	
					<input type="submit" class="btn btn-info" value="검색">
				</div>	
			</div>
		</header>
		<nav class="bg-success">
			<ul class="nav pt-2">
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link menu-link-text">뮤직어워드</a></li>
			</ul>
		</nav>
		<div class="content bg-warning">
			<section class="up bg-secondary"></section>
			<section class="down bg-info">
				<h4 class="pt-3 ml-2">곡 목록</h4>
				<table class="table text-center">
					<thead>
						<tr class="row">
							<td class="col-2"><b>no</b></td>
							<td class="col-3"><b>제목</b></td>
							<td class="col-7"><b>앨범</b></td>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</section>
		</div>
		<footer class="bg-danger d-flex align-items-center">
			<div class="text-secondary ml-3">Copyright 2023, melong All Rights Reserved</div>
		</footer>
	</div>

</body>
</html>