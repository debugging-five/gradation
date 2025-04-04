<%@ page import="com.app.vo.MailVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/mypage/mypage-post-content.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<%
	MailVO mail = (MailVO) request.getAttribute("mail");
	%>
	<div class="container-center">
		<div class="mypage-post-content screen">
			<div class="flex-row">
				<%@ include file="mypage-info-layout.jsp"%>
				<div class="message-container">
					<div class="message-header">
						<div class="message-title">내 쪽지</div>
						<div class="message-notice">전송이 완료된 쪽지는 수정이 불가합니다.</div>
					</div>
					<div class="message-subject-row">
						<div class="message-subject"><%=mail.getMailTitle()%></div>
						<div class="message-date">
							<%
							java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yy.MM.dd");
							%>
							<%=sdf.format(mail.getMailSendTime())%>
						</div>
					</div>
					<div class="message-meta">
						<span class="meta-label">발신자명</span> <span class="meta-value"><%=mail.getSendUserName()%></span>
						<span class="meta-label">메일주소</span> <span class="meta-value"><%=mail.getSendUserEmail()%></span>
					</div>
					<div class="message-content">
						<p>
							<%=mail.getMailContents() != null
		? mail.getMailContents().replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br/>")
		: "내용이 없습니다."%>
						</p>
					</div>
					<div class="message-buttons">
						<button type="button"
							onclick="location.href='mypage-post-list.mypage'">목록</button>
						<button type="button" onclick="showDeleteConfirm()">삭제</button>
						<button type="button"
							onclick="location.href='mypage-send-post-content-modify.mypage?id=<%=mail.getId()%>'">답장</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<div id="popup-delete-confirm" class="popup-overlay"
		style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/quest.png"
				alt="question icon" class="popup-icon" />
			<div class="popup-message">정말 삭제하시겠습니까?</div>
			<div class="popup-button-group">
				<button class="popup-button cancel" onclick="hideDeleteConfirm()">취소</button>
				<button class="popup-button confirm" onclick="showDeleteSuccess()">확인</button>
			</div>
		</div>
	</div>
	<div id="popup-delete-success" class="popup-overlay"
		style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/confirm.png"
				alt="success icon" class="popup-icon" />
			<div class="popup-message">삭제가 완료되었습니다.</div>
			<div class="popup-button-group">
				<button class="popup-button confirm" onclick="redirectToPostList()">확인</button>
			</div>
		</div>
	</div>
	<script>
		const mailId =
	<%=mail.getId()%>
		;

		function showDeleteConfirm() {
			document.getElementById("popup-delete-confirm").style.display = "flex";
		}

		function hideDeleteConfirm() {
			document.getElementById("popup-delete-confirm").style.display = "none";
		}

		function showDeleteSuccess() {
			document.getElementById("popup-delete-confirm").style.display = "none";
			document.getElementById("popup-delete-success").style.display = "flex";
		}

		function redirectToPostList() {
			location.href = 'mypage-post-delete-ok.mypage?id=' + mailId;
		}
	</script>
</body>
</html>
