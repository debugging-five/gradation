<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-post-list.css?v=999" />
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
						<div class="message-row">
							<div class="column-number">1</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="../mypage/mypage-my-post-content.mypage">불법 광고 신고합니다.</a>
							</div>
							<div class="column-date">25.03.10</div>
						</div>
						<div class="message-row">
							<div class="column-number">2</div>
							<div class="column-sender">김동건</div>
							<div class="column-subject">
								<a href="../mypage/mypage-my-post-content.mypage">싫어</a>
							</div>
							<div class="column-date">25.03.06</div>
						</div>
						<div class="message-row">
							<div class="column-number">3</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="../mypage/mypage-my-post-content.mypage">배송지 변경 요청</a>
							</div>
							<div class="column-date">25.02.22</div>
						</div>
						<div class="message-row">
							<div class="column-number">4</div>
							<div class="column-sender">관리자</div>
							<div class="column-subject">
								<a href="../mypage/mypage-my-post-content.mypage">가격 네고 문의</a>
							</div>
							<div class="column-date">25.02.20</div>
						</div>
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
