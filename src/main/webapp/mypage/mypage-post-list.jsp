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
	href="../assets/css/mypage/mypage-post-list.css" />
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
					<div class="page-title">내 쪽지 및 문의 / 내 쪽지</div>
					<p class="message-notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
					<div class="message-tabs">
						<div class="tab-received active-tab"
							onclick="switchTab('received')">
							<div class="tab-label">쪽지 수신함</div>
						</div>
						<div class="tab-sent" onclick="switchTab('sent')">
							<div class="tab-label">내가 보낸 쪽지</div>
						</div>
					</div>
					<div class="tab-content tab-received-content">
						<div class="message-table-header">
							<div class="column-header-number">번호</div>
							<div class="column-header-sender">발신인</div>
							<div class="column-header-subject">제목</div>
							<div class="column-header-date">작성일</div>
						</div>
						<div class="message-row">
							<div class="column-number">1</div>
							<div class="column-sender">김동건</div>
							<div class="column-subject" >
								<a href="mypage-post-content.jsp" class="message-link">♚♚바둑이 오브 더 스☆톰♚♚가입시$$전원 포인트</a>
							</div>
							<div class="column-date">25.03.09</div>
						</div>
						<div class="message-row">
							<div class="column-number">2</div>
							<div class="column-sender">김동건</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">가격 네고 희망합니다!</a>
							</div>
							<div class="column-date">25.03.05</div>
						</div>
						<div class="message-row">
							<div class="column-number">3</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">배송이 완료되었습니다.</a>
							</div>
							<div class="column-date">25.02.25</div>
						</div>
						<div class="message-row">
							<div class="column-number">4</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">입찰이 완료되었습니다.</a>
							</div>
							<div class="column-date">25.02.21</div>
						</div>
					</div>
					<div class="tab-content tab-sent-content" style="display: none;">
						<div class="message-table-header">
							<div class="column-header-number">번호</div>
							<div class="column-header-sender">수신인</div>
							<div class="column-header-subject">제목</div>
							<div class="column-header-date">보낸일</div>
						</div>
						<div class="message-row">
							<div class="column-number">1</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">불법광고 신고 합니다.</a>
							</div>
							<div class="column-date">25.03.10</div>
						</div>
						<div class="message-row">
							<div class="column-number">2</div>
							<div class="column-sender">김동건</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">싫어</a>
							</div>
							<div class="column-date">25.03.06</div>
						</div>
						<div class="message-row">
							<div class="column-number">3</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="mypage-post-content.jsp">배송지 변경 요청</a>
							</div>
							<div class="column-date">25.02.22</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script>
		function switchTab(tab) {
			const tabReceived = document.querySelector(".tab-received");
			const tabSent = document.querySelector(".tab-sent");
			if (tab === "received") {
				tabReceived.classList.add("active-tab");
				tabSent.classList.remove("active-tab");
			} else {
				tabSent.classList.add("active-tab");
				tabReceived.classList.remove("active-tab");
			}

			const contentReceived = document
					.querySelector(".tab-received-content");
			const contentSent = document.querySelector(".tab-sent-content");

			if (contentReceived && contentSent) {
				contentReceived.style.display = tab === "received" ? "block"
						: "none";
				contentSent.style.display = tab === "sent" ? "block" : "none";
			}
		}
		
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
</body>
</html>