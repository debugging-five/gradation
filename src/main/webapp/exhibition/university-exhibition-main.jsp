<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/university-exhibition-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"> -->
<title>대학교 전시회 메인</title>
</head>
<script src="https://kit.fontawesome.com/1e1279f541.js" crossorigin="anonymous"></script>
<body>

<form action="" method="post">
<%@ include file="../layout/header.jsp" %>

<div id="wrapper">
	<div id="title-wrapper">	
		<h2>exhibition</h2>	
	</div>
	
	<div id="category-wrapper">
		<p class="category">그라데이션 전시회</p>
		<p id="span">|</p>
		<p class="category">대학교 전시회</p>
	</div>
	
	<div id="map-wrapper">
		<div>지도</div>
	</div>
	
	<!-- 대학 리스트 + 전시회 사진 -->
	<div id="list-wrapper">
		<div id="university-list">
			<div id="bar">
				<div id="bar-left">
<!-- 					<span class="bar-menu">전체 지역</span> -->
					<div id="area-dropdown">
						<select id="area" name="area">
							<option value="area">전체 지역</option>
							<option value="area1">서울</option>
							<option value="area2">경기</option>
							<option value="area3">강원</option>
							<option value="area4">인천</option>
							<option value="area5">충남</option>
							<option value="area6">충북</option>
							<option value="area7">대전</option>
							<option value="area8">경북</option>
							<option value="area9">경남</option>
							<option value="area10">대구</option>
							<option value="area11">부산</option>
							<option value="area12">전북</option>
							<option value="area13">전남</option>
							<option value="area14">광주</option>
							<option value="area15">제주</option>
						</select>
					</div>

					<!-- <span class="bar-menu">전시 상태</span> -->
					<div id="state-dropdown">
						<select id="state" name="state">
							<option value="state">전시 상태</option>
							<option value="state1">예정 전시</option>
							<option value="state2">진행 전시</option>
						</select>
					</div>
					
					<div id="my-pick">
						<p>My pick</p>
					</div>
					
				</div>
				<div id="bar-right">
					<input type="text" placeholder="대학교를 검색하세요." />
<!-- 					<img src="../assets/images/exhibition/search.png" alt="돋보기" /> -->
				</div>
			</div>
			
			<div id="list-content">
				<div>
					<p>전시 상태를 클릭 시 홈페이지로 이동합니다.</p>
				</div>
			</div>
			
			<!-- 학교1 -->
			<div class="exhibition-info">
				<div id="university-logo1">
					<img class="logo-img" src="../assets/images/exhibition/university-1.png" alt="로고1" />
				</div>
				
				<div class="university-info">
					<div>
						<h6>강원대학교</h6>
					</div>
					
					<div>
						<p class="info1">제 8회 졸업전시회</p>
					</div>
					
					<div>
						<p class="info2 major">디자인학과</p>
					</div>
					
					<div>
						<p class="info2">2025/02/22 ~ 2025/02/28</p>
					</div>
					
					<div>
						<p class="info2">강원 삼척시 중앙로 346 강원대학교 조형관 1층</p>
					</div>
					
					<div id="button-wrapper">
						<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
						<div>
							<button type="button" class="button-like">좋아요<i class="fa-regular fa-heart fa-2xs"></i></button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 학교2 -->
			<div class="exhibition-info">
				<div id="university-logo2">
					<img class="logo-img" src="../assets/images/exhibition/university-2.png" alt="로고2" >
				</div>
				
				<div class="university-info">
					<div>
						<h6>이화여자대학교</h6>
					</div>
					
					<div>
						<p class="info1">제 14회 졸업전시회</p>
					</div>
					
					<div>
						<p class="info2 major">패션디자인전공</p>
					</div>
					
					<div>
						<p class="info2">2025/02/10 ~ 2025/02/15</p>
					</div>
					
					<div>
						<p class="info2">이화여자대학교 조형예술관 A동 2층 이화아트</p>
					</div>
					
					<div id="button-wrapper">
						<button type="button" onclick="location.href='http://artndesign.ewha.ac.kr/artewha/61/subview.do'"type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시중</button>
						<div>
							<button type="button" class="button-like">좋아요<i class="fa-regular fa-heart fa-2xs"></i></button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 학교3 -->
			<div class="exhibition-info">
				<div id="university-logo1">
					<img class="logo-img" src="../assets/images/exhibition/university-1.png" alt="로고1" />
				</div>
				
				<div class="university-info">
					<div>
						<h6>강원대학교</h6>
					</div>
					
					<div>
						<p class="info1">제 8회 졸업전시회</p>
					</div>
					
					<div>
						<p class="info2 major">디자인학과</p>
					</div>
					
					<div>
						<p class="info2">2025/02/22 ~ 2025/02/28</p>
					</div>
					
					<div>
						<p class="info2">강원 삼척시 중앙로 346 강원대학교 조형관 1층</p>
					</div>
					
					<div id="button-wrapper">
						<button type="button" onclick="location.href='https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B'" class="button-comming">전시예정</button>
						<div>
							<button type="button" class="button-like">좋아요<i class="fa-regular fa-heart fa-2xs"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 대학 전시회 이미지 -->
		<div id="display-none">
			<div id="img-background" >
				<div id="img-wrapper">
					<img src="../assets/images/exhibition/university-exhibition-1.jpg" alt="대학교 전시회1" />
				</div>
			</div>
		</div>
	</div>
	
		
	<div id="button-wrapper2">
		<button type="button" class="button inquiry">문의하기</button>
		<button type="button" class="button register">학교 등록 신청</button>
	</div>
	
	
	
</div>

<%@ include file="../layout/footer.jsp" %>
</form>

  <div id="map" style="width:500px;height:400px;">
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec7072bec49713ff819fb34f956a5fc7"></script>
  <script>
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(33.450701, 126.570667),
			// 처음 보일 때의 좌표
      level: 3
    };

    var map = new kakao.maps.Map(container, options);
  </script>
</div>
</body>
<script type="text/javascript" src="../assets/js/exhibition/university-exhibition-main.js"></script>
</html>