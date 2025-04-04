<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
			<div id="map" style="width:100%;height:100%;"></div>
			
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec7072bec49713ff819fb34f956a5fc7"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);    
			</script>
		</div>
		
		<!-- 대학교 전시회 리스트 wrapper  -->
		<div id="container">
		<div id="university-list-wrapper">
			<div id="bar-border">
				<div id="filter-wrapper">
					<!-- 지역 필터링 드롭다운 -->
					<select id="region-filter" onclick="filterByRegion()">
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
				  	<div id="search-wrapper">
				  		<input type="text" id="search-input" placeholder="대학교를 검색하세요.">
				  		<img id="search-icon" src="../assets/images/exhibition/search.png" alt="돋보기" />
				  	</div>
				</div>
			</div>
		  	
		  	<div id="icon-wrapper">
			  	<img id="icon2" src="../assets/images/exhibition/notice.png" alt="아이콘" />
			  	<p id="notice">전시 상태를 클릭 시 홈페이지로 이동합니다.</p>
		  	</div>
		  	
			<!-- 전시회 리스트 -->
			<div id="exhibition-list">
				<c:forEach var="exhibition" items="${exhibitionList}">
				  <div id="list"
				       class="exhibition-item"
				       data-name="${exhibition.universityName}"
				       data-region="${exhibition.universityExhibitionLocation}"
				       data-status="${exhibition.universityExhibitionState}">
				
				    <div class="logo-wrapper">
				      <img class="university-logo" src="../${exhibition.universityLogoImgPath}${exhibition.universityLogoImgName}" />
				    </div>
				
				    <div id="info-wrapper">
				      <div class="university-name">
				        <h6>${exhibition.universityName}</h6>
				      </div>
				      <div class="exhibition-title">
				        <p>${exhibition.universityExhibitionTitle}</p>
				      </div>
				      <div class="exhibition-major">
				        <p>${exhibition.majorName}</p>
				      </div>
				      <div class="exhibition-date">
				        <p>${exhibition.universityExhibitionDate}</p>
				      </div>
				      <div class="exhibition-location">
				        <p>${exhibition.universityExhibitionLocation}</p>
				      </div>
				
				      <div id="button-wrapper">
				        <button class="status-button" onclick="location.href='${exhibition.universityHomepage}'">
				          ${exhibition.universityExhibitionState}
				        </button>
				        <button class="like-button">좋아요</button>
				      </div>
				    </div>
				  </div>  
				</c:forEach>
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
		<button type="button" id="inquiry-button" class="button inquiry">문의하기</button>
		<button type="button" id="register-button" class="button register">학교 등록 신청</button>
	</div>
	</div>


<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/exhibition/university-exhibition-main.js"></script>
</html>