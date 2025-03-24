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
		<div>
			<img alt="유저" src="../assets/images/login/user1.png">
		</div>
		<span>인증되었습니다.</span>
		<span>새로운 비밀번호를 설정해 주세요.</span>
		<form action="login-new-password-ok.user" method="post">
			<input type="hidden" id="passwordChangingId" value="${sessionScope.passwordChangingId}">
			<div class="input-div">
				<span>새 비밀번호</span>
				<span>*</span>
				<input type="text" placeholder="8~12자 영문, 숫자, 특수문자">
				<img id="show-password" alt="눈" src="../assets/images/login/close-eye.png">
			</div>
			<div class="warning-area">
				<div><p id="need-pw-input">필수 항목입니다.</p></div>
				<div><p id="need-pw-input-validate">비밀번호는 8~12자 영문, 숫자, 특수문자로만 작성해 주세요</p></div>
			</div>	
			<div class="input-div">
				<span>새 비밀번호 확인</span>
				<span>*</span>
				<input type="text" placeholder="8~12자 영문, 숫자, 특수문자">
				<img id="show-password-check" alt="눈" src="../assets/images/login/close-eye.png">
			</div>
			<div class="warning-area">
				<div><p id="need-pw-input-check">입력하신 비밀번호가 일치하지 않습니다</p></div>
			</div>	
			<div>
				<button onclick="location.href='login-find-password.jsp'">이전</button>
				<button id="change-button" type="button">확인</button>
			</div>
		</form>
	</div>
	<div id="complete">
		<div id="complete-container">
			<div id="complete-wrap">
				<button id="complete-close-button">
					<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
				</button>
				<img class="big-icon" alt="체크" src="../assets/images/login/red-check-circle.png">
				<span>비밀번호 재설정 완료</span>
				<span>비밀번호 변경이 완료되었습니다.</span>
				<span>새로운 비밀번호로 로그인해주세요.</span>
				<div>
					<button>메인으로</button>
					<button onclick="location.href='login-main.jsp'">로그인</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="../assets/js/login/login-new-password.js"></script>
</html>