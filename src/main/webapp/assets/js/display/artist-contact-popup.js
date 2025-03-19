// 팝업 열기
function openPopup() {
    document.getElementById("modalBg").style.display = "flex";
}

// 팝업 닫기
function closePopup() {
    document.getElementById("modalBg").style.display = "none";
    document.getElementById("popupOverlay").style.display = "none"; // 문의 완료 모달도 닫기
}

// 글자 수 체크 & 버튼 활성화
function countCharacters() {
    let textArea = document.getElementById("message");
    let charCount = textArea.value.length;
    document.getElementById("charCount").textContent = charCount + " / 500";

    let sendBtn = document.getElementById("sendBtn");
    sendBtn.disabled = !(charCount > 0 && charCount <= 500);

    // 글자 수 제한
    if (charCount > 500) {
        textArea.value = textArea.value.substring(0, 500);
        document.getElementById("charCount").textContent = "500 / 500";
    }
}




// 전송 버튼 클릭 시 "문의 등록 완료" 모달 표시
function sendMessage() {
    let message = document.getElementById("message").value;

    if (message.trim() === "") {
        alert("메시지를 입력하세요.");
        return;
    }

    // 기존 입력창 숨기고 "문의 완료" 모달 표시
    document.getElementById("modalBg").style.display = "none";
    document.getElementById("popupOverlay").style.display = "flex";
}

// "확인" 버튼 클릭 시 팝업 닫기
document.getElementById("closeModalBtn").addEventListener("click", function() {
    closePopup();
});