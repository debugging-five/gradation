<%@page import="com.app.vo.FaqVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-faq-content-update.css" />
<title>고객센터 / 자주 묻는 질문</title>
</head>
<body>

	<%
		FaqVO faq = (FaqVO)request.getAttribute("faq");
	%>

	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문(수정)</h2>
				<h6 id="content-kind"><%=faq.getFaqCategory()%> 관련 문의</h6>
				<div id="question-wrap">
					<h3 id="question-title"><%=faq.getFaqTitle()%></h3>
				</div>
				
				<form action="mypage-admin-faq-content-update-ok.mypage" method="post">
					<input type="hidden" name="id" value="<%=faq.getId()%>" />
					<textarea name="faqContent" id="question-content"><%=faq.getFaqContent() == null ? "" : faq.getFaqContent()%></textarea>	
					<button type="button" id="cancel-faq">취소</button>
					<button type="submit" id="modify-faq">저장</button>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript">
	const cancelBtn = document.getElementById("cancel-faq");
	const modifyBtn = document.getElementById("modify-faq");
	const id = <%=faq.getId()%>;
	
	cancelBtn.addEventListener("click", () => {
		location.href = 'mypage-admin-faq-content.mypage?id=' + id;
	})
	
	
</script>
</html>


