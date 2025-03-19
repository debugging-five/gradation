<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-bidding-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 상세 페이지</title>
</head>
<body>

<%@ include file="../layout/header.jsp" %>

<div id="wrapper">
	<div id="title-wrapper">	
		<h2>auction</h2>	
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
					<h2 class="title">당황한 동상</h2>
				</div>
				<div class="artist">
					<h3>작가명</h3>
<!-- 					<span>|</span> -->
					<h3>홍길동</h3>
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
					<h5>마감일</h5>
					<h4>2025 . 01 . 21 . 8:00:00</h4>
				</div>
				<div class="info">
					<h5>추정가</h5>
					<h4>KRW 1,000,000 ~ 2,000,000</h4>
				</div>
				<div class="info">
					<h5>시작가</h5>
					<h4>KRW 500,000</h4>
				</div>
			</div>
			
			<!-- 경매 정보3 -->
			<div>
				<div class="info">
					<h2>마감시간</h2>
					<h2>4일 4시간 44분 44초</h2>
				</div>
				<div class="info2 first">
					<h3>현재 입찰가</h3>
					<h3>KRW 550,000</h3>
				</div>
				<div class="info2 second">
					<h3>최소 응찰가</h3>
					<h3>KRW 560,000</h3>
				</div>
			</div>
			
			<div id="button-wrapper">
				<button class="button list">
					<p>목록으로</p>
				</button>
				<button class="button auto-bidding">
					<p>자동응찰</p>
				</button>
				<button class="button bidding" >
					<p>응찰</p>
				</button>
			</div>
			
		</div>
	</div>
	



	<div id="auction-list">
		<div id="auction-ing">
			<p>경매중인 작품</p>
		</div>
			
		<div id="art-wrapper">
			<div class="art-list">
				<h6>경매 작품 사진</h6>
			</div>
			<div class="art-list">
				<h6>경매 작품 사진</h6>
			</div>
			<div class="art-list">
				<h6>경매 작품 사진</h6>
			</div>
			<div class="art-list">
				<h6>경매 작품 사진</h6>
			</div>
		</div>

	</div>
</div>
	<div id="popup-wrapper">			
		<%@ include file="./auction-bidding.jsp"%>
	</div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>