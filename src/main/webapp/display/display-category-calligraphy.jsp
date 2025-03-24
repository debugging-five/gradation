<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/display/display-main.css" />

</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page" value="display-main" />
	<div class="container-center-horizontal">
		<div class="display-page screen">
			<div class="column-wrapper">
				<h1 class="page-title">display</h1>
				<div class="tab-container">
					<div class="tab-wrapper">
						<div class="tab-labels">
							<div class="tab-text">전시중</div>
							<div class="tab-text-upcoming">전시예정</div>
						</div>
					</div>
				</div>
				<div class="category-container">
					<div class="category-wrapper">
						<div class="category-list">
							<div class="category-item ">
								<a href="display-category-korean.jsp">한국화</a>
							</div>
							<div class="category-item ">
								<a href="display-category-painting.jsp">회화</a>
							</div>
							<div class="category-item ">
								<a href="display-category-sculpture.jsp">조각</a>
							</div>
							<div class="category-item ">
								<a href="display-category-craft.jsp">공예</a>
							</div>
							<div class="category-item ">
								<a href="display-category-architecture.jsp">건축</a>
							</div>
							<div class="category-item ">
								<a href="display-category-calligraphy.jsp">서예</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row-upload-options">
					<div class="upload-label">작품 업로드</div>
					<div class="upload-icon-wrapper">
						<a href="display-form.jsp"><img class="upload-icon"
							src="../assets/images/display/art/upload.png" alt="icon" /></a>
					</div>
					<div class="sort-options">
						<div class="sort-select">
							<div class="sort-label">등록순</div>
							<img class="sort-icon"
								src="../assets/images/display/art/sort.png" alt="sort" />
						</div>
					</div>
				</div>
			</div>
			<div class="row-main">
				<div class="row-gallery">
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-13.jpeg"
							alt="our-team" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-4.jpeg"
							alt="gradation-6" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-8.jpeg"
							alt="gradation-7" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-3.jpeg"
							alt="gradation-2" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-1.jpeg"
							alt="tiger-and-waterfall" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-6.jpeg"
							alt="korean-cat-4" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-11.jpeg"
							alt="meditation-house-3" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-1.jpeg"
							alt="hanok-2" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-14.jpeg"
							alt="object-cat" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-15.jpeg"
							alt="cat-2" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-7.jpeg"
							alt="catwatercolor-person" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-17.jpeg"
							alt="oh" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-18.jpeg"
							alt="whale" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-19.jpeg"
							alt="old-man-in-cafe" /> <img class="gallery-image"
							src="../assets/images/display/art/calligraphy/img-calligraphy-2.jpeg"
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
</html>
