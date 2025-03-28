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
					<h3 id="question-title">경매금액을 잘못 올렸어요.</h3>
					<p id="question-date">25.01.15</p>
				</div>
				<p id="question-content">
                    경매 금액을 잘못 올리셨다면, 자신의 계정으로 로그인 할 경우 경매 페이지에 수정하기 버튼을 통해 경매 금액을 수정해보세요.
                </p>
                <textarea id="answer-input"></textarea>
				<form action="" method="post">
					<button type="button" id="list-faq">목록</button>
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


