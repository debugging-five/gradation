<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
					<c:forEach var="faq" items="${faqList}">
						<div class="item" onclick="location.href='mypage-service-center-faq-content.mypage?faqId=${faq.id}'">
							<div class="item-number-wrap">
								<h4 class="item-number">${faq.id}</h4>
							</div>
							<div class="item-kind-wrap">
								<p class="item-kind">${faq.faqCategory}</p>
							</div>
							<div class="item-title-wrap">
								<p class="item-title">${faq.faqTitle}</p>
							</div>
						</div>
					</c:forEach>	
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src=""></script>
</html>


