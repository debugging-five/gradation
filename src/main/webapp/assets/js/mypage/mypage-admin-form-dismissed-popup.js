document.addEventListener("DOMContentLoaded", function () {
    // 팝업 열기
    document.querySelector(".openPopupBtn").addEventListener("click", openPopup);

    // 팝업 닫기
    document.querySelectorAll(".closeBtn").forEach(button => {
        button.addEventListener("click", function () {
            closePopup("modalBg");
        });
    });

    // 글자 수 체크 & 버튼 활성화
    document.querySelector("#message").addEventListener("keyup", countCharacters);

    // "전송" 버튼 클릭 시 실행되는 함수
    document.querySelector(".sendBtn").addEventListener("click", sendMessage);

    // "등록하시겠습니까?"에서 확인 버튼 클릭 시 실행되는 함수
    document.querySelector(".send").addEventListener("click", confirmSubmission);

    // "등록되었습니다!" 모달에서 확인 버튼 클릭 시 모든 팝업 닫기
    document.querySelector("#popupOverlay .send").addEventListener("click", function () {
        closePopup("modalBg");  // 기각 팝업 닫기
        closePopup("popupOverlay");  // 등록 완료 팝업 닫기
    });

    // "취소" 버튼 클릭 시 실행되는 함수
    document.querySelector(".cancel").addEventListener("click", function () {
        closePopup("modalBg2");  // "등록하시겠습니까?" 팝업 닫기
    });
});

// 팝업 열기
function openPopup() {
    document.getElementById("modalBg").style.display = "flex";
}

// 팝업 닫기 (특정 ID만 닫을 수 있도록 수정)
function closePopup(popupId) {
    document.getElementById(popupId).style.display = "none";
}

// 글자 수 체크 & 버튼 활성화
function countCharacters() {
    let textArea = document.getElementById("message");
    let charCount = textArea.value.length;
    document.getElementById("charCount").textContent = charCount + " / 500";

    let sendBtn = document.querySelector(".sendBtn");
    if (charCount > 0 && charCount <= 500) {
        sendBtn.disabled = false;
        sendBtn.classList.add("active");
    } else {
        sendBtn.disabled = true;
        sendBtn.classList.remove("active");
    }

    // 글자 수 제한 (최대 500자)
    if (charCount > 500) {
        textArea.value = textArea.value.substring(0, 500);
        document.getElementById("charCount").textContent = "500 / 500";
    }
}

// "전송" 버튼 클릭 시 실행되는 함수 (팝업을 닫지 않고 위에 등록 확인 팝업 띄우기)
function sendMessage() {
    let message = document.getElementById("message").value.trim();

    if (message === "") {
        alert("메시지를 입력하세요.");
        return;
    }

    // "등록하시겠습니까?" 팝업 띄우기 (기존 기각 팝업은 닫지 않음)
    document.getElementById("modalBg2").style.display = "flex";
}

// "등록하시겠습니까?"에서 확인 버튼 클릭 시 실행되는 함수
function confirmSubmission() {
    // "등록하시겠습니까?" 팝업 닫기
    closePopup("modalBg2");

    // "등록 완료!" 팝업 띄우기
    document.getElementById("popupOverlay").style.display = "flex";
}
