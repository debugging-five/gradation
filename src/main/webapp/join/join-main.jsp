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
	<h2 id="join-head">회원가입</h2>
	
	<form action="join-ok" method="post">
		<div>
			<span class="user-text">아이디</span>
			<span class="red-star">*</span>
			<input type="text" placeholder="6~20자 영문, 숫자"/>
			<button><p>중복체크</p></button>
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
			<input type="checkbox" placeholder="dkfkdkfkdkfk">
			<input type="checkbox" placeholder="dkfkdkfkdkfk">
			<input type="checkbox" placeholder="dkfkdkfkdkfk">
			<input type="checkbox" placeholder="dkfkdkfkdkfk">
			<input type="checkbox" placeholder="dkfkdkfkdkfk">
		</div>
	</form>
	
</body>
</html>