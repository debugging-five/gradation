<%@page import="com.app.vo.MailVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/mypage/mypage-my-post-list.css?v=999" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page"
		value="mypage-post-list" />
	<div class="container-center">
		<div class="mypage-post-list screen">
			<div class="flex-row">
				<%@ include file="mypage-info-layout.jsp"%>
				<div class="message-container">
					<div class="page-title">내 쪽지</div>
					<p class="message-notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
					<div class="message-tabs">
						<a href="../mypage/mypage-post-list.mypage"
							class="tab tab-received">쪽지 수신함</a> <a
							href="../mypage/mypage-my-post-list.mypage"
							class="tab tab-sent active">내가 보낸 쪽지</a>
					</div>
					<div class="tab-content tab-sent-content">
						<div class="message-table-header">
							<div class="column-header-number">번호</div>
							<div class="column-header-sender">수신인</div>
							<div class="column-header-subject">제목</div>
							<div class="column-header-date">보낸일</div>
						</div>
						<%
						List<MailVO> receivedMails = (List<MailVO>) request.getAttribute("receivedMails");
						int count = 1;
						for (MailVO mail : receivedMails) {
						%>
						<div class="message-row">
							<div class="column-number"><%=count++%></div>
							<div class="column-sender"><%=mail.getSendUserName()%></div>
							<div class="column-subject">
								<a href="mypage-post-content.mypage?id=<%=mail.getId()%>"
									class="message-link"> <%=mail.getMailTitle()%>
								</a>
							</div>
							<div class="column-date">
								<%
								java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yy.MM.dd");
								out.print(sdf.format(mail.getMailSendTime()));
								%>
							</div>
						</div>
						<%
						}
						%>


					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const senderElements = document.querySelectorAll(".column-sender");

			senderElements.forEach(function(element) {
				if (element.textContent.trim() === "관리자") {
					element.style.color = "#ee3333";
				}
			});
		});
	</script>
</body>
</html>
