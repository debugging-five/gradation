<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-payment-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 결제</title>
</head>
<body>

<div id="wrapper">

	<div id="title-wrapper">	
		<h2>auction</h2>	
	</div>

	<div id="payment-form">
		<div id="auction-img">
			<div class="img">
				<p>경매 작품 사진</p>
			</div>
		</div>
		
		<div id="write-form">
			<div id="success">
				<h3>낙찰을 축하드립니다!</h3>
			</div>
			
			<!-- 낙찰 금액 -->
			<div id="success-price">
				<div id="price">
					<h5>낙찰 금액<span>|</span></h5>
					<h5>999,999,999 KRW</h5>
				</div>
			</div>
			
			<!-- 이름 -->
			<div class="list">
				<span class="type">이름</span>
				<span class="star">*</span>
				<h5>홍길동</h5>
			</div>
			
			<!-- 주소 -->
			<div id="address-wrapper">
				<div class="list2">
					<span class="type">주소</span>
					<span class="star">*</span>
					<h5>주소(자동완성)</h5>
				</div>

					<button>주소 검색</button>

			</div>
			
			<!-- 상세 주소 -->
			<div>
				<h5>상세주소</h5>
				<input />
			</div>
			
		</div>
	</div>

</div>

</body>
</html>