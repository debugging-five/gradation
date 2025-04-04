<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-qna-list-completed.css" />
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
				<div id="title-kind">
	               <form action="mypage-admin-qna-list-waiting.mypage" method="post">
	                  <button id="waiting">
	                     <h5>답변 대기</h5>
	                  </button>
	               </form>
	               <div id="completed">
	                  <h5>답변 완료</h5>
	               </div>
	            </div>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-title">제목</h5>
					<h5 id="menu-date">작성일</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				
				<div id="items">
					<c:forEach var="qna" items="${qnaList}" varStatus="status">
						<div class="item" onclick="location.href='${pageContext.request.contextPath}/mypage/mypage-admin-qna-content-completed.mypage?id=${qna.id}'">				
							<div class="item-number-wrap">
								<h6 class="item-number">${status.index + 1}</h6>
							</div>
							<div class="item-kind-wrap">
								<p class="item-kind">${qna.qnaCategory}</p>
							</div>
							<div class="item-title-wrap">
								<p class="item-title">${qna.qnaTitle}</p>
							</div>
							<div class="item-date-wrap">
								<h6 class="item-date">${qna.dateData}</h6>
							</div>
						</div>
					</c:forEach>
				</div>
				
				
				
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-qna-list-completed.js"></script>
</html>




