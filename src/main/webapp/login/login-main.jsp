<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/login/login-main.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>gradation 로그인</title>
</head>
<body>

	<%@ include file="../layout/header.jsp" %>

	<div class="container">
		<div>
			<h2 id="login">로그인</h2>
		</div>
		<div>
			<form action="login-ok" method="post">
				<div class="login-input">
					<div>
						<img class="input-image" alt="user-icon" src="../assets/images/login/user.png">
						<input id="id-input-text" class="login-input-text" type="text" name="id" placeholder="아이디" />
					</div>
				</div>
				<div>
					<span id="id-need-write" class="need-write">필수 항목입니다.</span>
				</div>
				<div class="login-input">
					<div>
						<img class="input-image" alt="password-icon" src="../assets/images/login/lock.png">
						<input id="pw-input-text" class="login-input-text" type="password" name="password" placeholder="비밀번호" />
					</div>
					<div class="input-image">
						<img alt="eye-icon" src="../assets/images/login/closed-eye.png">
					</div>
				</div>
				<div>
					<span id="pw-need-write" class="need-write">필수 항목입니다.</span>
				</div>
				<div id="login-checks">
					<input type="checkbox"><span>로그인 상태 유지</span>
					<input type="checkbox"><span>아이디 저장</span>
				</div>
				<div>
					<button class="login-button" type="button"><span id="login-button-text">로그인</span></button>
				</div>
			</form>
		</div>	
			<div id="login-option">
				<a>아이디 찾기</a>
				<span>|</span>
				<a>비밀번호 찾기</a>
				<span>|</span>
				<a href="../join/join-main.jsp">회원가입</a>
			</div>
			<div>
				<span>또는 다른 서비스 계정으로 로그인</span>
			</div>
			<div id="sns-login">
				<a><img alt="kakao" src="../assets/images/login/kakao.png"></a>
				<a><img alt="naver" src="../assets/images/login/naver.png"></a>
				<a><img alt="google" src="../assets/images/login/google.png"></a>
			</div>
	</div>
</body>
<script type="text/javascript" src="../assets/js/login/login-main.js"></script>
</html>