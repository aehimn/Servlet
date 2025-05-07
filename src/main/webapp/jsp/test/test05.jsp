<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
		String valueString = request.getParameter("value");
		int value = Integer.parseInt(valueString);
		String cm = value + " cm";
		
		String[] units = request.getParameterValues("unit");
		List<String> unitsList = new ArrayList<>(Arrays.asList(units));

		String result = "";
		
		if(unitsList.contains("in")) {
			String in = value / 2.54 + " in<br>";
			result += in;
		}
		
		if(unitsList.contains("yd")) {
			String yd = value / 91.44 + " yd<br>";
			result += yd;
		}
		
		if(unitsList.contains("ft")) {
			String ft = value / 30.48 + " ft<br>";
			result += ft;
		}
		
		if(unitsList.contains("m")) {
			String m = value / 100.0 + " m<br>";
			result += m;
		}
	%>

	<div class="container">
		<h1>변환 결과</h1>
		<h3><%= cm %></h3>
		<hr>
		<h3><%= result %></h3>
	</div>
	
</body>
</html>