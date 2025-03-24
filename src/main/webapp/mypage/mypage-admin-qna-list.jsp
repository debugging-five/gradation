<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-qna-list.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category"></div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<div id="title-kind">
	               <div id="waiting">
	                  <h5>답변 대기</h5>
	               </div>
	               <form action="" method="post">
	                  <button id="completed">
	                     <h5>답변 완료</h5>
	                  </button>
	               </form>
	            </div>
				<div id="menu">
					<h5 id="menu-number">번호</h5>
					<h5 id="menu-kind">구분</h5>
					<h5 id="menu-title">제목</h5>
				</div>
				<!-- 자주 묻는 질문  -->
				<div id="items">
					<div class="item">
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
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
</html>