<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-payment-main.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
<script src="/javascript/popup_2.js"></script>
<title>경매 결제</title>
</head>
<body>

<%@ include file="../layout/header.jsp" %>

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
				<div class="auto-list">
					<span class="type">이름</span>
					<span class="star">*</span>
					<h5>홍길동</h5>
				</div>
				
				<!-- 주소 -->
				<div class="auto-list">
					<span class="type">주소</span>
					<span class="star">*</span>
					<h5>주소(자동완성)</h5>
				</div>
	
				<!-- 상세 주소 -->
				<div id="list-wrapper"> 
					<div class="list">
						<span class="type">상세주소</span>
						<span class="star">*</span>
						<input id="address" type="text" placeholder="주소를 입력하세요." />
					</div>
						<p id="address-error" class="error-message">*필수 항목입니다</p>
				</div>
				
				<!-- 전화번호 -->
				<div id="list-wrapper">
					<div class="list">
						<span class="type">전화번호</span>
						<span class="star">*</span>
						<input id="phone" type="text" placeholder="전화번호를 입력하세요." />
					</div>
						<p id="phone-error">*필수 항목입니다</p>
				</div>
					
				<!-- 이메일 -->
				<div id="list-wrapper">
					<div class="list2">
						<span class="type">이메일</span>
						<span class="star">*</span>
						<input id="email" type="text" placeholder="이메일을 입력하세요." />
					</div>
						<p id="email-error">*필수 항목입니다</p>
				</div>
				
				<input class="check-label" type="checkbox" id="check-user"/>
			  		<label class="checkbox-label" for="check-user">
			  			<span class="check-label-span">주문자 본인이 맞습니까?</span>
			  		</label>
				<input class="check-label" type="checkbox" id="check-payment"/>
			  		<label class="checkbox-label" for="check-payment">
			  			<span class="check-label-span">결제에 동의하십니까?</span>
			  		</label>
			</div>
	
		</div>
				<button id="payment-button">결제하기</button>
				
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
<script type="text/javascript" src="../assets/js/auction/auction-payment-main.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>