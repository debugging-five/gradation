<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-post-list.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page" value="mypage-post-list" />
	<div class="container-center">
		<div class="mypage-post-list screen">
			<div class="flex-row">
			<%@ include file="mypage-info-layout.jsp"%>
				<div class="flex-col">
					<div class="title">내 쪽지 및 문의 / 내 쪽지</div>
					<p class="notice pretendardh9">전송이 완료된 쪽지는 수정이 불가합니다.</p>
					<div class="message-tabs">
						<div class="reception-post">
							<div class="tab-name">쪽지 수신함</div>
						</div>
						<div class="send-post">
							<div class="tab-name">내가 보낸 쪽지</div>
						</div>
					</div>
					<img class="line-1 line"
						src="../assets/images/mypage/my-post/line-114-1.png"
						alt="Line 1" />
					<div class="table-message-title">
						<div class="message-title-1">번호</div>
						<div class="message-title-2">발신인</div>
						<div class="message-title-3">제목</div>
						<div class="message-title-4">작성일</div>
					</div>
					<img class="line-2"
						src="../assets/images/mypage/my-post/line-114-1.png"
						alt="Line 2" />
					<div class="table-message-list">
						<div class="list-number">1</div>
						<div class="list-name">보스턴 치킨</div>
						<div class="list-title">빌라모형에서 파리가
							나왔습니다.</div>
						<div
							class="list-date">25.01.25</div>
					</div>
					<img class="line-115 line"
						src="../assets/images/mypage/my-post/line-114-1.png"
						alt="Line 115" />
					<div class="table-message-list">
						<div class="list-number">2</div>
						<div class="list-name-2">관리자</div>
						<div class="list-title-2">입찰이 완료되었습니다.</div>
						<div
							class="list-date-2">25.01.25</div>
					</div>
					<img class="line-115 line"
						src="../assets/images/mypage/my-post/line-114-1.png"
						alt="Line 115" />
					<div class="table-message-list">
						<div class="list-number">3</div>
						<div class="list-name-3">관리자</div>
						<div class="list-title-3">배송이 완료되었습니다.</div>
						<div class="list-date-3">25.01.25</div>
					</div>
					<img class="line-115 line"
						src="../assets/images/mypage/my-post/line-114-1.png"
						alt="Line 115" />
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>