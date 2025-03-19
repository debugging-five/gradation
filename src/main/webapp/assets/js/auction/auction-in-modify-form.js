/**
 * 
 */

const cancelButton = document.getElementById("cancel-button")

/* 취소버튼 눌렀을 때 auction-comming-soon-modify으로 돌아가기*/
cancelButton.addEventListener("click", () => {
    location.href = "/auction/modify-ok.auction";
});
