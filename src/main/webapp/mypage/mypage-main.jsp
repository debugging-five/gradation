<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-main.css" />
<title>내정보</title>
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
					<div class="user-info" id=""><h5 class="user-info-title3">닉네임</h5><span class="span-h7">홍길동입니다</span></div>
					<div class="user-info" id=""><h5 class="user-info-title2">이름</h5><span class="span-h7">홍길동</span></div>
					<div class="user-info" id=""><h5 class="user-info-title4">전화번호</h5><span class="span-h7">010 1234 5678</span></div>
					<div class="user-info" id=""><h5 class="user-info-title3">이메일</h5><span class="span-h7">gradation1234@gmail.com</span></div>
					<div class="user-info" id=""><h5 class="user-info-title2">주소</h5><span class="span-h7">미등록</span></div>
					<div class="user-info" id=""><h5 class="user-info-title4">상세주소</h5><span class="span-h7">미등록</span></div>
					<div class="user-info" id=""><h5 class="user-info-title2">학교</h5><span class="span-h7">미등록</span></div>
				</div>
				<div class="button-wrapper">
					<button id="modify-button" onclick="location.href='mypage-modify.mypage'">수정</button>
				</div>
				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
	
</body>
</html>