<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-change-password.css" />
<meta charset="UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<div id="change-password-container">
		<div id="change-password-wrapper">
			<h2>비밀번호 변경</h2>
			<div class="input-div">
				<span class="user-text">현재 비밀번호</span>
				<span class="red-star">*</span>
				<input type="password" class="input-text" id="pw-input" name="userPassword" placeholder="비밀번호를 입력하세요">
				<img id="show-password" class="eye-img" alt="눈" src="../assets/images/mypage/close-eye.png">
			</div>
			<div class="warning-area">
				<div><span id="need-password" class="warning-message">필수 항목입니다.</span></div>
				<div><span id="need-password-check" class="warning-message">비밀번호가 틀렸습니다.</span></div>
			</div>
			<button class="big-button" id="change-password-button" type="button">비밀번호 변경</button>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-change-password.js"></script>
</html>