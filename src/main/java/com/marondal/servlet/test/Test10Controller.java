package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>Post Method 2</title>\n"
				+ "	</head>\n"
				+ "	<body>\n");
		
		if(!id.equals(userMap.get("id"))) {
			out.println(""
					+ "		<div>id가 일치하지 않습니다.</div>\n");
		} else if(!password.equals(userMap.get("password"))) {
			out.println(""
					+ "		<div>password가 일치하지 않습니다.</div>\n");
		} else {
			out.println(""
					+ "		<h1>" + userMap.get("name") + "님 환영 합니다.</h1>\n");
		}
		
		out.println(""
				+ "	</body>\n"
				+ "</html>");
		
		
	}

}
