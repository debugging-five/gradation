// 팝업 열기
function openPopup() {
    document.getElementById("modalBg").style.display = "flex";
}

// 팝업 닫기
function closePopup() {
    document.getElementById("modalBg").style.display = "none";
    document.getElementById("popupOverlay").style.display = "none"; // 문의 완료 모달도 닫기
}