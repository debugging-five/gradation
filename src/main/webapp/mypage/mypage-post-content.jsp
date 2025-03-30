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
	href="../assets/css/mypage/mypage-post-content.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page"
		value="mypage-post-content" />
	<div class="container-center">
		<div class="mypage-post-content screen">
			<div class="view">
				<%@ include file="mypage-info-layout.jsp"%>
			</div>
			<div class="main-content">
				<h1 class="title">내 쪽지</h1>
				<p class="notice">전송이 완료된 쪽지는 수정이 불가합니다.</p>
				<div class="post-title-group">
					<div class="post-title">♚♚바둑이 오브 더 스☆톰♚♚가입시$$전원 포인트</div>
					<div class="post-date">25.03.09</div>
				</div>
				<div class="post-user-info-group">
					<div class="label-sender-name">발신자명</div>
					<div class="value-sender-name">김동건</div>
					<div class="label-email">메일주소</div>
					<div class="value-email">gradation1234@gmail.com</div>
				</div>
				<p class="post-body">
				<p>[web발신]</p>
				<p>고민말고 김박사와 함께</p>
				<p>세력방/따자방 오픈함다</p>
				<p>관망하시고 판단해주세요</p>
				<p>ehdrjs/srm1 -클릭</p>

				<div class="middle-buttons-container">
					<div class="middle-buttons">
						<button class="button-list"
							onclick="location.href='mypage-post-list.mypage'">목록</button>
						<button class="button-delete" onclick="confirmDelete()">삭제</button>
						<button class="button-reply"
							onclick="location.href='mypage-post-content-modify.mypage'">답장</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function confirmDelete() {
			const isConfirmed = confirm("정말 삭제하시겠습니까?");
			if (isConfirmed) {
				location.href = 'delete-post.jsp';
			}
		}
	</script>
</body>
<%@ include file="../layout/footer.jsp"%>
</html>
