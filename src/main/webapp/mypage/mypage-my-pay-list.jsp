<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-pay-list.css" />
<title>경매 및 구매 / 구매 내역</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">경매 및 구매 / 구매 내역</h2>
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
	            
	            <div id="item-wrapper">
		            <div class="photo-wrapper">
		            	<img alt="item1" class="item-photo" src="../assets/images/display/oMgMan.png">
		            </div>
	    	        <div id="info-wrapper">
    	        		<div class="info1">
	    	        		<span class="delivery-title">배송완료</span>
	    	        		<span class= "when">2/14(금)도착</span>
    	        		</div>
    	        		<div class="info2">
							<span class="item-title">주문 작품</span>
							<span class="item-name">당황한 동상</span>
    	        		</div>
    	        		<div class="info3">
    	        			<span class="pay-title">결제 수단</span>
    	        			<div class="card-wrapper">
	    	        			<span class="pay-cardtype">신용카드</span>
    		        			<span class="pay-cardname">코리아카드</span>
    	        			</div>
    	        		</div>
    	        		<div class="info4">
    	        			<span class="price-title">결제 금액</span>
    	        			<span class="price-cost">1,234,567 KRW</span>
    	        		</div>
	    	        </div>
	        	    <div class="buttons">
	        	    	<a href="../auction/auction-payment-success.jsp"> 
	        	    		<button class="button-1">주문 상세</button>
	        	    	</a>
	        	    	<a href="../mypage/mypage-my-pay-delivery-info.jsp"> 
	        	    		<button class="button-1">배송 조회</button>
	        	    	</a>
	        	    </div>
	            </div>
	            
	            <div id="item-wrapper">
		            <div class="photo-wrapper">
		            	<img alt="item1" class="item-photo" src="../assets/images/display/oMgMan.png">
		            </div>
	    	        <div id="info-wrapper">
    	        		<div class="info1">
	    	        		<span class="delivery-title">배송준비중</span>
	    	        		<span class= "when"></span>
    	        		</div>
    	        		<div class="info2">
							<span class="item-title">주문 작품</span>
							<span class="item-name">당황한 동상</span>
    	        		</div>
    	        		<div class="info3">
    	        			<span class="pay-title">결제 수단</span>
    	        			<div class="card-wrapper">
	    	        			<span class="pay-cardtype">신용카드</span>
    		        			<span class="pay-cardname">코리아카드</span>
    	        			</div>
    	        		</div>
    	        		<div class="info4">
    	        			<span class="price-title">결제 금액</span>
    	        			<span class="price-cost">1,234,567 KRW</span>
    	        		</div>
	    	        </div>
	        	    <div class="buttons">
	        	    	<a href="../auction/auction-payment-success.jsp"> 
	        	    		<button class="button-1">주문 상세</button>
	        	    	</a>
	        	    	<a href="../mypage/mypage-my-pay-delivery-info.jsp"> 
	        	    		<button class="button-1">배송 조회</button>
	        	    	</a>
	        	    </div>
	            </div>
	            
	            <div id="item-wrapper">
		            <div class="photo-wrapper">
		            	<img alt="item1" class="item-photo" src="../assets/images/display/oMgMan.png">
		            </div>
	    	        <div id="info-wrapper">
    	        		<div class="info1">
	    	        		<span class="delivery-title">배송중</span>
	    	        		<span class= "when"></span>
    	        		</div>
    	        		<div class="info2">
							<span class="item-title">주문 작품</span>
							<span class="item-name">당황한 동상</span>
    	        		</div>
    	        		<div class="info3">
    	        			<span class="pay-title">결제 수단</span>
    	        			<div class="card-wrapper">
	    	        			<span class="pay-cardtype">신용카드</span>
    		        			<span class="pay-cardname">코리아카드</span>
    	        			</div>
    	        		</div>
    	        		<div class="info4">
    	        			<span class="price-title">결제 금액</span>
    	        			<span class="price-cost">1,234,567 KRW</span>
    	        		</div>
	    	        </div>
	        	    <div class="buttons">
	        	    	<a href="../auction/auction-payment-success.jsp"> 
	        	    		<button class="button-1">주문 상세</button>
	        	    	</a>
	        	    	<a href="../mypage/mypage-my-pay-delivery-info.jsp"> 
	        	    		<button class="button-1">배송 조회</button>
	        	    	</a>
	        	    </div>
	            </div>
	            
	            
	            
	            


			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>