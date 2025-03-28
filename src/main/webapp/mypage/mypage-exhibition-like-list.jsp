<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-exhibition-like-list.css" />
<title>내 활동 / 작가와 연락</title>
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
				<h2 id="title">좋아요 / 전시회 좋아요</h2>
				
				<div id="like-type">
					<form action="mypage-art-like-list.mypage" method="post">
						<button id="like-art">
							<h5>작품 좋아요</h5>
						</button>
					</form>
					<div id="like-exhibition">
						<h5>전시회 좋아요</h5>
					</div>
				</div>
				
				<div id="list-wrapper">
					<div class="exhibition-list">
						<!-- 학교1 -->
						<div class="exhibition-info">
							<div class="university-logo1">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-1.png" alt="로고1" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>강원대학교(춘천캠퍼스)</h5>
								</div>
								
								<div>
									<p class="info1">제 8회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">디자인학과</p>
								</div>
								
								<div>
									<p class="info2">25/02/22 ~ 25/02/28</p>
								</div>
								
								<div>
									<p class="info2">강원 삼척시 중앙로 346 1...</p>
								</div>
								
								<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
							</div>
						</div>
						<!-- 학교2 -->
						<div class="exhibition-info">
							<div class="university-logo2">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-2.png" alt="로고2" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>이화여자대학교</h5>
								</div>
								
								<div>
									<p class="info1">제 14회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">패션디자인전공</p>
								</div>
								
								<div>
									<p class="info2">25/02/10 ~ 25/02/15</p>
								</div>
								
								<div>
									<p class="info2">이화여자대학교 조형예 A...</p>
								</div>
								
								<button type="button" onclick="location.href='http://artndesign.ewha.ac.kr/artewha/61/subview.do'" class="button-comming">전시 중</button>
							</div>
						</div>
						<!-- 학교3 -->
						<div class="exhibition-info">
							<div class="university-logo1">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-1.png" alt="로고1" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>강원대학교(춘천캠퍼스)</h5>
								</div>
								
								<div>
									<p class="info1">제 8회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">디자인학과</p>
								</div>
								
								<div>
									<p class="info2">25/02/22 ~ 25/02/28</p>
								</div>
								
								<div>
									<p class="info2">강원 삼척시 중앙로 346 1...</p>
								</div>
								
								<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
							</div>
						</div>
						<!-- 학교4 -->
						<div class="exhibition-info">
							<div class="university-logo2">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-2.png" alt="로고2" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>이화여자대학교</h5>
								</div>
								
								<div>
									<p class="info1">제 14회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">패션디자인전공</p>
								</div>
								
								<div>
									<p class="info2">25/02/10 ~ 25/02/15</p>
								</div>
								
								<div>
									<p class="info2">이화여자대학교 조형예 A....</p>
								</div>
								
								<button type="button" onclick="location.href='http://artndesign.ewha.ac.kr/artewha/61/subview.do'" class="button-comming">전시 중</button>
							</div>
						</div>
					</div>
					
					
					<div class="exhibition-list">
						<!-- 학교1 -->
						<div class="exhibition-info">
							<div class="university-logo1">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-1.png" alt="로고1" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>강원대학교(춘천캠퍼스)</h5>
								</div>
								
								<div>
									<p class="info1">제 8회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">디자인학과</p>
								</div>
								
								<div>
									<p class="info2">25/02/22 ~ 25/02/28</p>
								</div>
								
								<div>
									<p class="info2">강원 삼척시 중앙로 346 1...</p>
								</div>
								
								<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
							</div>
						</div>
						<!-- 학교2 -->
						<div class="exhibition-info">
							<div class="university-logo2">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-2.png" alt="로고2" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>이화여자대학교</h5>
								</div>
								
								<div>
									<p class="info1">제 14회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">패션디자인전공</p>
								</div>
								
								<div>
									<p class="info2">25/02/10 ~ 25/02/15</p>
								</div>
								
								<div>
									<p class="info2">이화여자대학교 조형예 A...</p>
								</div>
								
								<button type="button" onclick="location.href='http://artndesign.ewha.ac.kr/artewha/61/subview.do'" class="button-comming">전시 중</button>
							</div>
						</div>
						<!-- 학교3 -->
						<div class="exhibition-info">
							<div class="university-logo1">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-1.png" alt="로고1" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>강원대학교(춘천캠퍼스)</h5>
								</div>
								
								<div>
									<p class="info1">제 8회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">디자인학과</p>
								</div>
								
								<div>
									<p class="info2">25/02/22 ~ 25/02/28</p>
								</div>
								
								<div>
									<p class="info2">강원 삼척시 중앙로 346 1...</p>
								</div>
								
								<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
							</div>
						</div>
						<!-- 학교4 -->
						<div class="exhibition-info">
							<div class="university-logo2">
								<img class="logo-img" src="../assets/images/exhibition/university-logo-2.png" alt="로고2" />
							</div>
							
							<div class="university-info">
								<div>
									<h5>이화여자대학교</h5>
								</div>
								
								<div>
									<p class="info1">제 14회 졸업전시회</p>
								</div>
								
								<div>
									<p class="info2 major">패션디자인전공</p>
								</div>
								
								<div>
									<p class="info2">25/02/10 ~ 25/02/15</p>
								</div>
								
								<div>
									<p class="info2">이화여자대학교 조형예 A....</p>
								</div>
								
								<button type="button" onclick="location.href='http://artndesign.ewha.ac.kr/artewha/61/subview.do'" class="button-comming">전시 중</button>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-exhibition-like-list.js"></script>
</html>