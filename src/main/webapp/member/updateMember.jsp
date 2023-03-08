<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String month=""; %>
<% String sessionID=(String)session.getAttribute("sessionID"); %>
<%@ include file="../jsp/DBConn.jsp"%>
<%
try {
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="select * from member where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,sessionID);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String password=rs.getString("password");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
		String =rs.getString("");
	}
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.6.3.min.js"></script>
<title>로그인</title>
</head>
<body>
	<jsp:include page="../jsp/menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">로그인하세요.</h3>
			<%
				String error=request.getParameter("error");
			if(error!=null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해 주세요.");
				out.println("</div>");
			}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group">
					<label class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="ID" name="id" required autofocus>
				</div>
				<div class="form-group">
					<label class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="password" name="password" required>
				</div>
				<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>