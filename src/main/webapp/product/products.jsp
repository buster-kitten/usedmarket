<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../jsp/menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-6">상품목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@include file="../jsp/DBConn.jsp" %>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				
				String sql="select * from product";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col-md-4">
				<a href="product.jsp?id=<%=rs.getString("productId")%>"><img src="<%=request.getContextPath()%>/upload/<%=rs.getString("filename")%>" style="width:100%"></a>
				<h3><%=rs.getString("name") %></h3>
				<p><%=rs.getString("description") %></p>
				<p><%=rs.getString("unitPrice") %>원</p>
				<p><%=rs.getString("filename") %></p>
				<p><a href="product.jsp?id=<%=rs.getString("productId")%>" class="btn btn-secondary" role="button">상세정보 &raquo;</a></p>
			</div>					
			<%
				}
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}
				if(conn!=null){
					conn.close();
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="../jsp/footer.jsp"/>
</body>
</html>