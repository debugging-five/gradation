<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-contact-artist-list.css" />
<title>경매 및 구매/ 경매 내역</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">내 활동 / 작가와 연락</h2>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-artist">작가명</h5>
					<h5 id="menu-title">제목</h5>
					<h5 id="menu-date">작성일</h5>
				</div>
				<!-- 작가와 연락 리스트 -->
				<div id="items"></div>

				<form action="mypage-contact-artist-write.mypage" method="post">
					<button id="add-faq">등록</button>
				</form>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
	
	<!-- JSON 데이터를 JavaScript에서 활용 -->
<script type="text/javascript">
	// JSON 데이터를 안전하게 문자열로 변환 후 JavaScript에서 파싱
	const mails = JSON.parse('${mails}');

	
	const itemsContainer = document.getElementById("items");
	let html = "";

	mails.forEach((mail, index) => {
		html += `
			<div class="item">
				<div class="item-number-wrap">
					<h4 class="item-number">${index + 1}</h4> <!-- 1부터 증가하도록 수정 -->
				</div>
				<div class="item-title-wrap">
					<p class="item-kind">${mail.receiveUserName}</p>
				</div>
				<div class="item-comment-wrap">
					<p class="item-title">${mail.mailTitle}</p>
				</div>
				<div class="item-date-wrap">
				</div>
			</div>
		`;
	});

	itemsContainer.innerHTML = html;
</script>

</body>
</html>
