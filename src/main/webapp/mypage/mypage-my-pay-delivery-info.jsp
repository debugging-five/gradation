<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-pay-delivery-info.css" />
<title>경매 및 구매 / 구매 내역</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">경매 및 구매 / 구매 내역</h2>
				<h2 id="title">배송조회</h2>
				
				<div id="seller-buyer-wrapper">					
					<div id="seller-wrapper">
						<div>
							<img alt="product-icon" class="product-icon" src="../assets/images/mypage/product.png">
						</div>
						<div>
							<div class="seller-gap1">
								<span>택배사</span>
								<span>한진택배</span>
							</div>
							<div class="seller-gap2">
								<span>전화번호</span>						
								<span>1688-2234</span>						
							</div>
							<div class="seller-gap3">
								<span>송장번호</span>						
								<span>458528916333</span>						
							</div>
						</div>
					</div>
					<div class="line"></div>
					<div id="buyer-wrapper">
						<div>
							<div class="buyer-gap1">
								<span>받는 사람</span>	
								<span>홍길동</span>				
							</div>
							<div id="address-wrapper" class="buyer-gap2">
								<span>받는 주소</span>
								<div class="address">
									<span>서울특별시 관악구 역삼로 119 -112</span>
									<span>스카이 캐슬 1004호</span>					
								</div>	
							</div>
							<div class="buyer-gap3">
								<span>배송 요청사항</span>
								<span>종 + 1234</span>
							</div>
						</div>
					</div>
				</div>
				
				<div id="delivery-info">
					<div id="red-box">
						<span>시간</span>
						<span>현재위치</span>
						<span>배송상태</span>
					</div>
					<div class="delivery-detail">
						<span>2월 14, 2025 12:05</span>
						<span class="address-now">역삼(집)</span>
						<span class="delivery-type">배달완료</span>
					</div>
					<div class="delivery-detail">
						<span>2월 14, 2025 12:05</span>
						<span class="address-now">남서울</span>
						<span class="delivery-type">배송중(출고)</span>
					</div>
					<div class="delivery-detail">
						<span>2월 14, 2025 12:05</span>
						<span class="address-now">남서울</span>
						<span class="delivery-type">배송중(입고)</span>
					</div>
					<div class="delivery-detail">
						<span class="time">2월 14, 2025 12:05</span>
						<span class="address-now">칠곡HUB</span>
						<span class="delivery-type">배송중(출고)</span>
					</div>
					<div class="delivery-detail">
						<span class="time">2월 14, 2025 12:05</span>
						<span class="address-now">칠곡HUB</span>
						<span class="delivery-type">배송중(입고)</span>
					</div>
					<div class="end-line"></div>
				</div>
				
				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>