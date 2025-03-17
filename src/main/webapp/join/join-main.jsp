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
	
		<form action="join-ok" method="post">
			<div>
				<span class="user-text">아이디</span>
				<span class="red-star">*</span>
				<input type="text" name="userId" placeholder="6~20자 영문, 숫자"/>
				<button type="button" onclick="return idCheck()"><p>중복체크</p></button>
			</div>	
			<div>
				<span class="user-text">비밀번호</span>
				<span class="red-star">*</span>
				<input type="password" placeholder="8~12자 영문, 숫자, 특수문자 "/>
			</div>	
			<div>
				<span class="user-text">비밀번호 확인</span>
				<span class="red-star">*</span>
				<input type="password" placeholder="8~12자 영문, 숫자, 특수문자 "/>
			</div>	
			<div>
				<span class="user-text">이름</span>
				<span class="red-star">*</span>
				<input type="text" placeholder="이름을 입력하세요."/>
			</div>	
			<div>
				<span class="user-text">닉네임</span>
				<input type="text" placeholder="닉네임을 입력하세요."/>
			</div>	
			<div>
				<span class="user-text">휴대폰</span>
				<span class="red-star">*</span>
				<input type="text" placeholder="휴대폰 번호를 입력하세요."/>
			</div>	
			<div>
				<span class="user-text">이메일</span>
				<span class="red-star">*</span>
				<input type="text" placeholder="이메일을 입력하세요."/>
				<button><p>이메일 인증</p></button>
			</div>	
			<div>
				<span class="user-text">인증번호</span>
				<span class="red-star">*</span>
				<input type="text" placeholder="인증번호를 입력하세요."/>
				<button><p>인증번호 확인</p></button>
			</div>	
			
			<div>
				<input type="checkbox" id="check_all"/>
	  			<label for="check_all">
	  				<span class="check-label-span">필수 및 선택 항목을 모두 포함하여 동의합니다.</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check_up14"/>
	  			<label for="check_up14">
	  				<span class="check-label-span">만 14세 이상입니다.</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check_service"/>
	  			<label for="check_service">
	  				<span class="check-label-span">[필수] 서비스 약관 동의</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check_need_private"/>
	  			<label for="check_need_private">
	  				<span class="check-label-span">[필수] 개인정보 수집 및 이용 동의</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check_private"/>
	  			<label for="check_private">
	  				<span class="check-label-span">[선택] 개인정보 수집 및 이용 동의</span>
	  			</label>
			</div>
			
			<div>
				<button id="join-button" type="submit">회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>