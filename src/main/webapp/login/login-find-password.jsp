<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/login/login-find-password.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<h2>비밀번호 찾기</h2>
	<form action="new-password" method="post">
		<div>
			<span>아이디</span>
			<span>*</span>
			<input type="text" placeholder="이름을 입력하세요">
		</div>
		<div>
			<span>이름</span>
			<span>*</span>
			<input type="text" placeholder="이름을 입력하세요">
		</div>
		<div>
			<span>이메일</span>
			<span>*</span>
			<input type="text" placeholder="이메일을 입력하세요">
			<button type="button">이메일 인증</button>
		</div>
		<div>
			<span>인증번호</span>
			<span>*</span>
			<input type="text" placeholder="인증번호를 입력하세요">
			<button type="button">인증번호 확인</button>
		</div>
		
		<button type="button" id="find-password-button">비밀번호 찾기</button>
	</form>
</body>
<script type="text/javascript" src="../assets/js/login/login-find-password.js"></script>
</html>