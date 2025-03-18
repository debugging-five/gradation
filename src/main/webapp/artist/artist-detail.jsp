<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/artist/artist-detail.css" />

<title>display-detail</title>
</head>
<body>

	<div class="container">
		<h1 class="mainText">artist</h1>
		<div class="wrap-content">
			<!-- 페이지 제목 -->
			
			<!-- 작가 정보 -->
			<div class="artist-wrap">
				<h2 class="name">홍길동</h2>
				<h6 class="university">00대학교</h6>
				<button class="contact-button">작가와 연락</button>
				<h4 class="instagram">@gildong_1234</h4>
				<h4 class="blog">blog</h4>
				<h4 class="youtube">@glidong_1234</h4>
			</div>	
		
			<div class="artist-info">
				<h3 id="introduce">작가 소개</h3>
				<p id="introduce-detail">1991년에 태어난 Ayaïro는 생생하고 향수를 불러일으키는 회화 스타일로 유명한 도쿄를 기반으로 활동하는 예술가입니다. 그녀의 작품은 그녀가 태어나고 자란 일본의 사토야마 풍경을 배경으로 어린 아이들을 상징적으로 묘사합니다. 자신의 뿌리에 대한 그녀의 열정은 순수하고 다채로운 풍경으로 묘사되며, 사랑스럽지만 다소 외로운 아이들이 노는 이미지와 혼합되어 시청자 자신의 성찰과 어린 시절 추억을 불러 일으킵니다. 1991년에 태어난 Ayaïro는 생생하고 향수를 불러일으키는 회화 스타일로 유명한 도쿄를 기반으로 활동하는 예술가입니다. 그녀의 작품은 그녀가 태어나고 자란 일본의 사토야마 풍경을 배경으로 어린 아이들을 상징적으로 묘사합니다. 자신의 뿌리에 대한 그녀의 열정은 순수하고 다채로운 풍경으로 묘사되며, 사랑스럽지만 다소 외로운 아이들이 노는 이미지와 혼합되어 시청자 자신의 성찰과 어린 시절 추억을 불러 일으킵니다. 1991년에 태어난 Ayaïro는 생생하고 향수를 불러일으키는 회화 스타일로 유명한 도쿄를 기반으로 활동하는 예술가입니다. 그녀의 작품은 그녀가 태어나고 자란 일본의 사토야마 풍경을 배경으로 어린 아이들을 상징적으로 묘사합니다. 자신의 뿌리에 대한 그녀의 열정은 순수하고 다채로운 풍경으로 묘사되며, 사랑스럽지만 다소 외로운 아이들이 노는 이미지와 혼합되어 시청자 자신의 성찰과 어린 시절 추억을 불러 일으킵니다. 991년에 태어난 Ayaïro는 생생하고 향수를 불러일으키는 회화 스타일로 유명한</p>
				<h3 id="field">작품 분야</h3>
				<p id="field-detail">회화</p>
				<h3 id="history">작가 이력</h3>
				<div class="history-details">
					<div>
						<p class="history-year">2024.08</p>
						<p class="history-info">경매: 그라데이션</p>
					</div>
					<div>
						<p class="history-year">2024.09</p>
						<p class="history-info">1회 개인전 (프랑스문화원)</p>
					</div>
					<div>
						<p class="history-year">2024.10</p>
						<p class="history-info">신융합콘텐츠 페스티벌</p>
					</div>
					<div>
						<p class="history-year">2024.11</p>
						<p class="history-info">디지털아트 세계로의 초대</p>
					</div>
				</div>
				<h3 id="art">작가 작품</h3>
				<div id="art-details">
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				    <div class="image-box"></div>
				</div>
			</div>
		</div>
		<div id="pagiNation">페이지네이션</div>
	</div>


	<%@ include file="../layout/footer.jsp" %>

</body>
</html>







