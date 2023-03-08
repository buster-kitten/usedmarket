<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.6.3.min.js"></script>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="../jsp/menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" class="form-horizontal" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2" for="id">아이디</label>
				<div class="col-sm-3">
					<input name="id" id="id" type="text" class="form-control" placeholder="id">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="password">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" id="password" type="text" class="form-control" placeholder="password">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2" for="password_confirm">비밀번호 확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" id="password_confirm" type="text" class="form-control" placeholder="password_confirm">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2" for="name">성명</label>
				<div class="col-sm-3">
					<input name="name" id="name" type="text" class="form-control" placeholder="name">
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" id="m" value="남"><label for="m">남</label>&nbsp;
					<input name="gender" type="radio" id="w" value="여"><label for="w">여</label>&nbsp;
					<input name="gender" type="radio" id="o" value="기타"><label for="o">기타</label>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2" for="birthy">생일</label>
				<div class="col-sm-4">
					<input name="birthy" id="birthy" type="text" class="form-control" placeholder="yyyy">년
					<input name="birthy" id="birthm" type="text" class="form-control" placeholder="mm">월
					<input name="birthy" id="birthd" type="text" class="form-control" placeholder="dd">일
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input type="text" name="mail" maxlength="50" class="form-control col-sm-2">@
					<select name="mail2">
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
				<div class="col-sm-3">
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
		</form>
	</div>
</body>
</html>