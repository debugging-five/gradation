<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
	<div id="change-password-container">
		<h1>비밀번호 변경</h1>
		<div id="password-input">
			<h5>비밀번호 변경</h5>
			<span>*</span>
			<input id="pw-input-text" class="login-input-text" type="password" name="userPassword" placeholder="비밀번호를 입력하세요" />
			<div class="show-password">
				<img id="input-eye-image" alt="eye-icon" src="../assets/images/mypage/close-eye.png">
			</div>
		</div>
		<button class="big-button">비밀번호 변경</button>
	</div>
</body>
</html>