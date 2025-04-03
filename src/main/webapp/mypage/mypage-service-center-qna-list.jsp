<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-qna-list.css" />
<title>고객센터 / 1:1 문의 내문의</title>
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
					<a id="text-red" href="mypage-service-center-qna-list.mypage">1:1 문의하기</a>
				</div>
				<div class="category-div">
					<a href="mypage-service-center-faq-list.mypage">자주묻는 질문</a>
				</div>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 1 : 1 문의하기</h2>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-status">처리현황</h5>
					<h5 id="menu-title">제목</h5>
					<h5 id="menu-date">작성일</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					
					<c:forEach var="qna" items="${qnaList}" varStatus="status">
						<div class="item" onclick="location.href='mypage-service-center-qna-content.mypage?qnaId=${qna.qnaId}'">
							<div class="item-number-wrap">
								<h6 class="item-number">${status.index + 1}</h6>
							</div>
							<div class="item-kind-wrap">
								<p class="item-kind">${qna.qnaCategory}</p>
							</div>
							<div class="item-status-wrap">
								<p class="item-status">${qna.qnaStatus}</p>
							</div>
							<div class="item-title-wrap">
								<p class="item-title">${qna.qnaTitle}</p>
							</div>
							<div class="item-date-wrap">
								<h6 class="item-date">${qna.dateData}</h6>
							</div>
						</div>
					</c:forEach>
					
					<div class="qna-button-div">
						<button class="qna-button" onclick="location.href='mypage-service-center-qna-send.mypage'">문의하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>