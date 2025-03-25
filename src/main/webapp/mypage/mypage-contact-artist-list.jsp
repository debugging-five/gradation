<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-contact-artist-list.css" />
<title>경매 및 구매/ 경매 내역</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">내 활동 / 작가와 연락</h2>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-artist">작가명</h5>
					<h5 id="menu-title">제목</h5>
					<h5 id="menu-date">작성일</h5>
				</div>
				
				<!-- 작가와 연락 리스트  -->
				<div id="items">
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">1</h4>
						</div>
						<div class="item-title-wrap">
							<p class="item-kind">홍길동</p>
						</div>
						<div class="item-comment-wrap">
							<p class="item-title">작품이 마음에 듭니다. 후원요청합니다.</p>
						</div>
						<div class="item-date-wrap">
							<p class="item-date">25. 01. 25</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">2</h4>
						</div>
						<div class="item-title-wrap">
							<p class="item-kind">홍길동</p>
						</div>
						<div class="item-comment-wrap">
							<p class="item-title">선명도를 조금만 올려주셨으면 좋겠습니다. 바람이...</p>
						</div>
						<div class="item-date-wrap">
							<p class="item-date">25. 01. 25</p>
						</div>
					</div>
				</div>
				<form action="mypage-contact-artist-write.mypage" method="post">
					<button id="add-faq">등록</button>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>