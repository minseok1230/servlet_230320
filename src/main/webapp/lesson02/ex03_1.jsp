<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");
	
	
	%>
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>좋아하는 음식</th>
			<td>
				<% 
					if (foodArr != null) {
						// a, b, c
						String result = ""; // null로 하면 null + "a" 와 같은 형태를 만들 수 없다.
						for (String food : foodArr) {
							result += food + ",";
						}
						// 맨 뒤에 붙은 , 제거
						// ex) abc => ab만 가져오려면 substring(0,2);
						result = result.substring(0, result.length() - 1);
						out.print(result);
					}
				%>
			</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>
	</table>

</body>
</html>






