<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-main.css" />
<title>경매 메인 진행중</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="container-center-horizontal">
		<div class="display-page screen">
			<div class="column-wrapper">
				<h1 class="page-title">auction</h1>
				<div class="tab-wrapper">
					<div class="tab-text">
						<a href="?display=bidding&category=korean&page=1">경매중</a>
					</div>
					<span>|</span>
					<div class="tab-text">
						<a href="?display=comming&category=korean&page=1">경매예정</a>
					</div>
					<span>|</span>
					<div class="tab-text">
						<a href="?display=complete&category=korean&page=1">경매완료</a>
					</div>				
				</div>
				<div class="category-list">
					<div class="category-item">
						<a href="">한국화</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="">회화</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="">조각</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="">공예</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="">건축</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="">서예</a>
					</div>
				</div>
				<div class="row-upload-options">
					<div class="sort-options">
						<div class="sort-select">
							<div class="sort-label">정렬</div>
							<img class="sort-icon"
								src="../assets/images/display/art/sort.png" alt="sort"
								onclick="toggleSortDropdown()" />
							<div class="sort-dropdown" id="sortDropdown">
								<div class="sort-option" onclick="sortGallery('date')">
									등록일순</div>
								<div class="sort-option" onclick="sortGallery('name-asc')">
									이름 오름차순</div>
								<div class="sort-option" onclick="sortGallery('name-desc')">
									이름 내림차순</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-main">
				<div class="row-gallery">
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-our-team.jpeg"
							alt="our-team" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-gradation-6.jpeg"
							alt="gradation-6" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-gradation-7.jpeg"
							alt="gradation-7" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-gradation-2.jpeg"
							alt="gradation-2" /> <img class="gallery-image"
							src="../assets/images/display/art/korean/img-korean-tiger-and-waterfall.jpeg"
							alt="tiger-and-waterfall" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/korean/img-korean-cat-4.jpeg"
							alt="korean-cat-4" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-meditation-house-3.jpeg"
							alt="meditation-house-3" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-hanok-2.jpeg"
							alt="hanok-2" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-object-cat.jpeg"
							alt="object-cat" /> <img class="gallery-image"
							src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg"
							alt="cat-2" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-catwatercolor-person.jpeg"
							alt="catwatercolor-person" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-oh.jpeg"
							alt="oh" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-whale.jpeg"
							alt="whale" /> <img class="gallery-image"
							src="../assets/images/display/art/painting/img-painting-old-man-in-cafe.jpeg"
							alt="old-man-in-cafe" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-meditation-house-3.jpeg"
							alt="meditation-house-3" />
					</div>
				</div>
			</div>
			<div class="pagination-bar suith4">
				<img class="pagination-icon"
					src="../assets/images/display/art/left.png" alt="left" />
				<div class="page-number">1</div>
				<div class="page-number">2</div>
				<div class="page-number">3</div>
				<div class="page-number">4</div>
				<div class="page-number">5</div>
				<img class="pagination-icon"
					src="../assets/images/display/art/right.png" alt="right" />
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
<script type="text/javascript" src="../assets/js/auction/auction-main.js"></script>
</html>