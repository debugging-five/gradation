<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-dismissed-popup.css" />
<title>기각 팝업</title>
</head>
<body>
<!-- 팝업 열기 버튼 -->
<button class="openPopupBtn">기각</button>

<!-- 모달 창 -->
<div class="modal-bg" id="modalBg">
    <div class="modal">
        <button class="closeBtn">
        	<img alt="close-icon" src="../assets/images/mypage/mypage-admin-form-dismissed-popup/close.png">
        </button>
        <div class="modal-title">
        	기각 사유
        </div>
        <textarea id="message" placeholder="쪽지를 입력하세요" class="message-input"></textarea>
        <div class="modal-footer">
            <span id="charCount">0 / 500</span>
            <button class="sendBtn" disabled>전송</button>
        </div>
    </div>
</div>

<!-- 등록 클릭 시 팝업-->
<div class="modal-bg2" id="modalBg2"> 
    <div class="modal2">
        <div class="modal-title2">
        	<img class="question-icon" alt="question-icon" src="../assets/images/display/question.png">
        	<span>정말로 기각하시겠습니까?</span>
        </div>
        <div class="modal-footer2">
            <button class="cancel">취소</button>
            <button class="send">확인</button>
        </div>
    </div>
</div>

<!-- 등록완료 팝업 -->
<div id="popupOverlay" class="modal-bg2" style="display: none;">
	<div class="modal2">
        <div class="modal-title2">
        	<img class="question-icon" alt="question-icon" src="../assets/images/display/ok.png">
        	<span>기각이 완료되었습니다.</span>
        </div>
        <div class="modal-footer2">
            <button class="send">확인</button>
        </div>
    </div>
</div>





</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-form-dismissed-popup.js"></script>

</html>