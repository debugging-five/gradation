<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-auction-list.css" />
<title>경매 및 구매 / 경매 내역</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">경매 및 구매 / 경매 내역</h2>
				<div id="title-kind">
	               <form action="" method="post">
	                  <button id="auctioned">
	                     <h5>경매 내역</h5>
	                  </button>
	               </form>
	               <div id="payed">
	                  <h5>구매 내역</h5>
	               </div>
	            </div>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-auction">경매상태</h5>
					<h5 id="menu-title">상품명</h5>
					<h5 id="menu-date">내 입찰가</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">1</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">건축</p>
						</div>
						<div class="item-auction-wrap">
							<p class="item-auction">패찰</p>
						</div>
						<div class="item-title-wrap">
							<a href="../auction/auction-payment-main.jsp">
								<p class="item-title">빌라 모형</p>
							</a>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">20,000,000</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">2</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">조각</p>
						</div>
						<div class="item-auction-wrap">
							<p class="item-auction">낙찰</p>
						</div>
						<div class="item-title-wrap">
							<a href="../auction/auction-payment-main.jsp">
								<p class="item-title">조각난 조각상</p>
							</a>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">50,000</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">3</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">한국화</p>
						</div>
						<div class="item-auction-wrap">
							<p class="item-auction">경매중</p>
						</div>
						<div class="item-title-wrap">
							<a href="../auction/auction-payment-main.jsp">
								<p class="item-title">한국에 있는 한국화</p>
							</a>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">200,000</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>