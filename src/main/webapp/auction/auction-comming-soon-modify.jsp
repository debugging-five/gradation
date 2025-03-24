<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-comming-soon-modify.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 준비 중(수정 페이지)</title>
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
				<div id="title-wrapper2">
					<h2 class="title">귀여운 고양이</h2>
					<div>
						<button type="button" id="button-modify">수정하기</button>
						<button type="button">삭제하기</button>
					</div>
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
					<h5>경매개시</h5>
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
				<div class="info">
					<h2>경매시작</h2>
					<h2>4일 4시간 44분 44초</h2>
				</div>
				
				<div id="notice">
					<div class="comming-soon">
						<h2>준비중인 작품입니다.</h2>
					</div>
						<button type="button" id="button-list">목록으로</button>
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

<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/auction/auction-comming-soon-modify.js"></script>
</html>