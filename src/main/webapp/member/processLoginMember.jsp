<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../jsp/DBConn.jsp"%>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String PASS="";
	try {
		String sql="select password from member where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			PASS=rs.getString(1);
			System.out.println(PASS);
			System.out.println(password);
			if(password.equals(PASS)) {
				session.setAttribute("sessionID", id);
				response.sendRedirect("resultMember.jsp?msg=2");
			}else {
				response.sendRedirect("loginMember.jsp?error=1");
			}
		}else {
			response.sendRedirect("loginMember.jsp?error=1");
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
%>