<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../jsp/DBConn.jsp"%>
<%
	PreparedStatement pstmt=null;
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail1 = request.getParameter("mail");
	String mail2 = request.getParameterValues("mail2")[0];
	String mail = mail1 + "@" + mail2;
	String phone = request.getParameter("phone");
	String address= request.getParameter("address");

	try {
		String sql="insert into member values(?,?,?,?,?,?,?,?,now())";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,gender);
		pstmt.setString(5,birth);
		pstmt.setString(6,mail);
		pstmt.setString(7,phone);
		pstmt.setString(8,address);
		pstmt.executeUpdate();
		response.sendRedirect("resultMember.jsp?msg=1");
	}catch(Exception e) {
		e.printStackTrace();
	}
%>