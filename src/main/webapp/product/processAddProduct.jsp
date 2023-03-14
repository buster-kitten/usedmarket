<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../jsp/DBConn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String filename="";
	String realFolder="C:\\java_work\\UsedMarket\\src\\main\\webapp\\thumbnail";
	String encType="utf-8";
	int maxSize=5*1024*1024;
	
	MultipartRequest multi=new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
	
	String productId=multi.getParameter("productId");
	String productname=multi.getParameter("productname");
	String username=multi.getParameter("username");
	String unitPrice=multi.getParameter("unitPrice");
	String description=multi.getParameter("description");
	String manufacturer=multi.getParameter("manufacturer");
	String category=multi.getParameter("category");
	String unitsInStock=multi.getParameter("unitsInStock");
	String condition=multi.getParameter("condition");
	
	Integer price;
	if(unitPrice.isEmpty()){
		price=0;
	}else {
		price=Integer.valueOf(unitPrice);
	}
	long stock;
	if(unitsInStock.isEmpty()){
		stock=0;
	}else {
		stock=Long.valueOf(unitsInStock);
	}
	
	Enumeration files=multi.getFileNames();
	String fname=(String)files.nextElement();
	String fileName=multi.getFilesystemName(fname);
	PreparedStatement pstmt=null;
	String sql="insert into product22 values(?,?,?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, productname);
	pstmt.setString(3, username);
	pstmt.setInt(4, price);
	pstmt.setString(5, description);
	pstmt.setString(6, category);
	pstmt.setString(7, manufacturer);
	pstmt.setLong(8, stock);
	pstmt.setString(9, condition);
	pstmt.setString(10, fileName);
	pstmt.executeUpdate();
	
	response.sendRedirect("products.jsp");
%>