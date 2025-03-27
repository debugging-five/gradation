<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-modify.css" />
<title>프로필 수정하기</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">회원정보</h2>
				<div id="my-infomation-container">
					<div class="user-info-first" id=""><h5>아이디</h5><span class="id-bar">|</span><span class="span-h7">gradation123</span></div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title3">닉네임</h5><input type="text" value="${userNickname}"></div>
						<button class="input-button">중복체크</button>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title2">이름</h5><input type="text" value="${userName}"></div>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title4">전화번호</h5><input type="text" value="${userPhone}"></div>
						<button class="input-button">휴대폰 인증</button>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title3">이메일</h5><input type="text" value="${userEmail}"></div>
						<button class="input-button">이메일 인증</button>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title4">인증번호</h5><input type="text" value="${userId}"></div>
						<button class="input-button">인증번호 확인</button>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title2">주소</h5><input id="address" type="text" value="${userAddress}" readonly/></div>
						<button class="input-button" onclick="execDaumPostcode()" >주소 검색</button>
					</div>
					<div class="warning-area">
					</div>
					<div class="user-info" id="">
						<div class="user-info-input"><h5 class="user-info-title4">상세주소</h5><input type="text" value="${userDetailAddress}"></div>
					</div>
					<div class="warning-area">
					</div>
				</div>
				<div class="button-wrapper">
					<button id="modify-button" type="button">저장</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="../assets/js/mypage/mypage-modify.js"></script>
</html>