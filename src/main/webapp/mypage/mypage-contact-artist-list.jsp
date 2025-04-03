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
				<div id="items">
					<c:forEach var="mail" items="${mailList}" varStatus="status">
					    	<div class="item"  onclick="location.href ='${pageContext.request.contextPath}/mypage/mypage-contact-artist-detail?id=${mail.id}'">
					            <div class="item-number-wrap">
					                <h4>${status.index + 1}</h4>
					            </div>
					            <div class="item-title-wrap">
					                <p>${mail.rUserEmail}</p> 
					            </div>
					            <div class="item-comment-wrap">
					                <p>${mail.mailTitle}</p>
					            </div>
					            <div class="item-date-wrap">
					                <p>${mail.mailSendTime}</p>
					            </div>
					        </div> 
					</c:forEach>
				</div>
				

				<form action="mypage-contact-artist-write.mypage" method="post">
					<button id="add-faq">등록</button>
				</form>
			</div>
		</div>

	</div>
	

	<%@ include file="../layout/footer.jsp" %>
</body>

</html>
