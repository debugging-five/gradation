<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/login/login-find-id.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div class="find-id-container">
		<h2 id="find-id-head">아이디 찾기</h2>
			<input type="hidden" id="is-complete" value="${sessionScope.isComplete}"/>
			<input type="hidden" id="mail-code" value="${sessionScope.mailCode}" />
			<input type="hidden" id="check-email" value="${sessionScope.checkEmail}"/>
		<form action="login-find-id-ok.user" method="post">
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
		<div id="id-account">
			<div id="id-account-container">
				<div id="id-account-wrap">
					<div id="id-head">
						<div id="close">
							<a href='./login-main.user' id="find-id-close-button">
								<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
							</a>
						</div>
					</div>
					<div id="id-body">
						<div id="img-wrap">
							<img class="big-icon" alt="유저" src="../assets/images/login/user1.png">
						</div>
						<div id="h2-wrap">
							<h2>가입된 계정 정보</h2>
						</div>
						<div class="id-mail-wrap">
							<span class="h5-text-black">아이디</span><span class="h4-text-black">${sessionScope.userId}</span>
						</div>
						<div class="id-mail-wrap">
							<span class="h5-text-black">이메일</span><span class="h4-text-black">${sessionScope.userEmail}</span>
						</div>
						<div id="id-button-wrap">
							<button class="next-page-button" onclick="location.href='./login-find-password.user'">비밀번호 찾기</button>
							<button class="next-page-button" id="go-login" onclick="location.href='./login-main.user'">로그인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/login/login-find-id.js"></script>
</html>