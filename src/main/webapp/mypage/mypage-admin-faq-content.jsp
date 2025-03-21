<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-content.css" />
<title>고객센터 / 자주 묻는 질문</title>
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
				<h6 id="content-kind">경매 관련 문의</h6>
				<div id="question-wrap">
					<div id="question">Q.</div>
					<h3 id="question-title">경매금액을 잘못 올렸어요.</h3>
					<p id="question-date">25.01.15</p>
				</div>
				<p id="question-content">
                    삼각자는 직각 삼각자 를 포함하여 여러개 여유있게 준비해 두는 것이 바람직한데, 왜냐하면 입체작품(비교적 크기가 작은)의 놓이와 폭 등을 실측하기 위해서는 2개 내지는 3개의 자를 조립하여 사용할 경우도 있기 때문이다. 줄자는 철제로 된 것 뿐만 아니라 비닐과 천과 같은 부드러운 소재로 만들어진 것도 필요하다. 이것은 종이를 소재로 했거나 깨어지기 쉬운 공예작품과 같이 매우 조심스럽게 다루어야 할 작품을 실측하는데 유용하기 때문이다.
                </p>
                <textarea id="answer-input"></textarea>
				<form action="" method="post">
					<button id="delete-faq">삭제</button>
					<button id="modify-faq">수정</button>
					<button id="cancel-faq">취소</button>
					<button id="save-faq">저장</button>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-faq-content.js"></script>
</html>


