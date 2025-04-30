package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
//		String search = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>Get Method 와 form 1</title>\n"
				+ "	</head>\n"
				+ "	<body>");
		
		for(String text : list) {
			if(text.contains(keyword)) {
				String newText = text.replace(keyword, "<b>" + keyword + "</b>");
				out.println(""
						+ "		<div>" + newText + "</div><hr>");
			}
		}
		
//		for(String line : list) {
//			if(line.contains(search)) {
//				int index = line.indexOf(search);
//				out.print("		<div>");
//				
//				for(int i = 0; i < line.length(); i++) {
//					if(i == index) {
//						out.print("<b>" + search + "</b>");
//						i += search.length() - 1;
//					} else {
//						out.print(line.substring(i, i + 1));
//					}
//				}
//				
//				out.println(""
//						+ "</div>\n"
//						+ "		<hr>");
//			}
//		}
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
		
	}

}
