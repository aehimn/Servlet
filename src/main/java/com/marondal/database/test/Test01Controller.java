package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/haemin";
			String username = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, username, password);
			
			String query = "INSERT INTO `real_estate`\r\n"
					+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
			
			Statement statement = connection.createStatement();
			int count = statement.executeUpdate(query);
			
			out.println("실행 결과 : " + count);
			statement.close();
			
			query = "SELECT `address`, `area`, `type` FROM `real_estate` ORDER BY `realtorId` DESC LIMIT 10;";
			
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 ; " + type);
			}
			
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
