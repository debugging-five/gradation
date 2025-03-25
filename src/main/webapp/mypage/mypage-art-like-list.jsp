<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-art-like-list.css" />
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
				<h2 id="title">좋아요 / 작품 좋아요</h2>
				
				<div id="like-type">
					<div id="like-art">
						<h5>작품 좋아요</h5>
					</div>
					<form action="mypage-exhibition-like-list.mypage" method="post">
						<button id="like-exhibition">
							<h5>전시회 좋아요</h5>
						</button>
					</form>
				</div>
				
				<div class="art-list">
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/calligraphy/img-calligraphy-1.jpeg" alt="작품1"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/calligraphy/img-calligraphy-2.jpeg" alt="작품2"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/calligraphy/img-calligraphy-3.jpeg" alt="작품3"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
				</div>
				<div class="art-list">
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/craft/img-craft-teapot.jpeg" alt="작품4"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/craft/img-craft-teapot-2.jpeg" alt="작품5"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/craft/img-craft-teapot-3.jpeg" alt="작품6"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
				</div>
				<div class="art-list">
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/painting/img-painting-bold-shapes.jpeg" alt="작품7"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/painting/img-painting-ethereal-style.jpeg" alt="작품7"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
					<div>
						<div class="art">
							<div class="art-img">
								<img src="../assets/images/display/art/painting/img-painting-our-team.jpeg" alt="작품7"/>
							</div>
						</div>
							<h5 class="like-count">좋아요 99개</h5>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-art-like-list.js"></script>
</html>