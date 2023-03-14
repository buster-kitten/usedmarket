<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<%
	String sessionId= (String) session.getAttribute("sessionId");
%>
<%@ include file="../jsp/DBConn.jsp" %>
<%
	try {
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="select * from member where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,sessionId);
	rs=pstmt.executeQuery();
	
	if(rs.next()) {
		String password=rs.getString("password");
		String name=rs.getString("name");
		String gender=rs.getString("gender");
		String birth=rs.getString("birth");
		String mail=rs.getString("mail");
		String phone=rs.getString("phone");
		String address=rs.getString("address");
		System.out.println("gender : "+gender);
		String mail1=mail.split("@")[0];
		String mail2=mail.split("@")[1];
		System.out.println("mail2 : "+mail2);
		String year=birth.split("/")[0];
		String month=birth.split("/")[1];
		String day=birth.split("/")[2];
		
		
%>
<script>
	function checkForm() {
		var NM=document.newMember;
		if(!NM.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if(!NM.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(NM.password.value!=NM.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<title>회원수정</title>
</head>
<body onload="init()")>
	<jsp:include page="../jsp/menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원수정</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" class="form-horizontal" action="processUpdateMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id" value="<%=sessionId %>">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="password">비밀번호</label>
				<div class="col-sm-5">
					<input name="password" id="password" type="text" class="form-control" placeholder="password">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2" for="password_confirm">비밀번호 확인</label>
				<div class="col-sm-5">
					<input name="password_confirm" id="password_confirm" type="text" class="form-control" placeholder="password_confirm">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2" for="name">성명</label>
				<div class="col-sm-5">
					<input name="name" id="name" type="text" class="form-control" placeholder="name">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" id="m" value="남">&nbsp;<label for="m">남</label>&nbsp;
					<input name="gender" type="radio" id="w" value="여">&nbsp;<label for="w">여</label>&nbsp;
					<input name="gender" type="radio" id="o" value="기타">&nbsp;<label for="o">기타</label>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="birthy">생일</label>
				<div class="col-sm-5 input-group">
					<input name="birthy" id="birthy" type="text" class="form-control" placeholder="yyyy">&nbsp;년&nbsp;
					<input name="birthy" id="birthm" type="text" class="form-control" placeholder="mm">&nbsp;월&nbsp;
					<input name="birthy" id="birthd" type="text" class="form-control" placeholder="dd">&nbsp;일&nbsp;
				</div>
			</div>		
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-5 input-group">
					<input type="text" name="mail" class="form-control">&nbsp;@&nbsp;
					<select name="mail2"  class="form-control">
						<option>직접입력</option>
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>hanmail.net</option>
						<option>daum.net</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="phone">휴대전화</label>
				<div class="col-sm-5">
					<input name="phone" id="phone" type="text" class="form-control" placeholder="phone">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="address">주소</label>
				<div class="col-sm-5">
					<input name="address" id="address" type="text" class="form-control" placeholder="address">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-primary" value="취소" onclick="reset()">
				</div>
			</div>
			<%
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			%>
		</form>
	</div>
</body>
</html>