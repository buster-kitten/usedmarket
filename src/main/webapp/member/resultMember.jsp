<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.6.3.min.js"></script>
<title>회원정보</title>
</head>
<body>
	<jsp:include page="../jsp/menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">회원정보</h3>
		</div>
	</div>
	<div class="container" align="center">
		<% 
			String msg=request.getParameter("msg");
		
			if(msg!=null) {
				if(msg.equals("0")) {
					out.println("<h2 class='alert alert-danger'>회원정보가 수정되었습니다.</h2>");
				}else if(msg.equals("1")) {
					out.println("<h2 class='alert alert-danger'>회원가입을 축하드립니다.</h2>");
				}else if(msg.equals("2")) {
					String loginID=(String)session.getAttribute("sessionID");
					out.println("<h2 class='alert alert-danger'>"+loginID+"님 환영합니다.</h2>");
				}else {
					out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
				}
			}
		%>
	
	</div>
</body>
</html>