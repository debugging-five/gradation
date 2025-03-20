<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/exhibition/exhibition-main.css" />
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
		<span>그라데이션 전시회</span>
		<span>|</span>
		<span>대학교 전시회</span>
	</div>
	
	<div id="map-wrapper">
		<div>지도</div>
	</div>
	
	<!-- 대학 리스트 + 전시회 사진 -->
	<div id="list-wrapper">
		<div id="university-list">
			<div id="bar">
				<div id="bar-left">
					<span class="bar-menu">전체 지역</span>
					
					
					<form>
						<select id="area" name="area">
							<option value="">전체 지역</option>
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
					</form>
					
					<span class="bar-menu">전시 상태</span>
					<span>My pick</span>
				</div>
				<div id="bar-right">
					<input type="text" placeholder="대학교를 검색하세요." />
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
					<div>대학교 로고</div>
				</div>
				
				<div class="university-info">
					<div>
						<h6>강원대학교</h6>
					</div>
					
					<div>
						<p class="info1">제 8회 졸업전시회</p>
					</div>
					
					<div>
						<p class="info2">디자인학과</p>
					</div>
					
					<div>
						<p class="info2">2025/02/22 ~ 2025/02/28</p>
					</div>
					
					<div>
						<p class="info2">강원 삼척시 중앙로 346 강원대학교 조형관 1층</p>
					</div>
					
					<div id="button-wrapper">
						<button class="button-comming">전시예정</button>
						<div>
							<button class="button-like">좋아요<i class="fa-regular fa-heart fa-2xs"></i></button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 학교2 -->
			<div class="exhibition-info">
				<div id="university-logo2">
					<div>대학교 로고</div>
				</div>
				
				<div class="university-info">
					<div>
						<h6>이화여자대학교</h6>
					</div>
					
					<div>
						<p class="info1">제 14회 졸업전시회</p>
					</div>
					
					<div>
						<p class="info2">패션디자인전공</p>
					</div>
					
					<div>
						<p class="info2">2025/02/10 ~ 2025/02/15</p>
					</div>
					
					<div>
						<p class="info2">이화여자대학교 조형예술관 A동 2층 이화아트</p>
					</div>
					
					<div id="button-wrapper">
						<button class="button-comming">전시중</button>
						<div>
							<button class="button-like">좋아요<i class="fa-regular fa-heart fa-2xs"></i></button>
						</div>
					</div>
				</div>
			</div>
	
			
		</div>
		
		<div id="img-background">
			<div >
				<div>전시회 사진</div>
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

</body>
<script type="text/javascript" src="../assets/js/exhibition/exhibition-main.js" />
</html>