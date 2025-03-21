<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-category.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>마이페이지 카테고리</title>
</head>
<body>
<div id="wrapper">
	<div id="category-bar">
	
		<!-- 프로필 사진 + 유저 이름 -->
		<div id="profile-wrapper">
			<div>
				<div id="profile-img">
					<div>프로필 사진</div>
				</div>				

				<div id="profile-update">
				<input type="file" id="file-input" accept="image/*" />
					<img id="update-icon" src="../assets/images/mypage/profile-update.png" alt="프로필 사진 변경"/>
				</div> 
				
			</div>
			<div id="user-name">
				<h3>홍길동</h3>
			</div>
		</div>
		
		<div id="category-wrapper">
			<!-- 내 정보 -->
			<div class="menu">
				<h5>내 정보</h5>
				<p>개인 정보 수정</p>
				<p>내 작가 페이지 수정</p>
				<p>비밀번호 변경</p>
			</div>

			<!-- 내 결제 내역 -->
			<div class="menu">
				<h5>내 결제 내역</h5>
				<p>내 경매 내역</p>
				<p>내 결제 내역</p>
			</div>
			
			<!-- 내 쪽지 및 문의 -->
			<div class="menu">
				<h5>내 쪽지 및 문의</h5>
				<p>내 쪽지</p>
				<p>내 문의</p>
			</div>
			
			<div class="menu">
				<p id="withdrawal">회원 탈퇴</p>
			</div>
			
			<div class="menu">
				<h5>관리자 페이지</h5>
				<p>자주 묻는 질문</p>
				<p>1:1 문의</p>
				<p>양식 관리</p>
				<p>회원 문의</p>
			</div>
			
		</div>
	
	</div>
</div>

</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-category.js"></script>
</html>