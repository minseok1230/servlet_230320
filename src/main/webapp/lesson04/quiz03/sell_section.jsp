<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form class="sell" method="post" action="/lesson04/quiz03_insert">
	<div class="display-4 pt-5">물건 올리기</div>

	<!-- 아이디 / 제목 / 가격 입력 -->
	<div class="d-flex justify-content-between mt-5 mr-3">
			<div class="col-4">
				<select id="checkname" class="form-control" name="checkname" >
					<option disabled selected>-아이디 선택-</option>
					<%
						//DB 연결
						MysqlService ms = MysqlService.getInstance();
						ms.connect();
						
						// select 쿼리
						String selectQuery = "select * from `seller`";
						ResultSet res = ms.select(selectQuery);
						
						while (res.next()){
					%>
					<option value="<%=res.getString("nickname") %>" ><%=res.getString("nickname") %></option>
					<%
						}
						//DB 연결 해제
						ms.disconnect();
					%>
				</select>
			</div>
			<!-- 제목입력 -->
			<input type="text" class="form-control col-5" name="title" placeholder="제목">
			<!--  가격입력 -->
			<div class="input-group col-3">
				<input type="text" class="form-control" name="price" placeholder="가격">
				<div class="input-group-append">
					<span class="input-group-text">원</span>
				</div>
			</div>
		</div>
	
		<!-- 내용 입력 -->
		<textarea class="form-control my-4" rows="6" name="description"></textarea>
	
		<!-- url 입력 -->
		<div class="input-group mb-4">
			<div class="input-group-prepend">
				<span class="input-group-text">이미지 url</span>
			</div>
			<input type="text" class="form-control" name="picture">
		</div>
	
		<!-- 저장 버튼 -->
		<input type="submit" class="form-control" value="저장">
</form>