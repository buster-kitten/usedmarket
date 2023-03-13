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
<script src="../js/jquery-3.6.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="../jsp/welcome.jsp">
	   	<img src="../images/cart-shopping-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
	  	Used Market
	  </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
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
				<li style="padding-top:7px;">[<%=sessionID %>님 환영합니다.]</li>
				<li class="nav-item"><a class="nav-link" href="../member/logoutMember.jsp">로그아웃</a></li>
				<li class="nav-item"><a class="nav-link" href="../member/updateMember.jsp">마이페이지</a></li>
				<li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">상품관리</a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="../product/addProduct.jsp">상품등록</a>
			          <a class="dropdown-item" href="../product/addProduct.jsp?edit=update">상품수정</a>
			          <a class="dropdown-item" href="../product/addProduct.jsp?edit=delete">상품삭제</a>
			        </div>
	     		</li>
				<%} %>
				<li class="nav-item"><a class="nav-link" href="../product/products.jsp">상품목록</a></li>	      
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
	    </form>
  	  </div>
	</nav>
</body>
</html>