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
						<a id="display-"href="?display=bidding&category=korean&page=1">경매중</a>
					</div>
					<span>|</span>
					<div class="tab-text">
						<a id="display-"href="?display=comming&category=korean&page=1">경매예정</a>
					</div>
					<span>|</span>
					<div class="tab-text">
						<a id="display-"href="?display=complete&category=korean&page=1">경매완료</a>
					</div>				
				</div>
				<div class="category-list">
					<div class="category-item">
						<a href="?display=${display}&category=korean&page=1">한국화</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="?display=${display}&category=painting&page=1">회화</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="?display=${display}&category=sculpture&page=1">조각</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="?display=${display}&category=craft&page=1">공예</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="?display=${display}&category=architecture&page=1">건축</a>
					</div>
					<span>|</span>
					<div class="category-item">
						<a href="?display=${display}&category=calligraphy&page=1">서예</a>
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
			<div class="auction-main">
				
					
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