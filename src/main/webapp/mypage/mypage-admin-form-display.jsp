<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-display.css" />
<title>관리자 마이페이지 / 양식관리</title>
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
				<h2 id="title">관리자 마이페이지 / 양식관리</h2>
				
				<div id="notice-wrapper">
					<h6>display</h6>
					<div id="notice">
						<p>작가의 답변이 완료된 글은 수정이 불가합니다.</p>
					</div>
				</div>
				
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>작품 전시 승인 요청</h3>
						<p>25. 01. 15</p>
					</div>
				</div>
				
				<!-- 이름, 연락처, 이메일 div -->
				<div id="writer-info">
					<div id="name">
						<p>이름</p>
						<p>고길동</p>
					</div>
					<div id="phone">
						<p>연락처</p>
						<p>010-1234-5678</p>
					</div>
					<div id="email">
						<p>이메일</p>
						<p>gradation1234@gmail.com</p>
					</div>
				</div>
				
				<div id="content-wrapper">
					<div id="img-wrapper">
						<img id="display-img" src="../assets/images/display/art/korean/img-korean-cat.jpeg" alt="전시작품"/>
					</div>
					
					<div id="display-info">
						<div class="info1">
							<h5>작가명</h5>
							<p>홍길동</p>
						</div>
						<div class="info1">
							<h5>작품명</h5>
							<p>절망에 빠진 동상</p>
						</div>
						<div class="info2">
							<h5>작품 분류</h5>
							<p>조각</p>
						</div>
						<div class="info2">
							<h5>작품 재료</h5>
							<p>돌맹이에 조각칼</p>
						</div>
						<div class="info2">
							<h5>작품 규격</h5>
							<p>200 X 50 X 50</p>
						</div>
						<div class="info3">
							<h5>제작 완료일</h5>
							<p>2025. 03. 01</p>
						</div>
						<div class="info4">
							<h5>작품 설명</h5>
							<p>
							본 작품은 인터넷에서 가져왔지만 아마존사이트를 잘못 긁어온 
							박세현의 당황을 잘 담고있다. 
							
							아래는 작품실측방법에 관한 복사내용
							출처: 현대미술관연구 제 3집
							https://www.mmca.go.kr/study/study03/study03-65.html
							 
							작품의 실측방법과 기록
							작품을 어떠한 방법으로 실측하고 기록할 것인가에 대해 살펴보기에 앞서 실측담당 자가 미리 준비하여야 할 몇가지 실측도구들에 대해 간단히 설명하고자 한다.  가장 중요한 실측도구로서는 작품의 크기를 재기 위한 자(尺)를 들 수 있는데, 여러 가지 크기와 종류의 작품들을 편리하게 실측하기 위하여 '&#34881;' 자형 큰자, 투명한 삼각 자와 줄자,
							그리고 접는 자 등을 모두 갖추어 두는 것이 좋다. ... 
							</p>
						</div>
					</div>
				
				</div>
	
				
				<div id="button-wrapper">
					<%@ include file="mypage-admin-form-dismissed-popup.jsp"%>
					<%@ include file="mypage-admin-form-approval-popup.jsp"%>
				</div>
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>

</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-contact-artist-detail.js"></script>
</html>