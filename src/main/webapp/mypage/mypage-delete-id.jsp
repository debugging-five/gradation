<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-delete-id.css" />
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<div id="category">
				<%@ include file="mypage-info-layout.jsp" %>
			</div>
			<div id="content-wrap">
				<h2 id="title">회원탈퇴</h2>
				<div id="help-head">
					<h5>계정 삭제를 원하신다니 아쉬워요. 도와드릴 일이 있으면</h5><a href="mypage-service-center-faq-list.mypage"> 고객센터</a><h5>로 문의해 주세요.</h5>
				</div>
				<div id="matter-head">
					<h5>계정 삭제를 위한 사항을 숙지해주세요:</h5>
				</div>
				<div id="line-area"></div>
				<div id="matter-area">
					<h3>개인 정보 및 기록 삭제</h3>
					<h6>모든 개인정보와 개인 설정 기록이 삭제됩니다. 삭제된 정보는 복구할 수 없으니 필요한 데이터는 미리 백업해 두시기 바랍니다.</h6>
					<h3>SNS 계정 연동 해제</h3>
					<h6>탈퇴 시 모든 SNS 계정 연동이 해제됩니다.</h6>
					<h3>게시물 관련</h3>
					<h6>등록한 게시물은 탈퇴 후에도 삭제되지 않습니다. 게시물 삭제를 원하신다면 계정을 탈퇴하기 전 삭제를 원하는 게시물을 직접 삭제하실 수 있습니다.</h6>
					<h3>개인정보 보관</h3>
					<h6>개인정보 방침에 따라 일부 개인정보가 탈퇴 후 30일까지 보관될 수 있습니다. 30일 후에도 관련 법률 및 규정에 따라 보관될 수 있습니다. </h6>
					<h3>계정 제한 사항</h3>
					<h6>탈퇴한 이메일 주소는 탈퇴 후 24시간 후에 다시 가입할 수 있습니다.</h6>
				</div>
				
				<div>
					<input class="check-label" type="checkbox" id="check-display"/>
		  			<label class="checkbox-label" for="check-display">
		  				<span class="check-label-span"> 해당 내용을 확인하였으며, Gradation 계정 탈퇴에 동의합니다. 이 작업은 취소할 수 없습니다.</span>
		  			</label>
		  			<div class="warning-area">
		  				<span class="warning-message" id="dont-go">회원 탈퇴 약관에 동의해주세요</span>
		  			</div>
				</div>
				
				<div id="button-wrap">
					<button class="next-page-button" type="button" onclick="location.href='mypage-main.mypage'">비동의</button>
					<button class="next-page-button" id="delete-button" type="button">동의</button>
				</div>
			</div>
		</div>
	</div>
	<div id="complete">
		<div id="complete-container">
			<div id="complete-wrap">
				<div id="complete-head">
					<a href="" id="complete-close-button">
						<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
					</a>
				</div>
				<div id="complete-body">
					<div class="complete-icon">
						<img class="big-icon" alt="집중" src="../assets/images/mypage/attention.png">
					</div>
					<h2 class="complete-h2">정말로 탈퇴 하시겠습니까?</h2>
					<div class="h6-wrap">
						<h6 class="complete-h6">회원탈퇴시 24시간동안</h6>
						<h6 class="complete-h6">회원가입이 불가합니다.</h6>
					</div>
					<div id="id-button-wrap2">
						<button class="next-page-button2" id="back-button">돌아가기</button>
						<button class="next-page-button2" id="real-delete-button" onclick="location.href='mypage-delete-id-ok.mypage'">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="good-bye">
		<div id="complete-container">
			<div id="complete-wrap">
				<div id="complete-head">
					<a href="../logout/logout.user">
						<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
					</a>
				</div>
				<div id="complete-body">
					<div class="complete-icon">
						<img class="big-icon" alt="체크" src="../assets/images/login/red-check-circle.png">
					</div>
					<h2 class="complete-h2">회원탈퇴 완료</h2>
					<div class="h6-wrap">
						<h6 class="complete-h6">탈퇴가 완료되었습니다</h6>
						<h6 class="complete-h6">이용해주셔서 감사합니다.</h6>
					</div>
					<div id="id-button-wrap2">
						<button class="next-page-button2" id="real-delete-button" onclick="location.href='../logout/logout.user'">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
	
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-delete-id.js"></script>
</html>