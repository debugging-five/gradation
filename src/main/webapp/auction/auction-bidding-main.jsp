<!-- 경매 상세 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-bidding-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<div id="title-wrapper">	
		<p>auction</p>	
	</div>
	
	<div id="auction-detail">
	
		<!-- 경매 작품 사진-->
		<div id="auction-img">
			<div class="img">
				<p>경매 작품 사진</p>
			</div>
		</div>
		
		<!-- 경매 정보 -->
		<div id="auction-info">
			<!-- 경매 정보1 -->
			<div id="auction-info1">
				<div>
					<h1 class="title">당황한 동상</h1>
				</div>
				<div class="artist">
					<p>작가명</p>
					<span>|</span>
					<p>홍길동</p>
				</div>
				
				<div class="etc">
					<p>돌맹이에 조각칼</p>
					<p>200 X 50 X 50</p>
					<p>2025년</p>
				</div>
			</div>
			
			<!-- 경매 정보2 -->
			<div id="auction-info2">
				<div class="info">
					<p>마감일</p>
					<p>2025 . 01 . 21 . 8:00:00</p>
				</div>
				<div class="info">
					<p>추정가</p>
					<p>KRW 1,000,000 ~ 2,000,000</p>
				</div>
				<div class="info">
					<p>시작가</p>
					<p>KRW 500,000</p>
				</div>
			</div>
			
			<!-- 경매 정보3 -->
			<div>
				<div class="info">
					<h1>마감시간</h1>
					<h1>4일 4시간 44분 44초</h1>
				</div>
				<div class="info2 first">
					<p>현재 입찰가</p>
					<p>KRW 550,000</p>
				</div>
				<div class="info2 second">
					<p>최소 응찰가</p>
					<p>KRW 560,000</p>
				</div>
			</div>
			
			<div id="button-wrapper">
				<button class="button list">목록으로</button>
				<button class="button auto-bidding">자동응찰</button>
				<button class="button bidding">응찰</button>
			</div>
		
		</div>
	</div>
</div>

</body>
</html>