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
	href="../assets/css/mypage/mypage-send-post-content-modify.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page"
		value="mypage-send-post-content-modify" />
	<div class="container-center">
		<div class="mypage-send-post-content-modify screen">
			<div class="view">
				<%@ include file="mypage-info-layout.jsp"%>
			</div>
			<div class="flex-col">
				<div class="flex-title">
					<h1 class="title">내 쪽지</h1>
					<p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
				</div>
				<div class="flex-form">
					<div class="form-title">
						<span class="title-text">제목</span><span class="ester">*</span>
					</div>
					<input type="text" class="form-input-title" placeholder="제목을 입력하세요" />
				</div>
				<img class="line-1 line"
					src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />
				<div class="form-content">
					<span class="title-text">내용</span><span class="ester">*</span>
				</div>
				<div class="input">
					<textarea class="form-input-content" placeholder="내용을 입력하세요"></textarea>
				</div>
				<div class="flex-attach-file">
					<div class="attach-file">첨부파일</div>
					<input type="file" id="fileInput" class="file-input"
						onchange="handleFileChange(event)" /> <label for="fileInput"
						class="attach-button">첨부하기</label>
					<div id="fileNameDisplay" class="file-name-display">파일 없음</div>
				</div>
				<div class="flex-email">
					<div class="email">이메일*</div>
					<div class="input-email">gradation1234@email.com</div>
				</div>
				<img class="line-1 line"
					src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />
				<button class="send-button" onclick="return validateForm();">
					<div class="send">보내기</div>
				</button>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<div id="popup-confirm" class="popup-overlay" style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/quest.png"
				alt="question icon" class="popup-icon" />
			<div class="popup-message">쪽지를 전송 하시겠습니까?</div>
			<div class="popup-button-group">
				<button class="popup-button cancel" onclick="hideConfirm()">취소</button>
				<button class="popup-button confirm" onclick="showSuccessPopup()">확인</button>
			</div>
		</div>
	</div>
	<div id="popup-success" class="popup-overlay" style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/confirm.png"
				alt="success icon" class="popup-icon" />
			<div class="popup-message">쪽지가 전송되었습니다.</div>
			<div class="popup-button-group">
				<button class="popup-button confirm" onclick="redirectToList()">확인</button>
			</div>
		</div>
	</div>
	<script>
		function handleFileChange(event) {
			const fileInput = event.target;
			const fileNameDisplay = document.getElementById('fileNameDisplay');

			if (fileInput.files.length > 0) {
				fileNameDisplay.textContent = fileInput.files[0].name;
			} else {
				fileNameDisplay.textContent = "파일 없음";
			}
		}

		function handleFileChange(event) {
			const fileInput = event.target;
			const fileNameDisplay = document.getElementById('fileNameDisplay');

			if (fileInput.files.length > 0) {
				fileNameDisplay.textContent = fileInput.files[0].name;
			} else {
				fileNameDisplay.textContent = "파일 없음";
			}
		}

		function validateForm() {
			const title = document.querySelector(".form-input-title").value
					.trim();
			const content = document.querySelector(".form-input-content").value
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

			document.getElementById("popup-confirm").style.display = "flex";
			return false;
		}

		function hideConfirm() {
			document.getElementById("popup-confirm").style.display = "none";
		}

		function showSuccessPopup() {
			document.getElementById("popup-confirm").style.display = "none";
			document.getElementById("popup-success").style.display = "flex";
		}

		function redirectToList() {
			window.location.href = "mypage-post-list.mypage";
		}
	</script>

</body>
</html>