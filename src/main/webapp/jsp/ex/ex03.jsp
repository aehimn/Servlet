<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String nickname = request.getParameter("nickname");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		
		// 좋아하는 음식을 모두 전달받고 보여준다.
		// 민트초코, 하와이안 피자, 번데기
		String[] foodArray = request.getParameterValues("food");
		
		String foodString = "";
		
		for(int i = 0; i < foodArray.length; i++) {
			// foodString = foodString + foodArray[i];
			foodString += foodArray[i] + " ";
		}
		
	%>

	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= foodString %></h3>

</body>
</html>