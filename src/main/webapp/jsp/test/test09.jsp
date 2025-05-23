<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제 1</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
	    List<Map<String, String>> list = new ArrayList<>();
	    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	    list.add(map);
	
	    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	    list.add(map);
	    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	    list.add(map);
	    
	    String category = request.getParameter("category");
	    
	%>

	<div class="container">
		<header style="height: 100px" class="d-flex justify-content-center align-items-center">
			<h1 class="text-danger">Sk broadband IPTV</h1>
		</header>
		<nav style="height: 50px" class="bg-danger d-flex justify-content-around align-items-center">
			<div><a href="/jsp/test/test09.jsp" class="text-white">전체</a></div>
			<div><a href="/jsp/test/test09.jsp?category=terrestrial" class="text-white">지상파</a></div>
			<div><a href="/jsp/test/test09.jsp?category=drama" class="text-white">드라마</a></div>
			<div><a href="/jsp/test/test09.jsp?category=entertainment" class="text-white">예능</a></div>
			<div><a href="/jsp/test/test09.jsp?category=movie" class="text-white">영화</a></div>
			<div><a href="/jsp/test/test09.jsp?category=sports" class="text-white">스포츠</a></div>
		</nav>
		<section>
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
					<% for(Map<String, String> item : list) { %>
					<% if(category == null
							|| (category.equals("terrestrial") && item.get("category").equals("지상파"))
							|| (category.equals("drama") && item.get("category").equals("드라마"))
							|| (category.equals("entertainment") && item.get("category").equals("예능"))
							|| (category.equals("movie") && item.get("category").equals("영화"))
							|| (category.equals("sports") && item.get("category").equals("스포츠"))) { %>
					<tr>
						<td><%= item.get("ch") %></td>
						<td><%= item.get("name") %></td>
						<td><%= item.get("category") %></td>
					</tr>
					<% } %>
					<% } %>
				</tbody>
			</table>
		</section>
		<footer style="height: 70px">
			<div class="text-center">Copyright 2025. marondal All Rights Reserved.</div>
		</footer>
	</div>

</body>
</html>