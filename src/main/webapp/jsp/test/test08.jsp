<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 3</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String image = request.getParameter("image");
	%>

	<div class="container d-flex mt-5">
		<img src=<%= image %>>
		<div class="ml-3">
			<div class="display-1 font-weight-bold"><%= title %></div>
			<div class="display-2 text-info"><%= author %></div>
			<div class="display-3"><%= publisher %></div>
		</div>
	</div>

</body>
</html>