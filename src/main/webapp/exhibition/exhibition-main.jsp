<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/exhibition-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font-pretendard.css" />
<title>대학교 전시회 메인</title>
</head>
<body>
<div id="wrapper">
	<div id="title-wrapper">	
		<p>exhibition</p>	
	</div>
	
	<div id="category-wrapper">
		<span>그라데이션 전시회</span>
		<span>|</span>
		<span>대학교 전시회</span>
	</div>
	
	<div id="map-wrapper">
		<div>지도</div>
	</div>
	
	<!-- 대학 리스트 + 전시회 사진 -->
	<div>
		<div id="university-list">
			<div id="bar">
				<div id="bar-left">
					<span class="bar-menu">전체 지역</span>
					<span class="bar-menu">전시 상태</span>
					<span>My pick</span>
				</div>
				<div id="bar-right">
					<input type="text" placeholder="대학교를 검색하세요." />
				</div>
			</div>
		</div>
		
		<div id="img-wrapper">
			<img src="../assets/images/exhibition/university-exhibition.jpg" alt="전시회 사진"/>
		</div>
	</div>
	
		
	<div id="button-wrapper">
		<button class="button inquiry">문의하기</button>
		<button class="button register">학교 등록 신청</button>
	</div>
	
	
	
</div>

</body>
</html>