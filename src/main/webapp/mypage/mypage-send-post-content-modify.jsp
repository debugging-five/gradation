<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/mypage/mypage-send-post-content-modify.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>

	<div class="container-center">
		<div class="mypage-send-post-content-modify screen">
			<div class="view">
				<%@ include file="mypage-info-layout.jsp"%>
			</div>

			<div class="flex-col">
				<form id="replyForm"
					action="mypage-send-post-content-modify-ok.mypage" method="post">
					<input type="hidden" name="sendUserId"
						value="${sessionScope.userId}">
					<div class="flex-title">
						<h1 class="title">내 쪽지</h1>
						<p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
					</div>

					<div class="flex-form">
						<div class="form-title">
							<span class="title-text">제목</span><span class="ester">*</span>
						</div>
						<input type="text" name="mailTitle" class="form-input-title"
							placeholder="제목을 입력하세요" />
					</div>

					<img class="line-1 line"
						src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />

					<div class="form-content">
						<span class="title-text">내용</span><span class="ester">*</span>
					</div>
					<div class="input">
						<textarea name="mailContents" class="form-input-content"
							placeholder="내용을 입력하세요"></textarea>
					</div>

					<div class="flex-email">
						<div class="email">수신자 이메일*</div>
						<div class="input-email">${receiveUserEmail}</div>
					</div>


					<img class="line-1 line"
						src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />

					<button type="submit" class="send-button"
						onclick="return validateForm();">
						<div class="send">보내기</div>
					</button>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="../layout/footer.jsp"%>

	<script>
		function validateForm() {
			const title = document.querySelector(".form-input-title").value
					.trim();
			const content = document.querySelector(".form-input-content").value
					.trim();
			const email = document
					.querySelector("input[name='receiveUserEmail']").value
					.trim();

			if (title === "") {
				alert("제목을 입력해주세요.");
				document.querySelector(".form-input-title").focus();
				return false;
			}
			if (content === "") {
				alert("내용을 입력해주세요.");
				document.querySelector(".form-input-content").focus();
				return false;
			}
			if (email === "") {
				alert("받는 사람 이메일을 입력해주세요.");
				document.querySelector(".input-email").focus();
				return false;
			}

			return true;
		}
	</script>

</body>
</html>
