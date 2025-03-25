<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-qna-content.css" />
<title>고객센터 / 1 : 1 문의</title>
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
				<h2 id="title">고객센터 / 1 : 1 문의</h2>
				<div id="content-kind">
					<h6>경매 관련 문의</h6>
					<p id="notice">작가의 답변이 완료된 글은 수정이 불가합니다.</p>
				</div>
				
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>경매금액을 잘못 올렸어요.</h3>
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
				
				<!-- 쪽지 내용 div -->
				<div id="contact-content">
					<p>삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기 때문이다.삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기 때문이다.삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교 적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하 여 사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬 운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기 때문이다. </p>
				</div>
				
				<div id="button-wrapper">
					<button id="list-button" type="button">목록</button>
					<button id="answer-button" type="button">답변하기</button>
				</div>
				<div id="reply-wrap" style="display: none;">
					<h5>내용<span class="star">*</span></h5>
					<textarea id="textarea" name="answer" placeholder="내용을 입력하세요."></textarea>
					<div id="button-wrapper">
						<button id="cancel" type="button">취소</button>
						<button id="registration" type="button" onclick="showCustomAlert()">등록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="mypage-admin-qna-content-registration-alert.jsp" %>
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-qna-content.js"></script>
</html>




