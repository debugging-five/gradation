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
	href="../assets/css/display/display-main-ing.css" />

</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page"
		value="display-category-craft" />
	<div class="container-center-horizontal">
		<div class="display-page screen">
			<div class="column-wrapper">
				<h1 class="page-title">display</h1>
				<div class="tab-container">
					<div class="tab-wrapper">
						<div class="tab-labels">
							<div class="tab-text">
								<a href="../display/display-main-ing.display">전시중</a>
							</div>
							<div class="tab-text-upcoming">
								<a href="../display/display-main-comming-soon.display">전시예정</a>
							</div>
						</div>
					</div>
				</div>
				<div class="category-container">
					<div class="category-wrapper">
						<div class="category-list">
							<div class="category-item ">
								<a href="../display/display-category-korean.display">한국화</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-painting.display">회화</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-sculpture.display">조각</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-craft.display">공예</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-architecture.display">건축</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-calligraphy.display">서예</a>
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
							src="../assets/images/display/art/craft/img-craft-consol-log.jpeg"
							alt="consol-log" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-paper-art-2.jpeg"
							alt="paper-art-2" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-box.jpeg"
							alt="pearl-box" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-cat.jpeg"
							alt="pearl-cat" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-teapot.jpeg"
							alt="teapot" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-incense.jpeg"
							alt="incense" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-paper-art-3.jpeg"
							alt="paper-art-3" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-box-2.jpeg"
							alt="pearl-box-2" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-cat-2.jpeg"
							alt="pearl-cat-2" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-teapot-2.jpeg"
							alt="teapot-2" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-paper-art.jpeg"
							alt="paper-art" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-paper-art-4.jpeg"
							alt="paper-art-4" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-box-3.jpeg"
							alt="pearl-box-3" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-pearl-cat-3.jpeg"
							alt="pearl-cat-3" /> <img class="gallery-image"
							src="../assets/images/display/art/craft/img-craft-teapot-3.jpeg"
							alt="teapot-3" />
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
	<script>
  function toggleSortDropdown() {
    const dropdown = document.getElementById("sortDropdown");
    dropdown.style.display = dropdown.style.display === "flex" ? "none" : "flex";
  }

  function sortGallery(type) {
    const columns = document.querySelectorAll(".gallery-column");

    columns.forEach(column => {
      const images = Array.from(column.querySelectorAll(".gallery-image"));

      images.sort((a, b) => {
        if (type === "name-asc") {
          return a.alt.localeCompare(b.alt);
        } else if (type === "name-desc") {
          return b.alt.localeCompare(a.alt);
        } else if (type === "date") {
          const dateA = a.dataset.date || "2000-01-01";
          const dateB = b.dataset.date || "2000-01-01";
          return new Date(dateA) - new Date(dateB);
        }
      });

      images.forEach(img => column.appendChild(img));
    });

    // 정렬 후 드롭다운 닫기
    document.getElementById("sortDropdown").style.display = "none";
  }

  // 외부 클릭 시 드롭다운 닫기
  document.addEventListener("click", function (e) {
    const dropdown = document.getElementById("sortDropdown");
    const sortIcon = document.querySelector(".sort-icon");

    if (!dropdown.contains(e.target) && e.target !== sortIcon) {
      dropdown.style.display = "none";
    }
  });
</script>

</body>
</html>
