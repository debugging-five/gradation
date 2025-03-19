<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/auction/auction-in-modify-form.css" />
<title>auction-in-modify-form</title>
</head>
	<script src="https://kit.fontawesome.com/1e1279f541.js" crossorigin="anonymous"></script>
<body>

	<div id="container">
		<h1 id="title">auction</h1>
		<div id="modify">
			<h2>modify</h2>
		</div>
		<div id="content-wrap">
			
			<!-- 이미지 -->
			<div id="image-wrap">
				<div id="image">작품 사진</div>
			</div>
			
			<!-- 수정 정보 -->
			<div id="auction-info-wrap">
				<form>
					<div class="input-box-wrap">
						<div class="input-box">
					        <h5>경매 개시<span class="star">*</span></h5>
					        <h4 class="input-text">2025 . 01 . 21 . 8:00:00</h4>
						</div>
					</div>
					<div class="input-box-wrap">
						<div class="input-box">
					        <h5>추정가</h5>
					        <input class="input-text" type="text" placeholder="KRW 1,000,000 ~ 2,000,000" />			
						</div>
					</div>
					<div class="input-box-wrap">
						<div class="input-box">
					        <h5>시작가
					        	<span class="star">*</span>
					        </h5>
					        <input class="input-text" type="text" placeholder="KRW 1,000,000" />			
						</div>
					</div>
				</form>
				<div id="art-artname">
					<h5>작품제목</h5>
					<p>멋진 고양이</p>
				</div>
				<div id="art-arist">
					<h5>작가명 | 박세현</h5>
				</div>
				<div id="art-info">
					<p>팔레트에 아크릴물감</p>
					<p>50 X 50</p>
					<p>2025</p>
				</div>
				<div>
					<button id="cancel-button">취소</button>
					<button id="modify-button">수정</button>
					<h3>경매가 개시되면 작품 수정 및 삭제가 불가능합니다.</h3>
				</div>
			</div>
		</div>
	</div>
	
	


<%@ include file="../layout/footer.jsp" %>
</body>
</html>