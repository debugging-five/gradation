<%@page import="com.app.vo.FaqVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-content.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<%
		FaqVO faq = (FaqVO)request.getAttribute("faq");
	%>
	
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<h6 id="content-kind"><%=faq.getFaqCategory() %> 관련 문의</h6>
				<div id="question-wrap">
					<h3 id="question-title"><%=faq.getFaqTitle() %></h3>
				</div>
				<p id="question-content">
                    <%=faq.getFaqContent() %>
                </p>
                
				<form action="" method="post">
					<button type="button" id="list-faq">목록</button>
					<button type="button" id="delete-faq">삭제</button>
					<button type="button" id="modify-faq">수정</button>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", () => {
	const listBtn = document.getElementById("list-faq");
	const deleteBtn = document.getElementById("delete-faq");
	const modifyBtn = document.getElementById("modify-faq");
	const id = <%=faq.getId()%>;
	
		listBtn.addEventListener("click", () => {
			location.href = 'mypage-admin-faq-list.mypage';
		});
		
		deleteBtn.addEventListener("click", () => {
			location.href= 'mypage-admin-faq-delete-ok.mypage?id=' + id;
		});
		
		modifyBtn.addEventListener("click", () => {
			location.href = 'mypage-admin-faq-content-update.mypage?id=' + id;
		});	
});

	

</script>
</html>


