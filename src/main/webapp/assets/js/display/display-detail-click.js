

/* ...버튼 속에 수정과 삭제 */
document.addEventListener("DOMContentLoaded", function () {
    const dropdownBtn = document.querySelector(".dropdown-btn");
    const dropdownMenu = document.querySelector(".dropdown-menu");

    // 버튼 클릭 시 드롭다운 표시/숨김
    dropdownBtn.addEventListener("click", function (event) {
        event.stopPropagation();  // 이벤트 버블링 방지
        dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
    });

    // 바깥 영역 클릭 시 드롭다운 닫기
    document.addEventListener("click", function () {
        dropdownMenu.style.display = "none";
    });

    // 드롭다운 내부 클릭 시 닫히지 않도록
    dropdownMenu.addEventListener("click", function (event) {
        event.stopPropagation();
    });
});


/* 등록순 버튼 속에 등록순과 좋아요순 */
document.addEventListener("DOMContentLoaded", function () {
    const dropdownBtn2 = document.querySelector(".dropdown-btn-2");
    const dropdownMenu2 = document.querySelector(".dropdown-menu-2");

    // 버튼 클릭 시 드롭다운 표시/숨김
    dropdownBtn2.addEventListener("click", function (event) {
        event.stopPropagation();  // 이벤트 버블링 방지
        dropdownMenu2.style.display = dropdownMenu2.style.display === "block" ? "none" : "block";
    });

    // 바깥 영역 클릭 시 드롭다운 닫기
    document.addEventListener("click", function () {
        dropdownMenu2.style.display = "none";
    });

    // 드롭다운 내부 클릭 시 닫히지 않도록
    dropdownMenu2.addEventListener("click", function (event) {
        event.stopPropagation();
    });
});


/* 댓글 등록 눌렀을때  */
/* 댓글 등록 버튼 눌렀을 때 */
function openPopup() {
    let commentText = document.querySelector(".comment-typing").value.trim();

    if (commentText === "") {
        // 댓글이 비어 있으면 "댓글을 입력하세요." 팝업 띄우기
        document.getElementById("emptyCommentPopup").style.display = "flex";
    } else {
        // 댓글이 있으면 "댓글을 등록하시겠습니까?" 팝업 띄우기
        document.getElementById("modalBg").style.display = "flex";
    }
}

// 특정 팝업 닫기
function closePopup(id) {
    document.getElementById(id).style.display = "none";
}

// "댓글을 등록하시겠습니까?"에서 확인 버튼을 눌렀을 때 실행
function confirmSubmission() {
    document.getElementById("modalBg").style.display = "none";  // 기존 모달 닫기
    document.getElementById("popupOverlay").style.display = "flex"; // "댓글이 등록되었습니다!" 모달 띄우기
}

// "댓글이 등록되었습니다!" 모달에서 확인 버튼 클릭 시 팝업 닫기
document.querySelector("#popupOverlay .send").addEventListener("click", function () {
    closePopup("popupOverlay");
});




/* 기존 요소들 */
const content = document.getElementById("question-content");
const textarea = document.getElementById("answer-input");
const answerInputWrapper = document.getElementById("answer-input1");
const likeContainer = document.querySelector(".comment-like-container"); // 좋아요 버튼 컨테이너
const dropdownContainer = document.querySelector(".dropdown-container"); // 드롭다운 버튼 컨테이너 추가

/* 버튼 */
const deleteBtn = document.getElementById("delete-faq");
const modifyBtn = document.getElementById("modify-faq");
const cancelBtn = document.getElementById("cancel-faq");
const saveBtn = document.getElementById("save-faq");

modifyBtn.addEventListener("click", (e) => {
    e.preventDefault();

    /* 기존 내용을 가져와서 textarea에 삽입 */
    textarea.value = content.textContent.trim();

    /* 기존 내용 숨기고, textarea 및 answer-input1 보이게 */
    content.style.display = "none";
    textarea.style.display = "block";
    answerInputWrapper.style.display = "block";

    /* 좋아요 버튼 및 드롭다운 버튼 숨기기 */
    likeContainer.style.display = "none"; 
    dropdownContainer.style.display = "none"; // 추가된 부분

    /* 기존 버튼 숨기고, 취소, 저장 버튼 보이게 */
    deleteBtn.style.display = "none";
    modifyBtn.style.display = "none";
    cancelBtn.style.display = "inline-block";
    saveBtn.style.display = "inline-block";
});

cancelBtn.addEventListener("click", (e) => {
    e.preventDefault();

    /* textarea 및 answer-input1 다시 숨기기 */
    textarea.style.display = "none";
    answerInputWrapper.style.display = "none";
    content.style.display = "block";

    /* 좋아요 버튼 및 드롭다운 버튼 다시 보이기 */
    likeContainer.style.display = "block"; 
    dropdownContainer.style.display = "block"; // 추가된 부분

    /* 취소, 저장 버튼 숨기고 수정/삭제 버튼 다시 보이게 */
    cancelBtn.style.display = "none";
    saveBtn.style.display = "none";
    deleteBtn.style.display = "inline-block";
    modifyBtn.style.display = "inline-block";
});

saveBtn.addEventListener("click", (e) => {
    e.preventDefault();

    /* textarea 값 저장 후 기존 텍스트 보이기 */
    content.textContent = textarea.value;

    /* textarea 및 answer-input1 다시 숨기기 */
    textarea.style.display = "none";
    answerInputWrapper.style.display = "none";
    content.style.display = "block";

    /* 좋아요 버튼 및 드롭다운 버튼 다시 보이기 */
    likeContainer.style.display = "block"; 
    dropdownContainer.style.display = "block"; // 추가된 부분

    /* 취소, 저장 버튼 숨기고 수정/삭제 버튼 다시 보이게 */
    cancelBtn.style.display = "none";
    saveBtn.style.display = "none";
    deleteBtn.style.display = "inline-block";
    modifyBtn.style.display = "inline-block";
});



