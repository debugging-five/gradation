<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>auction-in-modify-form</title>
</head>
<body>

	<h1 id="title">auction</h1>
	<div>
		<h2>modify</h2>
		
		<!-- 이미지 -->
		<div id="image-wrap">
			<div id="image"></div>
		</div>
		<div id="auction-info-wrap">
			<div id="auction-info">
				<h5>경매 개시</h5>
				<span class="star">*</span>
				<h4>2025 . 01 . 21 . 8:00:00 </h4>
			</div>
			<div>
				<h5>추정가</h5>
				<h4>KRW 1,000,000 ~ 2,000,000</h4>
			</div>
			<div>
				<h5>시작가</h5>
				<span class="star">*</span>
				<h4>KRW 1,000,000</h4>
			</div>
			<div>
				<h5>작품제목</h5>
				<p>멋진 고양이</p>
				<h5>작가명 | 박세현</h5>
			</div>
			<div>
				<p>팔레트에 아크릴물감</p>
				<p>50 X 50</p>
				<p>2025</p>
			</div>
			<div>
				<button id="cancel">취소</button>
				<button id="modify">수정</button>
				<h3>경매가 개시되면 작품 수정 및 삭제가 불가능합니다.</h3>
			</div>
		</div>
	</div>
	
	


<%@ include file="../layout/footer.jsp" %>
</body>
</html>