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
					<h1 class="title">내 쪽지 및 문의 / 내 쪽지</h1>
					<p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
				</div>
				<div class="flex-form">
					<div class="form-title">
						<span class="span0">제목</span><span class="span1">*</span>
					</div>
					<input type="text" class="form-input-title" placeholder="제목을 입력하세요" />
				</div>
				<img class="line-1 line"
					src="../assets/images/mypage/my-post/line-114-1.png" alt="Line 1" />
				<div class="form-content">
					<span class="span0">내용</span><span class="span1">*</span>
				</div>
				<div class="overlap-group">
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
				<button class="overlap-group1">
					<div class="send ">보내기</div>
				</button>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
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
	</script>
</body>
</html>