<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage-info-layout.css">
</head>
<body>
<div class="my-info">
	<div class="my-profile my">
		<div class="profile-container">
			<form id="profileForm" action="profile-upload.jsp" method="post" enctype="multipart/form-data">
				<div class="profile-image">
					<label for="profileUpload"> <img id="profilePreview"
						src="<%=session.getAttribute("profileImage") != null
						? request.getContextPath() + "/" + session.getAttribute("profileImage")
						: request.getContextPath() + "/assets/images/mypage/upload/default-profile.jpg"%>"
						alt="프로필 이미지">
					</label> <input type="file" id="profileUpload" name="profileImage" accept="image/*">
				</div>
			</form>
		</div>
		<div class="user-name">홍길동</div>
		</div>
		<div class="infomation">
			<div class="section">내 정보</div>
			<div class="update-infomation">
				<div class="sidebar-link"><a href="">개인 정보 수정</a></div>
				<div class="sidebar-link">내 작가페이지 수정</div>
				<div class="sidebar-link">비밀번호 변경</div>
			</div>
		</div>
		<div class="my-perform my">
			<div class="section">내 활동</div>
			<div class="perform">
				<div class="sidebar-link">작성한 댓글</div>
				<div class="sidebar-link">작가와 연락</div>
				<div class="sidebar-link">좋아요</div>
			</div>
		</div>
		<div class="view-item">
			<div class="section">내 결제내역</div>
			<div class="history-auction-buy">
				<div class="sidebar-link">경매 내역</div>
				<div class="sidebar-link">구매 내역</div>
			</div>
		</div>
		<div class="view-item">
			<div class="section">내 쪽지 및 문의</div>
			<div class="post-request">
				<div class="sidebar-link">내 쪽지</div>
				<div class="sidebar-link">내 문의</div>
			</div>
		</div>
		<div class="sidebar-logout">회원 탈퇴</div>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const fileInput = document.getElementById("profileUpload");
    const previewImage = document.getElementById("profilePreview");

    fileInput.addEventListener("change", function (event) {
      const file = event.target.files[0];
      if (file && file.type.startsWith("image/")) {
        const reader = new FileReader();
        reader.onload = function (e) {
          previewImage.src = e.target.result;
        };
        reader.readAsDataURL(file);
      }
    });
  });
</script>

</body>
</html>