<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-faq-content.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<div class="category-div">
					<h1>고객센터</h1>
				</div>
				<div class="category-div">
					<a href="mypage-service-center-qna-list.mypage">1:1 문의하기</a>
				</div>
				<div class="category-div">
					<a id="text-red" href="mypage-service-center-faq-list.mypage">자주묻는 질문</a>
				</div>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<h6 id="content-kind">${faq.faqCategory} 관련 문의</h6>
				<div id="question-wrap">
					<div id="question">Q.</div>
					<h3 id="question-title">${faq.faqTitle}</h3>
				</div>
				<p id="question-content">
                    ${faq.faqContent}
                </p>
                <textarea id="answer-input"></textarea>
				<form action="" method="post">
					<button type="button" id="list-faq" onclick="location.href='mypage-service-center-faq-list.mypage'">목록</button>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-faq-content.js"></script>
</html>