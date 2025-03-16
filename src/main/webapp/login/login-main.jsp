<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/login/login-main.css">
<title>Login</title>
</head>
<body>
	<div class="container">
		<div>
			<h2 id="login">로그인</h2>
		</div>
		<div>
			<form action="login-ok" method="post">
				<div class="login-input">
					<div>
						<img class="input-image" alt="user-icon" src="../assets/images/login/user.png">
						<input class="login-input-text" type="text" name="id" placeholder="아이디" />
					</div>
				</div>
				<div class="login-input">
					<div>
						<img class="input-image" alt="password-icon" src="../assets/images/login/lock.png">
						<input class="login-input-text" type="password" name="password" placeholder="비밀번호" />
					</div>
					<div class="input-image">
						<img alt="eye-icon" src="../assets/images/login/closed-eye.png">
					</div>
				</div>
				<div id="login-checks">
					<input type="checkbox"><span>로그인 상태 유지</span>
					<input type="checkbox"><span>아이디 저장</span>
				</div>
				<div>
					<button id="login-button" type="button"><span id="login-button-text">로그인</span></button>
				</div>
			</form>
		</div>	
			<div id="login-option">
				<a>아이디 찾기</a>
				<span>|</span>
				<a>비밀번호 찾기</a>
				<span>|</span>
				<a>회원가입</a>
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
</html>