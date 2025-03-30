<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-faq-list.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
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
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-title">제목</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					<div class="item" onclick="location.href='mypage-service-center-faq-content.mypage?faqId=1'">
						<div class="item-number-wrap">
							<h4 class="item-number">1</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회 관리</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">전시가 안될땐 어떻게 해야 하나요?</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">2</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">경매</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매금액을 잘못 올렸다면 어떻게 해야 하나요?</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">3</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">전시회 신청 방법</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">4</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">그라데이션 전시회에 작품이 전시되는 기준</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">5</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회 관리</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">전시가 안될땐 어떻게 해야 하나요?</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">6</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">경매</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매금액을 잘못 올렸다면 어떻게 해야 하나요?</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">7</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">전시회 신청 방법</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">8</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">그라데이션 전시회에 작품이 전시되는 기준</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">9</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">전시회 관리</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">전시가 안될땐 어떻게 해야 하나요?</p>
						</div>
					</div>
					<div class="item">
						<div class="item-number-wrap">
							<h4 class="item-number">10</h4>
						</div>
						<div class="item-kind-wrap">
							<p class="item-kind">경매</p>
						</div>
						<div class="item-title-wrap">
							<p class="item-title">경매금액을 잘못 올렸다면 어떻게 해야 하나요?</p>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src=""></script>
</html>


