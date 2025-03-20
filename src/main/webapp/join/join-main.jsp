<%@page import="com.app.vo.UserVO"%>
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
			<div id="id-input-wrap">
				<span class="user-text">아이디</span>
				<span class="red-star">*</span>
				<input type="text" id="id-input" name="userId" placeholder="6~20자 영문, 숫자" value="${sessionScope.userId}" />
				<button type="button" id="id-check-button">중복체크</button>
			</div>
			<div><p id="already-use-id">이미 사용중인 아이디 입니다.</p></div>
			<div><p id="need-id-check">아이디 중복체크를 진행해주세요</p></div>
			<div><p id="need-id-validate">아이디는 6~20자 영문, 숫자로만 작성해 주세요</p></div>
			<div>
				<span class="user-text">비밀번호</span>
				<span class="red-star">*</span>
				<input type="password" id="pw-input" name="userPassword" placeholder="8~12자 영문, 숫자, 특수문자 " value="${sessionScope.userPassword}"/>
				<div><p class="warning-massage">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">비밀번호 확인</span>
				<span class="red-star">*</span>
				<input type="password" id="pw-check-input" name="checkUserPassword" placeholder="8~12자 영문, 숫자, 특수문자 " value="${sessionScope.checkUserPassword}" />
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">이름</span>
				<span class="red-star">*</span>
				<input type="text" id="name-input" name="userName" placeholder="이름을 입력하세요." value="${sessionScope.userName}" />
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">닉네임</span>
				<input type="text" id="nickname-input" name="userNickname" placeholder="닉네임을 입력하세요." value="${sessionScope.userNickname}" />
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">휴대폰</span>
				<span class="red-star">*</span>
				<input type="text" id="phone-input" name="userPhone" placeholder="휴대폰 번호를 입력하세요." value="${sessionScope.userPhone}" />
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			<div>
				<span class="user-text">이메일</span>
				<span class="red-star">*</span>
				<input type="text" id="email-input" name="userEmail" placeholder="이메일을 입력하세요." value="${sessionScope.userEmail}" />
				<button type="button" id="email-check-button">이메일 인증</button>
				<div><p class="need-write"> </p></div>
			</div>	
			<div>
				<span class="user-text">인증번호</span>
				<span class="red-star">*</span>
				<input type="text" id="email-check-input" name="checkUserEmail" placeholder="인증번호를 입력하세요." value="${sessionScope.checkUserEmail}" />
				<button type="button" id="email-check-button-verify">인증번호 확인</button>
				<div><p class="need-write">필수 항목입니다.</p></div>
			</div>	
			
			<div>
				<input type="checkbox" id="check-all"/>
	  			<label for="check-all">
	  				<span class="check-label-span">필수 및 선택 항목을 모두 포함하여 동의합니다.</span>
	  			</label>
				<input class="check-label" type="checkbox" id="check-up14"/>
	  			<label for="check-up14">
	  				<span class="check-label-span">[필수] 만 14세 이상입니다.</span>
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
		<!-- 회원가입 완료시 -->
		<div id="join-success">
			<div id="join-success-container">
				<div id="join-success-wrap">
					<button id="join-success-close-button" onclick="location.href='../login/login-main.user'">
						<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
					</button>
					<div>
						<img class="big-icon" alt="체크" src="../assets/images/login/red-check-circle.png">
						<p class="h5-text-black">회원 가입이 완료되었습니다</p>
					</div>				
					<div>
						<div>
							<a class="h5-text-black" href="../login/login-main.user">메인으로</a>
						</div>
						<div>
							<a class="h5-text-black" href="../login/login-main.user">로그인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
<script type="text/javascript" src="../assets/js/join/join-main.js"></script>
</html>