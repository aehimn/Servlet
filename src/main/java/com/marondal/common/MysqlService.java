package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private Connection connection;
	
	// 데이터베이스 접속 기능
	public boolean connect() {
		
		// database 접속
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			// 접속에 필요한 정보
			// 접속 주소, 포트, 사용할 데이터베이스, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/haemin";
			String username = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, username, password);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			// 접속 실패
			return false;
		}
		
		return true;
		
	}
	
	// 조회 쿼리 수행기능
	public ResultSet select(String query) {
		
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return null;
		}
		
		
		
	}
	
	
	
	// 데이터베이스 접속 끊기
	public boolean disconnect() {
		
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return false;
		}
		
		return true;
		
	}
	
	
}
