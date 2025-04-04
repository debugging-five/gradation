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
			<form action="login-ok.user" method="post">
				<div class="login-input" id="id-input">
					<img id="id-img" class="input-image" alt="user-icon" src="../assets/images/login/user.png">
					<input id="id-input-text" class="login-input-text" type="text" name="userId" placeholder="아이디" />
				</div>
				<div class="warning-area">
					<span id="id-need-write" class="warning-text">필수 항목입니다.</span>
				</div>
				<div class="login-input" id="pw-input">
					<img id="pw-img" class="input-image" alt="password-icon" src="../assets/images/login/lock.png">
					<input id="pw-input-text" class="login-input-text" type="password" name="userPassword" placeholder="비밀번호" />
					<div class="input-eye-image">
						<img id="show-password" alt="eye-icon" src="../assets/images/login/close-eye.png">
					</div>
				</div>
				<div class="warning-area2">
					<span id="pw-need-write" class="warning-text">필수 항목입니다.</span>
					<span id="login-fail-wrong1" class="warning-text">아이디 또는 비밀번호를 잘못 입력했습니다.</span>
					<span id="login-fail-wrong2" class="warning-text">입력하신 내용을 다시 확인해주세요.</span>
				</div>
				<div id="login-checks">
					<input id="login-save" type="checkbox">
					<label for="login-save"><span class="check-label-span">로그인 상태 유지</span></label>
					<input id="id-save" type="checkbox">
					<label for="id-save"><span class="check-label-span">아이디 저장</span></label>
				</div>
				<div>
					<button class="login-button" type="button"><span id="login-button-text">로그인</span></button>
				</div>
			</form>
		</div>	
		<div id="login-option">
			<a href="../login/login-find-id.user">아이디 찾기</a>
			<span>|</span>
			<a href="../login/login-find-password.user">비밀번호 찾기</a>
			<span>|</span>
			<a href="../join/join-main.user">회원가입</a>
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
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/login/login-main.js"></script>
</html>