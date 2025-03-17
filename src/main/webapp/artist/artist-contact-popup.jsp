<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/artist/artist-contact-popup.css" />
<title>작가와 연락 팝업</title>
</head>
<body>
<!-- 팝업 열기 버튼 -->
<button onclick="openPopup()">작가와 연락</button>

<!-- 모달 창 -->
<div class="modal-bg" id="modalBg">
    <div class="modal">
        <button class="close-btn" onclick="closePopup()">
        	<img alt="close-icon" src="../assets/images/artist/close.png">
        </button>
        <div class="modal-title">
        	작가와 연락
        	<img class="messege-icon" alt="messege-icon" src="../assets/images/artist/messege.png">	
        </div>
        <textarea id="message" placeholder="쪽지를 입력하세요" onkeyup="countCharacters()"></textarea>
        <div class="modal-footer">
            <span id="charCount">0 / 500</span>
            <button id="sendBtn" disabled onclick="sendMessage()">전송</button>
        </div>
    </div>
</div>


</body>
<script>
    // 팝업 열기
    function openPopup() {
        document.getElementById("modalBg").style.display = "flex";
    }

    // 팝업 닫기
    function closePopup() {
        document.getElementById("modalBg").style.display = "none";
    }
   

 // 글자 수 체크 & 버튼 활성화
    function countCharacters() {
        let textArea = document.getElementById("message");
        let charCount = textArea.value.length;
        document.getElementById("charCount").textContent = charCount + " / 500";

        let sendBtn = document.getElementById("sendBtn");
        if (charCount > 0 && charCount <= 500) {
            sendBtn.disabled = false;
            sendBtn.classList.add("active");
        } else {
            sendBtn.disabled = true;
            sendBtn.classList.remove("active");
        }

        // 글자 수가 500을 넘지 않도록 제한
        if (charCount > 500) {
            textArea.value = textArea.value.substring(0, 500);  // 500자까지만 입력 가능
            document.getElementById("charCount").textContent = "500 / 500"; // 문자 수 표시 갱신
        }
    }

 	// 전송 버튼 클릭 이벤트 수정
    function sendMessage() {
        let message = document.getElementById("message").value;

        if (message.trim() === "") {
            alert("메시지를 입력하세요.");
            return;
        }

        // artist-contact-popup-ok.jsp로 이동
        location.href = "artist-contact-popup-ok.jsp";
    }
</script>

</html>