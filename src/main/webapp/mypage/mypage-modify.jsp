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
				<form action="mypage-modify-ok.mypage" method="post">
					<h2 id="title">회원정보</h2>
					<div id="my-infomation-container">
						<input type="hidden" id="mail-code" value="${sessionScope.mailCode}">
						<input type="hidden" id="user-prev-email" value="${sessionScope.loginUser}">
						<input type="hidden" name="userIdentification" value="${userIdentification}">
						<div class="user-info-first" id=""><h5>아이디</h5><span class="id-bar">|</span><span class="span-h7">${userIdentification}</span></div>
						<div class="user-info">
							<div class="user-info-input"><h5 class="user-info-title3">닉네임</h5><input type="text" id="user-nickname" name="userNickname" value="${userNickname}"></div>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title2">이름</h5><input type="text" id="user-name" name="userName" value="${userName}"></div>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title4">전화번호</h5><input type="text" id="user-phone" name="userPhone" value="${userPhone}"></div>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title3">이메일</h5><input type="text" id="user-email" name="userEmail" value="${userEmail}"></div>
							<button class="input-button" id="email-send-button" type="button">이메일 인증</button>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title4">인증번호</h5><input type="text" id="user-code" name="userCode" value="${userCode}"></div>
							<button class="input-button" id="code-check-button">인증번호 확인</button>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title2">주소</h5><input id="address" type="text" name="userAddress" value="${userAddress}" readonly/></div>
							<button class="input-button" onclick="execDaumPostcode()" type="button">주소 검색</button>
						</div>
						<div class="warning-area">
						</div>
						<div class="user-info" id="">
							<div class="user-info-input"><h5 class="user-info-title4">상세주소</h5><input type="text" id="user-detail-address" name="userDetailAddress" value="${userDetailAddress}"></div>
						</div>
						<div class="warning-area">
						</div>
					</div>
					<div class="button-wrapper">
						<button id="modify-button" type="button">저장</button>
						<button id="cancel-button" type="button">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="../assets/js/mypage/mypage-modify.js"></script>
</html>