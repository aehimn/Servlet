package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>Post Method 1</title>\n"
				+ "	</head>\n"
				+ "	<body>\n");
		
		out.println(""
				+ "		<h2>" + name + "님 지원이 완료 되었습니다.</h2>\n"
				+ "		<hr>\n"
				+ "		<div>" + introduce + "</div>\n");
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
		
	}

}
