<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl을 쓰는 방법 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/join/join-main.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>회원가입</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div class="join-container">
		<h2 id="join-head">회원가입</h2>
			<input type="hidden" id="is-complete" value="${sessionScope.isComplete}" />
			<input type="hidden" id="mail-code" value="${sessionScope.code}" />
			<input type="hidden" id="id-check-ok" value="${sessionScope.checkId}" />
			<input type="hidden" id="email-check-ok" value="${sessionScope.checkEmail}"/>
			<input type="hidden" id="email-already" value="${sessionScope.emailAlready}"/>
		<form action="join-ok.user" method="post">
			<div class="input-div">
				<span class="user-text">아이디</span>
				<span class="red-star">*</span>
				<input type="text" class="input-text3" id="id-input" name="userId" placeholder="6~20자 영문, 숫자" value="${sessionScope.userId}" />
				<button type="button" class="input-button" id="id-check-button">중복체크</button>
			</div>
			<div class="warning-area">
				<div><p class="warning-text" id="already-use-id">이미 사용중인 아이디 입니다.</p></div>
				<div><p class="warning-text" id="need-id-check">아이디 중복체크를 진행해주세요</p></div>
				<div><p class="warning-text" id="need-id-validate">아이디는 6~20자 영문, 숫자로만 작성해 주세요</p></div>
			</div>
			<div class="input-div">
				<span class="user-text">비밀번호</span>
				<span class="red-star">*</span>
				<input type="password" class="input-text4" id="pw-input" name="userPassword" placeholder="8~12자 영문, 숫자, 특수문자 " value="${sessionScope.userPassword}"/>
				<img alt="눈" class="eye-img" id="show-password" src="../assets/images/join/close-eye.png">
			</div>
			<div class="warning-area">
				<div><p id="need-pw-input">필수 항목입니다.</p></div>
				<div><p id="need-pw-input-validate">비밀번호는 8~12자 영문, 숫자, 특수문자로만 작성해 주세요</p></div>
			</div>	
			<div class="input-div">
				<span class="user-text">비밀번호 확인</span>
				<span class="red-star">*</span>
				<input type="password" class="input-text6" id="pw-check-input" name="checkUserPassword" placeholder="8~12자 영문, 숫자, 특수문자 " value="${sessionScope.checkUserPassword}" />
				<img alt="눈" class="eye-img" id="show-password-check" src="../assets/images/join/close-eye.png">
			</div>
			<div class="warning-area">
				<div><p id="need-pw-input-check">입력하신 비밀번호가 일치하지 않습니다</p></div>
			</div>	
			<div class="input-div">
				<span class="user-text">이름</span>
				<span class="red-star">*</span>
				<input type="text" class="input-text2" id="name-input" name="userName" placeholder="이름을 입력하세요." value="${sessionScope.userName}" />
			</div>
			<div class="warning-area">
				<div><p id="need-name-input">필수 항목입니다.</p></div>
			</div>	
			<div class="input-div">
				<span class="user-text">닉네임</span>
				<input type="text" class="input-text3-no-star" id="nickname-input" name="userNickname" placeholder="닉네임을 입력하세요." value="${sessionScope.userNickname}" />
			</div>
			<div class="warning-area">
			</div>	
			<div class="input-div">
				<span class="user-text">휴대폰</span>
				<span class="red-star">*</span>
				<input type="text" class="input-text3" id="phone-input" name="userPhone" placeholder="휴대폰 번호를 입력하세요." value="${sessionScope.userPhone}" />
			</div>
			<div class="warning-area">
				<div><p id="need-phone-input">필수 항목입니다.</p></div>
			</div>	
			<div class="input-div">
				<span class="user-text">이메일</span>
				<span class="red-star">*</span>
				<input type="text" class="input-text3" id="email-input" name="userEmail" placeholder="이메일을 입력하세요." value="${sessionScope.userEmail}" />
				<button type="button" class="input-button" id="email-check-button">이메일 인증</button>
			</div>
			<div class="warning-area">
				<div><p id="already-use-email">이미 사용중인 이메일 입니다.</p></div>
				<div><p id="need-email-validate">올바른 이메일 형식을 입력해주세요.</p></div>
				<div><p id="email-compleate">인증메일이 발송되었습니다</p></div>	
			</div>	
			<div class="input-div">
				<span class="user-text">인증번호</span>
				<span class="red-star">*</span>
				<input type="text" class="input-text4" id="email-check-input" name="checkUserEmail" placeholder="인증번호를 입력하세요." value="${sessionScope.checkUserEmail}" />
				<button type="button" class="input-button" id="email-check-button-verify">인증번호 확인</button>
			</div>
			<div class="warning-area">
				<div><p id="need-email-check">이메일 인증을 진행해주세요</p></div>
				<div><p id="need-email-check-input">인증번호를 입력해 주세요</p></div>
				<div><p id="need-email-check-validate">인증번호가 틀렸습니다.</p></div>
				<div><p id="email-check-compleate">인증이 완료되었습니다.</p></div>
			</div>	
			
			<div class="checkbox-wrap">
				<input type="checkbox" id="check-all"/>
	  			<label for="check-all">
	  				<span class="check-label-span">필수 및 선택 항목을 모두 포함하여 동의합니다.</span>
	  			</label>
	  			<div class="checkboxs-wrap">
					<input class="check-label" type="checkbox" id="check-up14"/>
		  			<label class="checkbox-label" for="check-up14">
		  				<span class="check-label-span">[필수] 만 14세 이상입니다.</span>
		  			</label>
					<input class="check-label" type="checkbox" id="check-service"/>
		  			<label class="checkbox-label" for="check-service">
		  				<span class="check-label-span">[필수] 서비스 약관 동의</span>
		  			</label>
					<input class="check-label" type="checkbox" id="check-need-private"/>
		  			<label class="checkbox-label" for="check-need-private">
		  				<span class="check-label-span">[필수] 개인정보 수집 및 이용 동의</span>
		  			</label>
					<input name="agreement" class="check-label" type="checkbox" id="check-private"/>
		  			<label class="checkbox-label" for="check-private">
		  				<span  class="check-label-span">[선택] 개인정보 수집 및 이용 동의</span>
		  			</label>
		  		</div>
			</div>
			
			<div>
				<button id="join-button" type="button">회원가입</button>
			</div>
		</form>
		<!-- 회원가입 완료시 -->
		<div id="join-success">
			<div id="join-success-container">
				<div id="join-success-wrap">
					<div id="success-head">
						<div id="close">
							<a id="join-success-close-button" href="../login/login-main.user">
								<img id="close-icon" alt="닫기" src="../assets/images/login/close.png">
							</a>
						</div>
					</div>
					<div id="success-body">
						<div>
							<img class="big-icon" alt="체크" src="../assets/images/login/red-check-circle.png">
							<p class="join-success-text">회원 가입이 완료되었습니다</p>
						</div>				
						<div id="success-button">
								<button class="go-main-button" onclick="location.href='../login/login-main.user'">메인으로</button>
								<button class="go-login-button" onclick="location.href='../login/login-main.user'">로그인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="../layout/footer.jsp" %>
	</div>
</body>
<script type="text/javascript" src="../assets/js/join/join-main.js"></script>
</html>