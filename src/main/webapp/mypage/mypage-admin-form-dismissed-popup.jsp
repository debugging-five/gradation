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
<button onclick="openPopup()">기각 팝업</button>

<!-- 모달 창 -->
<div class="modal-bg" id="modalBg">
    <div class="modal">
        <button class="close-btn" onclick="closePopup()">
        	<img alt="close-icon" src="../assets/images/mypage/mypage-admin-form-dismissed-popup/close.png">
        </button>
        <div class="modal-title">
        	기각 사유
        </div>
        <textarea id="message" placeholder="쪽지를 입력하세요" onkeyup="countCharacters()"></textarea>
        <div class="modal-footer">
            <span id="charCount">0 / 500</span>
            <button id="sendBtn" disabled onclick="sendMessage()">전송</button>
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
            <button class="cancel" onclick="closePopup()">취소</button>
            <button class="send" onclick="confirmSubmission()">확인</button>
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
            <button class="send" onclick="closePopup()">확인</button>
        </div>
    </div>
</div>




</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-form-dismissed-popup.js"></script>

</html>