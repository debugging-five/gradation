<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/font/font.css" />
<link rel="stylesheet"
	href="../assets/css/mypage/mypage-send-post-content-modify.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<div class="container">
		<div class="page-wrapper">
			<div class="sidebar">
				<%@ include file="mypage-info-layout.jsp"%>
			</div>
			<div class="form-section">
				<form id="replyForm"
					action="mypage-send-post-content-modify-ok.mypage" method="post">
					<input type="hidden" name="sendUserId" value="${sendUserId}" /> <input
						type="hidden" name="receiveUserEmail" value="${receiveUserEmail}" />
					<div class="form-header">
						<h1 class="form-title">내 쪽지</h1>
						<p class="form-warning">전송이 완료된 쪽지는 수정이 불가합니다.</p>
					</div>
					<div class="form-row">
						<label class="form-label">제목<span class="required">*</span></label>
						<div class="underline-input-container">
							<input type="text" name="mailTitle"
								class="title-input underline-input" placeholder="제목을 입력하세요" />
						</div>
					</div>
					<hr class="divider" />
					<div class="form-group">
						<label class="label"> 내용<span class="required">*</span>
						</label>
						<textarea name="mailContents" class="input content-input"
							placeholder="내용을 입력하세요"></textarea>
					</div>
					<div class="form-row">
						<label class="form-label">첨부파일</label>
						<button type="button" class="file-btn">첨부파일</button>
					</div>
					<div class="form-row">
						<label class="form-label">이메일<span class="required">*</span></label>
						<div class="readonly-text">${receiveUserEmail}</div>
					</div>
					<hr class="divider" />
					<div class="form-footer">
						<button type="button" class="submit-btn"
							onclick="return validateForm();">보내기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<div id="popup-confirm" class="popup-overlay" style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/quest.png"
				class="popup-icon" />
			<div class="popup-message">쪽지를 전송하시겠습니까?</div>
			<div class="popup-button-group">
				<button class="popup-button cancel" onclick="hideConfirm()">취소</button>
				<button class="popup-button confirm" onclick="showSuccessPopup()">확인</button>
			</div>
		</div>
	</div>
	<div id="popup-success" class="popup-overlay" style="display: none;">
		<div class="popup-box">
			<img src="../assets/images/mypage/my-post/confirm.png"
				class="popup-icon" />
			<div class="popup-message">쪽지 전송이 완료되었습니다.</div>
			<div class="popup-button-group">
				<button class="popup-button confirm" onclick="redirectToList()">확인</button>
			</div>
		</div>
	</div>
	<script>
	function validateForm() {
		  const titleInput = document.querySelector(".title-input");
		  const contentInput = document.querySelector(".content-input");
		  const email = document.querySelector(".readonly-text").textContent.trim();

		  if (!titleInput || !contentInput) {
		    alert("폼 요소를 찾을 수 없습니다. 관리자에게 문의하세요.");
		    return false;
		  }

		  const title = titleInput.value.trim();
		  const content = contentInput.value.trim();

		  if (title === "") {
		    alert("제목을 입력해주세요.");
		    titleInput.focus();
		    return false;
		  }

		  if (content === "") {
		    alert("내용을 입력해주세요.");
		    contentInput.focus();
		    return false;
		  }

		  if (email === "") {
		    alert("받는 사람 이메일이 없습니다.");
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
			document.getElementById("replyForm").submit();
		}
	</script>
</body>
</html>
