package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;
@WebServlet("/lesson04/quiz03_delete")
public class Quiz03Delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
			//request
			int id = Integer.parseInt(request.getParameter("id"));
			
			// DB 연결
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			
			// delete 쿼리
			String deleteQuery = "delete  from `used_goods` where `id` = " + id;
			try {
				ms.update(deleteQuery);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// DB 연결 해제
			ms.disconnect();
			
			// redirect
			response.sendRedirect("/lesson04/quiz03/hongList_layout.jsp");
	}
	
	

}
