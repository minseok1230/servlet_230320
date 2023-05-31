<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1번 -->
	<%!
	public int sumResult(int a){
		int sum = 0;
		for (int i = 1; i <= a; i++){
			sum += i;
		}
		return sum;
	}
	
	private int num = 50;
	%>
	
	<h2>1부터 <%=num %>까지의 합은 <%= sumResult(num) %> 입니다.</h2>

	<!-- 2번 -->
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	double avg = (double)sum / scores.length;
	%>
	
	<h2>평균점수는 <%=avg %> 입니다.</h2>
	
	<!-- 3번 -->
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++){
		if (scoreList.get(i).equals("O")){
			score += 100 / scoreList.size();
		}
	}
	%>
	
	<h2>채점 결과는 <%=score %>점 입니다.</h2>
	
	<!-- 4번 -->
	<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0,4));
	// out.print(year);
	int age = 2023 - year + 1;
	%>
	
	<h2><%=birthDay %>의 나이는 <%=age %>세 입니다.</h2>
	
	
</body>
</html>









