<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-payment-success.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 결제완료 팝업</title>
</head>
<script src="https://kit.fontawesome.com/1e1279f541.js" crossorigin="anonymous"></script>
<body>

<div id="wrapper">

	<div id="pop-up">
		
		<div class="bar">
			<div id="icon-wrapper">
				<i class="fa-solid fa-xmark"></i>
			</div>
		</div>
		
		<div id="icon-wrapper2">
			<i class="fa-regular fa-circle-check fa-3x"></i>
		</div>
		
		<div id="payment-success">
			<h2>결제가 완료되었습니다</h2>
			<h3>감사합니다</h3>
		</div>
		
		<div id="info">
			<div id="info-left">
				<div>경매 작품 사진</div>
			</div>
			
			<div id="info-right">
			
				<div id="payment-info">
					<p>주문 작품</p>
					<p>당황한 동상</p>
				</div>
				
				<div id="payment-method">
					<p>결제수단</p>
					<p>신용카드</p>
				</div>
				
				<div id="payment-method2">
					<p>코리아카드</p>
				</div>
				
				<div id="payment-price">
					<p>결제 금액</p>
					<p>1,234,567</p>
				</div>
				
				<div id="payment-code">
					<p>주문번호</p>
					<p>202500000000</p>
				</div>
				
				<div id="payment-code">
					<p>주문일자</p>
					<p>2025-01-23 18:45:20</p>
				</div>
			</div>
		</div>
		<div id="button-wrapper">
			<button type="button" id="ok-button">확인</button>
		</div>
	</div>
</div>

</body>
<script type="text/javascript" src="../assets/js/auction/auction-payment-success.js"></script>
</html>