<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/login/login-new-password.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>비밀번호 변경</title>
</head>
<body>
	<div id="new-password-container">
		<div id="new-password-wrapper">
			<div id="user-icon-wrap">
				<img id="user-icon" alt="유저" src="../assets/images/login/user1.png">
			</div>
			<div id="h3-wrap">
				<h3 class="h3-head">인증되었습니다.</h3>
				<h3 class="h3-head">새로운 비밀번호를 설정해 주세요.</h3>
			</div>
			<form action="login-new-password-ok.user" method="post">
				<input type="hidden" name="userId" value="${sessionScope.userId}">
				<div class="input-div">
					<span class="user-text">새 비밀번호</span>
					<span class="red-star">*</span>
					<input type="password" class="input-text5" id="pw-input" name="userPassword" placeholder="8~12자 영문, 숫자, 특수문자">
					<img id="show-password" class="eye-img" alt="눈" src="../assets/images/login/close-eye.png">
				</div>
				<div class="warning-area">
					<div><p id="need-pw-input">필수 항목입니다.</p></div>
					<div><p id="need-pw-input-validate">비밀번호는 8~12자 영문, 숫자, 특수문자로만 작성해 주세요</p></div>
				</div>	
				<div class="input-div">
					<span class="user-text">새 비밀번호 확인</span>
					<span class="red-star">*</span>
					<input type="password" class="input-text7" id="pw-check-input" placeholder="8~12자 영문, 숫자, 특수문자">
					<img id="show-password-check" class="eye-img" alt="눈" src="../assets/images/login/close-eye.png">
				</div>
				<div class="warning-area">
					<div><p id="need-pw-input-check">입력하신 비밀번호가 일치하지 않습니다</p></div>
				</div>	
				<div id="id-button-wrap">
					<button class="next-page-button" type="button" onclick="location.href='login-main.user'">이전</button>
					<button class="next-page-button" id="change-button" type="button">확인</button>
				</div>
			</form>
		</div>
		<div id="complete">
			<div id="complete-container">
				<div id="complete-wrap">
					<div id="complete-head">
						<a href="login-main.user" id="complete-close-button">
							<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
						</a>
					</div>
					<div id="complete-body">
						<div class="complete-icon">
							<img class="big-icon" alt="체크" src="../assets/images/login/red-check-circle.png">
						</div>
						<h2 class="complete-h2">비밀번호 재설정 완료</h2>
						<div class="h6-wrap">
							<h6 class="complete-h6">비밀번호 변경이 완료되었습니다.</h6>
							<h6 class="complete-h6">새로운 비밀번호로 로그인해주세요.</h6>
						</div>
						<div id="id-button-wrap2">
							<button class="next-page-button2" onclick="location.href='../main/main.main'">메인으로</button>
							<button class="next-page-button2" id="login-button" onclick="location.href='login-main.user'">로그인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="../assets/js/login/login-new-password.js"></script>
</html>