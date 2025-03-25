<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/exhibition/our-exhibition-past.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
</head>
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>

	<input type="hidden" id="anPageName" name="page"
		value="our-exhibition-past-twenty-three" />
	<div class="container-center-horizontal">
		<div class="our-exhibition-past screen">
			<div class="page-header">
				<h1 class="main-title valign-text-middle suith1">exibition</h1>
				<div class="exhibition-name-bar group">
					<div class="current-exhibition-name pretendardh3">2023 아트스펙트럼</div>
				</div>
			</div>
			<div class="flex-row">
				<div class="left-image-column">
					<div class="exhibition-list-sidebar group">
						<div class="sidebar-title-box overlap">
							<div class="text-1 pretendardh5">지난 전시회</div>
						</div>
						<div class="sidebar-item-box overlap">
							<div class="sidebar-exhibition-title pretendardh7">2024 필립
								파레노: 보이스</div>
						</div>
						<div class="sidebar-item-box overlap">
							<div class="sidebar-exhibition-title pretendardh7">2023
								아트스펙트럼</div>
						</div>
						<div class="sidebar-item-box overlap">
							<div class="sidebar-exhibition-title pretendardh7">2022 공예
								지금</div>
						</div>
					</div>
					<div class="page-header-1 ">
						<img class="car-1 image"
							src="../assets/images/display/art/exhibition-past/img-past-car.jpeg"
							alt="car-1" /> <img class="car-1 image"
							src="../assets/images/display/art/exhibition-past/img-past-car-2.jpeg"
							alt="car-1" /> <img class="car-1 image"
							src="../assets/images/display/art/exhibition-past/img-past-car-3.jpeg"
							alt="car-1" /> <img class="car-1 image"
							src="../assets/images/display/art/exhibition-past/img-past-dear.jpeg"
							alt="adrianna-geo-1rBg5YSi00c-unsplash" />
					</div>
				</div>
				<div class="page-header-2 ">
					<img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-dear.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-4.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-5.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-6.jpeg"
						alt="car-1" />
				</div>
				<div class="page-header-3 ">
					<img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-7.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-8.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-3.jpeg"
						alt="car-1" /> <img class="car-1 image"
						src="../assets/images/display/art/exhibition-past/img-past-car-2.jpeg"
						alt="car-1" />
				</div>
			</div>

			<div class="pagination-bar suith4">
				<img class="pagination-arrow"
					src="../assets/images/display/art/left.png" alt="left" />
				<%
				int currentPage = (request.getAttribute("currentPage") != null) ? (int) request.getAttribute("currentPage") : 1;
				int totalPages = (request.getAttribute("totalPages") != null) ? (int) request.getAttribute("totalPages") : 1;

				for (int i = 1; i <= totalPages; i++) {
				%>
				<a href="our-exhibition-past-twenty-three.exhibition?page=<%=i%>"
					class="<%=(i == currentPage) ? "active" : ""%>"> <%=i%>
				</a>
				<%
				}
				%>
				<img class="pagination-arrow"
					src="../assets/images/display/art/right.png" alt="right" />
			</div>
		<p>현재 페이지: <%= request.getAttribute("currentPage") %></p>
		<p>전체 페이지 수: <%= request.getAttribute("totalPages") %></p>
	</div>
		</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>

