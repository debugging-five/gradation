<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-register.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<div id="kind-wrap">
					<div class="name">
						<h5>구분<span class="star">*</span></h5>
					</div>
				    <div id="kind">
				        <input type="checkbox" id="art">
				        <label for="art"><span>작품 전시</span></label>
				
				        <input type="checkbox" id="exhibition">
				        <label for="exhibition"><span>전시회</span></label>
				
				        <input type="checkbox" id="auction">
				        <label for="auction"><span>경매</span></label>
				
				        <input type="checkbox" id="mypage">
				        <label for="mypage"><span>마이페이지</span></label>
				
				        <input type="checkbox" id="another">
				        <label for="another"><span>기타</span></label>
				    </div>
				</div>
				<div id="title-wrap">
					<div class="name">
						<h5>제목<span class="star">*</span></h5>
					</div>
					<input id="input-text" type="text" placeholder="제목을 입력하세요." />
				</div>
			</div>
			
		</div>
	</div>
	
	
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-faq-register.js"></script>
</html>


