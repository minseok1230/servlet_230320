package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03Insert extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		//request 
		String[] checkname =  request.getParameterValues("checkname");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		
		String realName = null;
		for(String name : checkname){
			realName = name;
        }
		
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB select
		String selectQuery = "select * from `seller`";
		int sellerId = 0;
		try {
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
				String aaaaa = res.getString("nickname");
				if (res.getString("nickname").equals(realName)){
					 sellerId = res.getInt("id");
					 
				} 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB insert
		String insertQuery_2 = "INSERT INTO `used_goods` "
				+ "(`title`, `price`, `description`, `picture`, `sellerId`) "
				+ "VALUES ('" + title + "', '" + price + "', '" + description + "', '" + picture + "', '" + sellerId + "')";
		try {
			ms.update(insertQuery_2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// DB 연결해제
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson04/quiz03/hongList_layout.jsp");
		
	}

}
