<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-approved.css" />
<title>고객센터 / 고객 문의 목록</title>
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
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<div id="title-kind">
	               <form action="mypage-admin-form-not-approved.mypage" method="post">
	                  <button id="waiting">
	                     <h5>미승인</h5>
	                  </button>
	               </form>
	               <div id="completed">
	                  <h5>승인 완료</h5>
	               </div>
	            </div>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-title">제목</h5>
					<h5 id="menu-date">요청일</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">1</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">upcycling</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">업사이클 신청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">2</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">display</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">작품 전시 승인 요청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">3</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">exhibition</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">대학 승인 요청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">4</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">auction</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매 양식 승인 요청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">5</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">auction</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매 양식 승인 요청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>					
					<div class="item">
						<div class="item-number-wrap">
							<h6 class="item-number">6</h6>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">auction</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매 양식 승인 요청</p>
						</div>
						<div class="item-date-wrap">
							<h6 class="item-date">25.01.25</h6>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>