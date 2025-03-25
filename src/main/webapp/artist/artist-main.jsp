<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 메인</title>
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/artist/artist-main.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	
	<div id="artist-main-container">
		<h1 class="page-title">auction</h1>
		<div class="tab-wrapper">
			<div class="tab-text">
				<a href="?category=korean">한국화</a>
			</div>
			<span>|</span>
			<div class="tab-text">
				<a href="?category=painting">회화</a>
			</div>
			<span>|</span>
			<div class="tab-text">
				<a href="?category=sculpture">조각</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=craft">공예</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=architecture">건축</a>
			</div>				
			<span>|</span>
			<div class="tab-text">
				<a href="?category=calligraphy">서예</a>
			</div>				
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp"%>
</body>
<script type="text/javascript" src="../assets/js/artist/artist-main.js"></script>
</html>