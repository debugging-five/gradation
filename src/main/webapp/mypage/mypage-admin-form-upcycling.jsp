<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-upcycling.css" />
<title>upcycling 신청 상세</title>
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
					<h6>upcycling</h6>
				</div>
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>업사이클링 신청</h3>
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
							<img src="../assets/images/mypage/mypage-admin-form-upcycling/upcycling.png" alt="업사이클링 이미지">
					    </div>
				    	<div class="right">
							<div class="info-box">
					      		<h5>학교명</h5>
					      		<p>가천대학교</p>
							</div>
							<div class="info-box">
								<h5>상세주소</h5>
								<p>경북 마이구미시 포도동 217 - 4</p>
							</div>
							<div class="info-box">
								<h5>이메일</h5>
								<p>mollang12@gmail.com</p>
							</div>
							<div class="info-box">
								<h5>연락처</h5>
								<p>010-2344-1234</p>
							</div>
							<div class="info-box">
								<h5>수거 신청일</h5>
								<p>2025.11.24</p>
							</div>
							<div class="info-box">
								<h5 id="size">크기 분류</h5>
								<ul class="size-list">
									<li>소형(50cm 이하): <span>3개</span></li>
									<li>중형(50cm ~ 100cm): <span>0개</span></li>
									<li>대형(100cm 이상): <span>0개</span></li>
								</ul>
							</div>
							<div class="info-box">
								<h5>주된 재질</h5>
								<p>플라스틱 & 아크릴</p>
							</div>
							<div id="special-note">
								<h5>특이 사항</h5>
								<p>처리하기가 굉장히 번거로울겁니다.처리하기가 굉장히 번거로울겁니다.처리하기가 굉장히 번거로울겁니다.처리하기가 굉장히 번거로울겁니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div id="button-wrap">
					<%@ include file="mypage-admin-form-dismissed-popup.jsp"%>
					<%@ include file="mypage-admin-form-approval-popup.jsp"%>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../layout/footer.jsp" %>
</body>
</html>















