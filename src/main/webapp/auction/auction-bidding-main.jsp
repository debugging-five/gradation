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
	      <div id="img-wrapper">
            <img id="auction-img" src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg" alt="경매 작품"/>
	      </div>
	      
	      <!-- 경매 정보 -->
	      <div id="auction-info">
	         <!-- 경매 정보1 -->
	         <div id="auction-info1">
	            <h2 id="title">당황한 동상</h2>
	            <div class="artist">
	               <h3>작가명</h3>
	               <span id="span">|</span>
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
	            <div id="deadline-info">
	               <h5>마감일</h5>
	               <p>2025 . 01 . 21 . 8:00:00</p>
	            </div>
	            <div id="estimate-info">
	               <h5>추정가</h5>
	               <p>KRW 1,000,000 ~ 2,000,000</p>
	            </div>
	            <div id="start-info">
	               <h5>시작가</h5>
	               <p>KRW 500,000</p>
	            </div>
	         </div>
	         
	         <!-- 경매 정보3 -->
	         <div id="auction-info3">
	            <div id="deadline">
	               <h2>마감시간</h2>
	               <h2>4일 4시간 44분 44초</h2>
	            </div>
	            
	            <div id="price-wrapper">
		            <div id="current-price">
		               <h3>현재 입찰가</h3>
		               <h3>KRW 550,000</h3>
		            </div>
		            <div id="min-price">
		               <h3>최소 응찰가</h3>
		               <h3>KRW 560,000</h3>
		            </div>
	            </div>
	         </div>
	         
	         <form>
	         </form>
	         <div id="button-wrapper">
	            <button id="list-button">목록으로</button>
	            <button id="auto-bidding-button" onclick="openPopup1()">자동응찰</button>
	            <button id="bidding-button" onclick="openPopup2()">응찰</button>
	         </div>
	         
	         <!-- 자동 응찰 팝업-->
	        <div id="overlay1"></div>
   			<div id="popup-wrapper1">         
			    <%@ include file="./auction-auto-bidding-popup.jsp"%>
			</div>    
	      </div>
	         
	         <!-- 응찰 팝업 -->
			<div id="overlay2"></div>
			<div id="popup-wrapper2">         
			    <%@ include file="./auction-bidding-popup.jsp"%>
			</div>    
	      </div>
	   
	
	  <div id="auction-list">
	      <div id="auction-ing">
	         <div id="auction-ing-title">경매중인 작품</div>
	      </div>
	      <div id="art-wrapper">
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg" alt="리스트1"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg" alt="리스트2"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-furuit.jpeg" alt="리스트3"/>
	         </div>
	         <div class="art-list">
	            <img src="../assets/images/display/art/sculpture/img-sculpture-wow.jpeg" alt="리스트4"/>
	         </div>
	      </div>
	   </div>
   </div>
	
<%@ include file="../layout/footer.jsp" %>

</body>
<script type="text/javascript" src="../assets/js/auction/auction-bidding-main.js"></script>
</html>