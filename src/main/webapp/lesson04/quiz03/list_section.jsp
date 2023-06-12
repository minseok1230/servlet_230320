<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="media-parent-box d-flex flex-wrap justify-content-between">
	
		<%
			// DB 연결
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			
			// select쿼리 수행
			String selectQuery = "select A.*, B.* from seller As A right join used_goods As B on A.id = B.sellerId order by b.id desc; ";
			ResultSet res = ms.select(selectQuery);
			
			while (res.next()){
		%>
	<div class="box">
		<div class="d-flex justify-content-center align-items-center mt-2">	
			<%
				if (res.getString("picture") == null){
			%>
				<div class="d-flex justify-content-center align-items-center img">
					<h2 class="text-secondary">이미지 없음</h2>
				</div>
			<%
				} else {
			%>
			<img src="<%=res.getString("picture") %>" alt="판매이미지">
			<%
				};
			%>
		</div>
		<div class="m-2"><b><%=res.getString("title") %></b></div>
		<div class="text-secondary m-2"><%=res.getInt("price") %>원</div>
		<div class="d-flex">
			<div class="m-2 nickname"><%=res.getString("nickname") %></div>
			<a href="/lesson04/quiz03_delete?id=<%=res.getInt("b.id") %>" class="btn btn-info">삭제</a>
		</div>
	</div>
	
		<%
			};
			//DB 연결 해제
			ms.disconnect();
		%>
</section>