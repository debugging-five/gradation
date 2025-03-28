<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/university-exhibition-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>대학교 전시회 메인</title>
</head>
<body>

	<%@ include file="../layout/header.jsp" %>

	<div id="wrapper">
	
		<div id="title-wrapper">	
			<h2>exhibition</h2>	
		</div>
		
		<div id="category-wrapper">
			<a href="gradation-exhibition-main.exhibition" class="a-category"><span class="category">그라데이션 전시회</span></a>
			<span id="span">|</span>
			<a href="university-exhibition-main.exhibition" class="a-category"><span class="second-category">대학교 전시회</span></a>
		</div>
		
		<!-- 카카오맵 api -->
		<div id="map-wrapper">
			<div id="map" style="width:500px;height:400px;"></div>
		</div>
		
		<!-- 대학교 전시회 리스트 wrapper  -->
		<div id="container">
		<div id="university-list-wrapper">
			<div id="bar-border">
				<div id="filter-wrapper">
					<!-- 지역 필터링 드롭다운 -->
					<select id="region-filter">
						<option value="">전체 지역</option>
						<option value="seoul">서울</option>
						<option value="gyeonggi">경기</option>
						<option value="gangwon">강원</option>
						<option value="incheon">인천</option>
						<option value="chungnam">충남</option>
						<option value="chungbuk">충북</option>
						<option value="daejeon">대전</option>
						<option value="gyeongbuk">경북</option>
						<option value="gyeongnam">경남</option>
						<option value="daegu">대구</option>
						<option value="busan">부산</option>
						<option value="jeonbuk">전북</option>
						<option value="jeonnam">전남</option>
						<option value="gwangju">광주</option>
						<option value="jeju">제주</option>
				  	</select>
				  	
				  	<!-- 전시 상태 필터링 드롭다운 -->
				  	<select id="status-filter">
					  	<option value="">전시 상태</option>
					  	<option value="upcoming">진행 예정</option>
					  	<option value="ongoing">진행 중</option>
				  	</select>
				  	
				  	<!-- 검색창 -->
				  	<div>
				  		<input type="text" id="search-input" placeholder="대학교를 검색하세요.">
				  	</div>
				</div>
			</div>
		  	
		  	<div id="icon-wrapper">
			  	<img id="icon2" src="../assets/images/exhibition/notice.png" alt="아이콘" />
			  	<p id="notice">전시 상태를 클릭 시 홈페이지로 이동합니다.</p>
		  	</div>
		  	
			<!-- 전시회 리스트 -->
			<div id="exhibition-list">
				<!-- 전시회 항목들이 여기에 표시됩니다. -->
			</div>
	</div>
		
			

		<!-- 대학 전시회 이미지 -->
		<div id="display-none">
			<div id="img-background" >
				<img id="chevron-left" src="../assets/images/exhibition/chevron-left.png" alt="왼쪽" />
				<div id="img-wrapper">
					<img id="main-image" src="../assets/images/exhibition/university-exhibition-1.png" alt="대학교 전시회1" />
				</div>
				<img id="chevron-right" src="../assets/images/exhibition/chevron-right.png" alt="오른쪽" />
			</div>
		</div>
	</div>

	
		
	<div id="button-wrapper2">
		<button type="button" class="button inquiry">문의하기</button>
		<button type="button" class="button register">학교 등록 신청</button>
	</div>
	
	</div>

<%@ include file="../layout/footer.jsp" %>

</body>
<script type="text/javascript" src="../assets/js/exhibition/university-exhibition-main.js"></script>
</html>