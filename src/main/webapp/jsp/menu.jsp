<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sessionID=(String) session.getAttribute("sessionID");  	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.6.3.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="../jsp/welcome.jsp">Home</a>
			</div>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<%
					System.out.println("error : "+sessionID);
					if(sessionID==null){
				%>
				<li class="nav-item"><a class="nav-link" href="../member/loginMember.jsp">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="../member/addMember.jsp">회원가입</a></li>
				<%
					}else {
				%>
				<li style="padding-top:7px; color:white">[<%=sessionID %>님 환영합니다.]</li>
				<li class="nav-item"><a class="nav-link" href="../member/logoutMember.jsp">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link" href="../member/updateMember.jsp">회원수정</a></li>
				<%} %>
				<li class="nav-item"><a class="nav-link" href="../jsp/products.jsp">상품목록</a></li>
				<li class="nav-item"><a class="nav-link" href="../jsp/addProduct.jsp">상품등록</a></li>
				<li class="nav-item"><a class="nav-link" href="../jsp/addProduct.jsp?edit=update">상품수정</a></li>
				<li class="nav-item"><a class="nav-link" href="../jsp/addProduct.jsp?edit=delete">상품삭제</a></li>
				<li class="nav-item"><a class="nav-link" href="../jsp/BoardListAction.do?pageNum=1">게시판</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>