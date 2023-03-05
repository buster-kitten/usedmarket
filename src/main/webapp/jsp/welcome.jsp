<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.6.3.min.js"></script>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%!String greeting = "중고 거래 쇼핑몰에 오신 것을 환영합니다.";
	String tagline = "Welcome to Used Market";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-5 text-center">
				<%=greeting %>
			</h1>
		</div>
	</div>
	<div>
		<div class="container">
			<div class="text-center">
				<h3>
					<%=tagline %>
				</h3>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>