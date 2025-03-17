<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/artist/artist-contact-popup-ok.css" />
<title>작가와 연락 팝업</title>
</head>
<body>
<!-- 모달 팝업 -->
<div id="popupOverlay" class="modal-overlay">
    <div class="modal">
        <div>
            <img class="ok-icon" alt="ok-icon" src="../assets/images/artist/ok.png">
        </div>
        <div class="modal-body">
            <p class="big-text">문의 등록 완료</p>
            <p class="small-text1">문의는 관리자 확인 후 작가에게 전달될 예정입니다.</p>
            <p class="small-text2">( 확인까지 최대 2~3일이 소요될 수 있습니다. )</p>
        </div>
        <div class="modal-footer">
            <button id="closeModalBtn" class="close-btn">확인</button>
        </div>
    </div>
</div>

</body>
<script>
document.addEventListener("DOMContentLoaded", function() {
    const modal = document.getElementById("popupOverlay");
    const closeModalBtn = document.getElementById("closeModalBtn");

    // 모달 닫기 이벤트
    closeModalBtn.addEventListener("click", function() {
        modal.style.display = "none";
    });
});
</script>

</html>