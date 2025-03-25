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
		value="display-category-architecture" />
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
							src="../assets/images/display/art/architecture/img-architecture-coastal-cliff.jpeg"
							alt="cliff" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-floating-box.jpeg"
							alt="floating-box" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-glass-dome.jpeg"
							alt="glass-dome" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-hanok-2.jpeg"
							alt="hanok-2" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-luxury-cat.jpeg"
							alt="luxury-cat" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-coastal-cliff-2.jpeg"
							alt="cliff-2" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-floating-box-2.jpeg"
							alt="floating-box-2" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-glass-dome-2.jpeg"
							alt="glass-dome-2" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-hanok-3.jpeg"
							alt="hanok-3" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-luxury-cat-2.jpeg"
							alt="luxury-cat-2" />
					</div>
					<div class="gallery-column">
						<img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-coastal-cliff-3.jpeg"
							alt="cliff-3" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-floating-box-3.jpeg"
							alt="floating-box-3" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-glass-dome-3.jpeg"
							alt="glass-dome-3" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-hanok-4.jpeg"
							alt="hanok-4" /> <img class="gallery-image"
							src="../assets/images/display/art/architecture/img-architecture-luxury-cat-3.jpeg"
							alt="luxury-cat-3" />
					</div>
				</div>
			</div>
			<div class="pagination-bar suith4">
				<img class="pagination-icon"
					src="../assets/images/display/art/left.png" alt="left" />
				<%
				int currentPage = (request.getAttribute("currentPage") != null) ? (int) request.getAttribute("currentPage") : 1;
				int totalPages = (request.getAttribute("totalPages") != null) ? (int) request.getAttribute("totalPages") : 1;

				for (int i = 1; i <= totalPages; i++) {
				%>
				<a href="display-category-architecture.display?page=<%=i%>"
					class="<%=(i == currentPage) ? "active" : ""%>"> <%=i%>
				</a>
				<%
				}
				%>
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

    document.getElementById("sortDropdown").style.display = "none";
  }
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
