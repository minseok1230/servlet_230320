<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] lengthArr = request.getParameterValues("checkLength");
		// inch / yard / feet/ meter
		// lengthArr[] = {inch, yard, feet, meter}
		// 1cm = 0.393701inch
		double inch = length * 0.393701;
		double yard = length * 0.0109361;
		double feet = length * 0.0328084;
		double meter = length * 0.01;
	%>

	<div class="container">
		<h1>길이 변환 결과</h1>
		<h4><%=length %>cm</h4>
		<hr>
		<h3>
		<%
			if (lengthArr != null) {
				for (String type : lengthArr){
					if (type.equals("inch")) {
						out.print(inch + "in<br>");
					} else if (type.equals("yard")) {
						out.print(yard + "yd<br>");
					} else if (type.equals("feet")) {
						out.print(feet + "ft<br>");
					} else if (type.equals("meter")) {
						out.print(meter + "m<br>");
					}
				}
			}
		%>
		</h3>
		
	</div>
</body>
</html>