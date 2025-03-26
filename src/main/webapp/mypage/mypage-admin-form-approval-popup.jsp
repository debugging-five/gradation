<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-admin-form-approval-popup.css" />
<title>승인 팝업</title>
</head>
<body>
<!-- 팝업 열기 버튼 -->
<button class="openPopupBtn-ok" onclick= "openPopupOk()">승인</button>

<!-- 승인 클릭 시 팝업 (승인 확인 팝업) -->
<div class="modal-bg2-ok" id="modalBg2-ok"> 
    <div class="modal2-ok">
        <div class="modal-title2-ok">
            <img class="question-icon" alt="question-icon" src="../assets/images/display/question.png">
            <span>정말로 승인하시겠습니까?</span>
        </div>
        <div class="modal-footer2-ok">
            <button class="cancel-ok" onclick="closePopupOk('modalBg2-ok')">취소</button>
            <button class="send-ok" onclick="confirmSubmissionOk()">확인</button>
        </div>
    </div>
</div>

<!-- 승인 완료 팝업 -->
<div id="popupOverlay-ok" class="modal-bg2-ok" style="display: none;">
    <div class="modal2-ok">
        <div class="modal-title2-ok">
            <img class="question-icon" alt="question-icon" src="../assets/images/display/ok.png">
            <span>승인이 완료되었습니다.</span>
        </div>
        <div class="modal-footer2-ok">
            <button class="send-ok" onclick="closePopupOk('popupOverlay-ok')">확인</button>
        </div>
    </div>
</div>




</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-admin-form-approval-popup.js"></script>

</html>