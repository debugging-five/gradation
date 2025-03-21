<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypage/mypage-info-layout.css">

<div class="my-info">
	<div class="my-profile my">
		<div class="profile-container">
			<form action="profile-upload.jsp" method="post"
				enctype="multipart/form-data">
				<div class="profile-image">
					<label for="profileUpload"> <img id="profilePreview"
						src="<%=session.getAttribute("profileImage") != null
		? request.getContextPath() + "/" + session.getAttribute("profileImage")
		: request.getContextPath() + "/assets/images/mypage/upload/default-profile.jpg"%>"
						alt="프로필 이미지">
					</label> <input type="file" id="profileUpload" name="profileImage"
						accept="image/*" onchange="this.form.submit();">
				</div>
			</form>
		</div>

		<div class="text-26 pretendardh3">홍길동</div>
	</div>
	<div class="infomation">
		<div class="text pretendardh5">내 정보</div>
		<div class="update-infomation pretendardh7">
			<div class="text-1">개인 정보 수정</div>
			<div class="text-1">내 작가페이지 수정</div>
			<div class="text-1">비밀번호 변경</div>
		</div>
		<img class="line-12 line"
			src="../assets/images/mypage/my-post/line-125-1@2x.png"
			alt="Line 125" />
	</div>
	<div class="my-perform my">
		<div class="text pretendardh5">내 활동</div>
		<div class="perform pretendardh7">
			<div class="text-1">작성한 댓글</div>
			<div class="text-1">작가와 연락</div>
			<div class="text-1">좋아요</div>
		</div>
		<img class="line-123 line"
			src="../assets/images/mypage/my-post/line-123-3@2x.png"
			alt="Line 123" />
	</div>
	<div class="view-item">
		<div class="text pretendardh5">내 결제내역</div>
		<div class="history-auction-buy pretendardh7">
			<div class="text-1">경매 내역</div>
			<div class="text-1">구매 내역</div>
		</div>
		<img class="line-12 line"
			src="../assets/images/mypage/my-post/line-125-1@2x.png"
			alt="Line 123" />
	</div>
	<div class="view-item">
		<div class="text pretendardh5">내 쪽지 및 문의</div>
		<div class="post-request pretendardh7">
			<div class="text-1">내 쪽지</div>
			<div class="text-1">내 문의</div>
		</div>
		<img class="line-12 line"
			src="../assets/images/mypage/my-post/line-125-1@2x.png"
			alt="Line 123" />
	</div>
	<div class="text-22 pretendardh7">회원 탈퇴</div>
</div>