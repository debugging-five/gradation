<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-contact-artist-write.css" />
<title>내 활동 / 작가와 연락</title>
</head>
<body>
				<form action="mypage-contact-artist-write-ok.mypage" method="post">
	<%@ include file="../layout/header.jsp" %>
	<div id="container-wrap">
		<div id="container">
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">내 활동 / 작가와 연락</h2>
				<div id="notice">
					<p>작가의 답변이 완료된 글은 수정이 불가합니다.</p>
				</div>
				
				<div class="input-wrapper">
					<div class="input-artist">
						<h5>작가명<span class="star">*</span></h5>
						<input type="text" name="rUserEmail" placeholder="작가명을 입력하세요."/>
					</div>
				</div>
				
				<div class="input-wrapper">
					<div class="input-title">
						<h5>제목<span class="star">*</span></h5>
						<input type="text" name="mailTitle" placeholder="제목을 입력하세요."/>
					</div>
				</div>
				
				<div id="textarea-content">
					<h5>내용<span class="star">*</span></h5>
					<textarea name="mailContents" placeholder="내용을 입력하세요."></textarea>
				</div>

				
				<!-- 내 활동 / 작가와 연락 페이지로 이동 -->
				<!-- <form action="mypage-contact-artist-list.jsp" method="post"> -->
					<div id="button-wrapper">
						<button id="register-button">등록</button>
					</div>
			</div>
		</div>
	
	
	</div>
				</form>
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>