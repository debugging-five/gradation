<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.app.dto.MailDTO"%>
<%@page import="com.app.vo.MailVO"%>
<%@page import="java.util.Optional"%>
<%@page import="com.app.dao.MypageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-contact-artist-update.css" />
<title>내 활동 / 작가와 연락 수정 페이지</title>
</head>

<body>
<%@ include file="../layout/header.jsp" %>
<%
	MailDTO mail = (MailDTO)request.getAttribute("mail");
%>

<%--   <%
	MypageDAO mypageDAO = new MypageDAO();
	Long id = Long.parseLong(request.getParameter("id"));
	Optional<MailDTO> foundMail = mypageDAO.selectMail(id);

	
	if (foundMail.isPresent()) {
		MailDTO mail = foundMail.get();
%>   --%>


	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">내 활동 / 작가와 연락</h2>
				<div id="notice">
					<p>작가의 답변이 완료된 글은 수정이 불가합니다.</p>
				</div>
				
				<div id="title-wrapper">
					<div id="contact-title">
						<h3>${mail.mailTitle}</h3> <!-- 제목은 수정 불가 -->
					</div>
				</div>
				
				
				<!-- 쪽지 내용 div -->
			<div id="contact-content">
                <p id="content-text">${mail.mailContents}</p>
            </div>

            <!-- 수정 폼 -->
            <form action="mypage-contact-artist-update-ok.mypage" method="post">
                <!-- 숨겨진 input (글 ID) -->
                <input type="hidden" name="id" value="${mail.id}">

                <div id="edit-fields">
                    <div id="content-edit">
                        <textarea id="content-input" name="mailContents">${mail.mailContents}</textarea>
                    </div>

                    <div id="save-cancel-buttons">
                        <button id="cancel-button" type="button">취소</button>
                        <button id="save-button" type="submit">저장</button>
                    </div>
                </div>
            </form>

			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<!-- <script type="text/javascript" src="../assets/js/mypage/mypage-contact-artist-detail.js"></script> -->
<script type="text/javascript">

	const saveButton = document.getElementById("save-button");
	const cancelButton = document.getElementById("cancel-button");
	const id = <%=mail.getId()%>;
	
	modifyButton.addEventListener("click", () => {
		location.href = 'mypage-contact-artist-update.mypage?id=' + id;
	})
	
	modifyButton.addEventListener("click", () => {
		location.href = 'mypage-contact-artist-detail.mypage?id=' + id;
	})
	
	
		
</script>
</html>
