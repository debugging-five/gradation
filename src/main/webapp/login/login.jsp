<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div>
		<h2 id="login">로그인</h2>
	</div>
	<div>
		<form action="login-ok" method="post">
			<label>
				<span>아이디</span><input type="text" name="id" placeholder="아이디를 입력하세요." />
			</label>
				<p id="id-result"></p>
			<label>
				<span>비밀번호</span><input type="password" name="password" placeholder="비밀번호를 입력하세요." />
			</label>
				<p id="pw-result"></p>
			<button type="button"><span>로그인</span></button>
		</form>
	</div>	
</body>
</html>