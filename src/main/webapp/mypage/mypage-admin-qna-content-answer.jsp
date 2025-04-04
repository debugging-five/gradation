<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-qna-content-answer.css" />
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
					<h6>${qna.qnaCategory} 관련 문의</h6>
				</div>
				
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>Q. ${qna.qnaTitle}</h3>
						<p>${qna.dateData}</p>
					</div>
				</div>
				
				<!-- 이름, 연락처, 이메일 div -->
				<div id="writer-info">
					<div id="name">
						<p>이름</p>
						<p>${qna.userName}</p>
					</div>
					<div id="phone">
						<p>연락처</p>
						<p>${qna.userPhone}</p>
					</div>
					<div id="email">
						<p>이메일</p>
						<p>${qna.userEmail}</p>
					</div>
				</div>
				
				<!-- 쪽지 내용 div -->
				<div id="contact-content">
					<p>${qna.qnaContent}</p>
				</div>
				
				<form id="answer" action="mypage-admin-qna-content-answer-ok.mypage" method="post">
					<input type="hidden" name="id" value="${qna.id}" />
					<div id="reply-wrap">
						<h5>내용<span class="star">*</span></h5>
						<textarea id="textarea" name="qnaAnswerContent" placeholder="내용을 입력하세요."></textarea>
						<div id="button-wrapper">
							<button id="cancel" type="button" data-id="${qna.id}">취소</button>
							<button id="registration" type="button">등록</button>
						</div>
					</div>
				</form>				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-qna-content-answer.js"></script>
</html>




