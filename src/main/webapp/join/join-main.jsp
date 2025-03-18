<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
		<form action="join-ok.user" method="post">
			<div>
				<span class="user-text">아이디</span>
				<span class="red-star">*</span>
				<input type="text" id="id-input" name="userId" placeholder="6~20자 영문, 숫자" value={userId}/>
				<button type="button" id="id-check-button"><p>중복체크</p>	</button>
			</div>
			<div><p id="already use id">이미 사용중인 아이디 입니다.</p></div>
			<div><p class="need-write">필수 항목입니다.</p></div>
			<div>
				<span class="user-text">비밀번호</span>
				<span class="red-star">*</span>
				<input type="password" id="pw-input" name="userPassword" placeholder="8~12자 영문, 숫자, 특수문자 "/>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">비밀번호 확인</span>
				<span class="red-star">*</span>
				<input type="password" id="pw-check-input" name="checkUserPassword" placeholder="8~12자 영문, 숫자, 특수문자 "/>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">이름</span>
				<span class="red-star">*</span>
				<input type="text" id="name-input" name="userName" placeholder="이름을 입력하세요."/>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">닉네임</span>
				<input type="text" id="nickname-input" name="userNickname" placeholder="닉네임을 입력하세요."/>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">휴대폰</span>
				<span class="red-star">*</span>
				<input type="text" id="phone-input" name="userPhone" placeholder="휴대폰 번호를 입력하세요."/>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">이메일</span>
				<span class="red-star">*</span>
				<input type="text" id="email-input" name="userEmail" placeholder="이메일을 입력하세요."/>
				<button type="button" id="email-check-button"><p>이메일 인증</p></button>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">인증번호</span>
				<span class="red-star">*</span>
				<input type="text" id="email-check-input" name="checkUserEmail" placeholder="인증번호를 입력하세요."/>
				<button><p>인증번호 확인</p></button>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			
			<div>
				<input type="checkbox" id="check-all"/>
	  			<label for="check-all">
	  				<span class="check-label-span">필수 및 선택 항목을 모두 포함하여 동의합니다.</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check-up14"/>
	  			<label for="check-up14">
	  				<span class="check-label-span">만 14세 이상입니다.</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check-service"/>
	  			<label for="check-service">
	  				<span class="check-label-span">[필수] 서비스 약관 동의</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check-need-private"/>
	  			<label for="check-need-private">
	  				<span class="check-label-span">[필수] 개인정보 수집 및 이용 동의</span>
	  			</label>
				<input name="agreement" class="check-label" type="checkbox" id="check-private"/>
	  			<label for="check-private">
	  				<span  class="check-label-span">[선택] 개인정보 수집 및 이용 동의</span>
	  			</label>
			</div>
			
			<div>
				<button id="join-button" type="button">회원가입</button>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript" src="../assets/js/join/join-main.js"></script>
</html>