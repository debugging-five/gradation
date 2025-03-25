<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-exhibition.css" />
<title>대학교 전시회 신청 상세</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>

	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">관리자 마이페이지 / 양식관리</h2>
				<div id="content-kind">
					<h6>exhibition</h6>
				</div>
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>대학교 전시회 승인 요청</h3>
						<p>25. 01. 15</p>
					</div>
				</div>
				
				<!-- 이름, 연락처, 이메일 div -->
				<div id="writer-info">
					<div id="name">
						<p>이름</p>
						<p>고길동</p>
					</div>
					<div id="phone">
						<p>연락처</p>
						<p>010-1234-5678</p>
					</div>
					<div id="email">
						<p>이메일</p>
						<p>gradation1234@gmail.com</p>
					</div>
				</div>
				
				<div id="upcycling-info">
					<div class="info-container">
						<div class="left">
							<img src="../assets/images/mypage/mypage-admin-form-exhibition/작년도 졸업전시회사진(1).png" alt="업사이클링 이미지">
					    </div>
				    	<div class="right">
							<div class="info-box">
					      		<h5 class="info-name">학교명</h5>
					      		<p>강원대학교</p>
							</div>
							<div class="info-box">
								<h5 class="info-name">학과명</h5>
								<p>미술학과</p>
							</div>							
							<div class="info-box">
								<h5 class="info-name">상세주소</h5>
								<p>경북 마이구미시 포도동 217 - 4</p>
							</div>
							<div class="info-box">
								<h5 class="info-name">홈페이지</h5>
								<p>http://school.co.kr</p>
							</div>
							<div class="info-box">
								<h5 class="info-name">전시회 일정</h5>
								<p>25.12.15 ~ 25.12.18</p>
							</div>
							<div class="info-box">
								<h5 id="images">첨부파일</h5>
								<ul class="image-list">
									<li>작년도 졸업전시회사진(1).jpg</li>
									<li>작년도 졸업전시회사진(2).jpg</li>
									<li>작년도 졸업전시회사진(3).jpg</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="button-wrap">
					<button id="no-button">기각</button>
					<button id="ok-button">승인</button>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../layout/footer.jsp" %>
</body>
</html>















