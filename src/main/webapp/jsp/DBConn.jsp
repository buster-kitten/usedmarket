<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn=null;
	try {
		String url="jdbc:mysql://localhost:3306/usedmarket?serverTimezone=UTC";
		String user="root";
		String pass="791356";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("연결 성공");
	}catch(SQLException e) {
		System.out.println("연결 실패");
	}
%>