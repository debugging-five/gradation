<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-comments-list.css" />
<title>내 활동 / 작성한 댓글</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">내 활동 / 작성한 댓글</h2>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-title">작품명</h5>
					<h5 id="menu-comment">내 댓글</h5>
					<h5 id="menu-date">작성일</h5>
				</div>
				
				<!-- 작성한 댓글  -->
				<div id="items">
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">1</h4>
						</div>
						<div class="item-title-wrap">
							<p class="item-kind">절망에 빠진 동상</p>
						</div>
						<div class="item-comment-wrap">
							<p class="item-title">색감이 너무 좋아요 👍 </p>
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
							<p class="item-kind">절망에 빠진 동상</p>
						</div>
						<div class="item-comment-wrap">
							<p class="item-title">색감이 너무 좋아요 👍   색감이 너무 색감이 너무  ...</p>
						</div>
						<div class="item-date-wrap">
							<p class="item-date">25. 01. 25</p>
						</div>
					</div>
				</div>
				<form action="" method="post">
					<button id="add-faq">등록</button>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-comments-list.js"></script>
</html>