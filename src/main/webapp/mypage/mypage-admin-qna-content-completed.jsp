<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-qna-content-completed.css" />
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
				
				<div id="contact-content">
					<p>${qna.qnaContent}</p>
				</div>
				
				<div id="title-wrapper2">
					<div id="contact-title">
						<h3 style="color: var(--color-primary)">A. 답변완료</h3>
						<p>25. 01. 15</p>
					</div>
				</div>
				<div id="contact-content2">
					<p>자신의 아이디로 로그인한 경우 경매페이지에 들어가시면 수정하기 버튼이 있습니다. 수정하기 버튼을 통해 금액을 수정하세요.</p>
				</div>
				
				<div id="button-wrapper">
					<button id="list-button" type="button">목록</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-qna-content-completed.js"></script>
</html>




