<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		for(int i = 0; i < scores.length; i++) {
			average += (double)scores[i]/scores.length;
		}
	%>
	
	<h2>점수 평균은 <%= average %> 입니다.</h2>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String result : scoreList) {
			if(result.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>
	
	<h2>채점 결과는 <%= score %>점 입니다.</h2>

</body>
</html>