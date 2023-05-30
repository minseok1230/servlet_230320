package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// test code
		
		//response.setContentType("text/plain");
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// request parameter 꺼내기 
		String user_id = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("서블릿 호출");
//		out.println("user_id: " + user_id);
//		out.println("name: " + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation)으로 response 구성하기 
		// {"user_id":"marobiana", "name":"최민석", "age":20}
		out.println("{\"user_id\":\"" + user_id + "\", \"name\":\"" 
		+ name + "\", \"age\":" + age + "}");
	}

}












