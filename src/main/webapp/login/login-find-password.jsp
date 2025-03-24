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
	<%@ include file="../layout/header.jsp" %>
	
	<div class="find-id-container">
		<h2 id="find-pw-head">비밀번호 찾기</h2>
			<input type="hidden" id="password-mail-code" value="${sessionScope.passwordMailCode}" />
			<input type="hidden" id="check-email" value="${sessionScope.checkEmail}"/>
		<form action="login-new-password.user" method="post">
			<div class="input-div">
				<span class="user-text">아이디</span>
				<span class="red-star">*</span>
				<input id="user-id" class="input-text3" type="text" placeholder="이름을 입력하세요" value="${sessionScope.userId}">
			</div>
			<div class="warning-area">
				<div><p id="need-name-input">필수 항목입니다.</p></div>
			</div>
			<div class="input-div">
				<span class="user-text">이름</span>
				<span class="red-star">*</span>
				<input id="user-name" class="input-text2" type="text" placeholder="이름을 입력하세요" value="${sessionScope.userName}">
			</div>
			<div class="warning-area">
				<div><p id="need-name-input">필수 항목입니다.</p></div>
			</div>
			<div class="input-div">
				<span class="user-text">이메일</span>
				<span class="red-star">*</span>
				<input id="user-email" class="input-text3" type="text" placeholder="이메일을 입력하세요" value="${sessionScope.userEmail}">
				<button id="email-check-button" class="input-button" type="button">이메일 인증</button>
			</div>
			<div class="warning-area">
				<div><p id="need-email-validate">유효하지 않은 사용자입니다.</p></div>
				<div><p id="email-complete">인증메일이 발송되었습니다</p></div>	
			</div>
			<div class="input-div">
				<span class="user-text">인증번호</span>
				<span class="red-star">*</span>
				<input id="user-code" class="input-text4" type="text" placeholder="인증번호를 입력하세요" value="${sessionScope.userCode}">
				<button id="code-check-button" class="input-button" type="button">인증번호 확인</button>
			</div>
			<div class="warning-area">
				<div><p id="need-email-check">이메일 인증을 진행해주세요</p></div>
				<div><p id="need-email-check-input">인증번호를 입력해 주세요</p></div>
				<div><p id="need-email-check-validate">인증번호가 틀렸습니다.</p></div>
				<div><p id="email-check-compleate">인증이 완료되었습니다.</p></div>
			</div>
			
			<button type="button" id="find-id-button">아이디 찾기</button>
		</form>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/login/login-find-password.js"></script>
</html>