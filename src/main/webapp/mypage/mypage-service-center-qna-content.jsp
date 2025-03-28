<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-qna-content.css" />
<title>고객센터 / 1 : 1 문의</title>
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
					<a id="text-red" href="mypage-service-center-qna-list.mypage">1:1 문의하기</a>
				</div>
				<div class="category-div">
					<a href="mypage-service-center-faq-list.mypage">자주묻는 질문</a>
				</div>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<h6 id="content-kind">경매 관련 문의</h6>
				<div id="question-wrap">
					<div id="question"><h2>Q</h2></div>
					<h3 id="question-title">경매금액을 잘못 올렸어요.</h3>
					<p id="question-date">25.01.15</p>
				</div>
				<p id="question-content">
                    제가 경매금액을 5억원에 올려야 하는데 고양이가 잘못눌러서 5원에 올려버렸습니다. 공들인 작품이 5원이되어버린다는것은 분명 슬픈 일이겠죠. 하지만 이또한 지나가리, 이 넓은 우주에 이 사소한 일 하나가 그렇게 중요하진 않겠지요. 우리는 어디에서 왔고 어디에 있고 어디로 가는걸까요..
                </p>
                <div id="answer-div">
					<div id="answer-wrap">
						<div id="answer"><h2>A</h2></div>
						<h3 id="answer-title">답변완료</h3>
						<p id="answer-date">25.01.15</p>
					</div>
					<p id="answer-content">
		            	경매 금액을 잘못 올리셨다면, 자신의 계정으로 로그인 할 경우 경매 페이지에 수정하기 버튼을 통해 경매 금액을 수정해보세요.
		            </p>
                </div>

				<div id="button-div">
					<button type="button" class="qna-button" id="update-qna" onclick="location.href='mypage-service-center-qna-update.mypage'">수정</button>
					<button type="button" class="qna-button" id="delete-qna" onclick="location.href='mypage-service-center-qna-delete-ok.mypage'">삭제</button>
					<button type="button" class="qna-button" id="list-qna" onclick="location.href='mypage-service-center-qna-list.mypage'">목록</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-service-center-qna-content.js"></script>
</html>




