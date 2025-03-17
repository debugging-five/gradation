<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-bidding.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 팝업</title>
</head>
<body>



<div id="wrapper">

	<div id="pop-up">
		<!-- 팝업 상단바 x 아이콘 -->
		<div class="bar">
		</div>
		
		<div class="popup-info">
			<div class="popup-left">
				<div class="info title">
					<h4>당황한 동상</h4>
					<h4>경매중</h4>
				</div>
				<div class="info">
					<h4>마감시간</h4>
					<h4>4일 12시간 44분 44초</h4>
				</div>
				<div class="info">
					<h4>경쟁응찰자</h4>
					<h4>1명</h4>
				</div>
				
				<!-- 추정가, 시작가 -->
				<div class="info2">
					<h6>추정가<span>(KRW)</span></h6>
					<h6>1,000,000,000 ~ 2,000,000,000</h6>
				</div>
				<div class="info2">
					<h6>시작가<span>(KRW)</span></h6>
					<h6>500,000</h6>
				</div>
				
			</div>
	
			<div class="popup-right">
				<p>경매 작품 사진</p>
			</div>
		 </div>
		 
		 <!-- 응찰가 input -->
		 
		
		 <div id="popup-info2">
		 <div class="popup-left">
		 
		 	<input type="text" placeholder="응찰가를 입력해주세요."/>
		 

			<div class="info3 bid">
				<h4>현재 입찰가<span>(KRW)</span></h4>
				<h3>550,000</h3>
			</div>
			<div class="info3">
				<h4>최소 응찰가<span>(KRW)</span></h4>
				<h3>560,000</h3>
			</div>
		 </div>
		 
		 <div class="popup-right">
		 	<button class="bidding">
		 		<h3>응찰하기</h3>
		 	</button>
		 	<button class="back">돌아가기</button>
		 </div>
		

	</div>
	</div>


</div>


</body>
</html>