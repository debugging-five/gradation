document.addEventListener("DOMContentLoaded", function () {
    // 팝업 열기
    document.querySelector(".openPopupBtn-ok").addEventListener("click", openPopupOk);

    // 팝업 닫기
    document.querySelectorAll(".close-btn").forEach(button => {
        button.addEventListener("click", function () {
            closePopupOk("modalBg2-ok");
        });
    });

    // "정말로 승인하시겠습니까?"에서 확인 버튼 클릭 시 실행되는 함수
    document.querySelector(".send-ok").addEventListener("click", confirmSubmissionOk);

    // 승인 완료 팝업에서 확인 버튼 클릭 시 모든 팝업 닫기
    document.querySelector("#popupOverlay-ok .send-ok").addEventListener("click", function () {
        closePopupOk("modalBg2-ok");  // 승인 팝업 닫기
        closePopupOk("popupOverlay-ok");  // 승인 완료 팝업 닫기
    });
});

// 팝업 열기
function openPopupOk() {
    document.getElementById("modalBg2-ok").style.display = "flex";
}

// 팝업 닫기 (특정 ID만 닫을 수 있도록 수정)
function closePopupOk(popupId) {
    document.getElementById(popupId).style.display = "none";
}

// "등록하시겠습니까?"에서 확인 버튼 클릭 시 실행되는 함수
function confirmSubmissionOk() {
    // "등록하시겠습니까?" 팝업 닫기
    closePopupOk("modalBg2-ok");

    // "등록 완료!" 팝업 띄우기
    document.getElementById("popupOverlay-ok").style.display = "flex";
}