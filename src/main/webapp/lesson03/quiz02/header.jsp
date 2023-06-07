<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2 class="text-success ml-2">Melong</h2>
<!-- 검색 -->
<form method="get" action="/lesson03/quiz02/info_layout.jsp">
	<div class="ml-5 input-group">
		<input type="text" class="form-control col-10" name="search" value="<%=request.getParameter("search") %>">
		<div class="input-group-append">
			<input type="submit" class="btn btn-info" value="검색">
		</div>
	</div>
</form>
