<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-bidding-popup.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<title>경매 팝업</title>
</head>
<body>

<div id="wrapper">

   <div id="pop-up">
      <!-- 팝업 상단바 x 아이콘 -->
      <div class="bar" onclick="closePopup()">
      	<img src="../assets/images/auction/close.png" alt="x" />
      </div>
      
      <div class="popup-info">
         <div class="popup-left">
            <div class="info title">
               <h4>당황한 동상</h4>
               <h4>경매중</h4>
            </div>
            <div class="info">
               <h4>마감시간</h4>
               <h4 class="text-red">4일 12시간 44분 44초</h4>
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
            <h3 class="text-red">560,000</h3>
         </div>
       </div>
       
	   <div class="popup-button">
       		<form action="auction-payment-main.jsp" method="post">
	          <div>
	             <button class="bidding">응찰하기</button>
	          </div>
	         </form>
	          <div>
	             <button class="back" onclick="closePopup()">돌아가기</button>
	          </div>
	       </div>

   </div>
   
   <div id="notice">
      <p>※ 작품 마감 30초 전에 응찰이 들어왔을 경우 해당작품 마감이 30초 연장됩니다. 한번 응찰된 작품은 응찰을 취소 할 수 없습니다. </p>
      <p>신중한 선택 부탁드립니다. 낙찰 후 결제기한 내에 결제하지 않으면 경매이용이 불가능해질 수 있습니다. </p>
   </div>
</div>
</div>


</body>
</html>