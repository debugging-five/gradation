/* 기존 내용 */
const content = document.getElementById("question-content");
/* 수정할 내용 */
const textarea = document.getElementById("answer-input");
/* 버튼 */
const listBtn = document.getElementById("list-faq")
const deleteBtn = document.getElementById("delete-faq");
const modifyBtn = document.getElementById("modify-faq");
const cancelBtn = document.getElementById("cancel-faq");
const saveBtn = document.getElementById("save-faq");

modifyBtn.addEventListener("click", (e) => {
    e.preventDefault();
	/* 기존 내용을 가져와서 textarea에 삽입*/
    textarea.value = content.textContent.trim();
	/* 기존 내용 숨기고, textarea 보이게 */
    content.style.display = "none";
    textarea.style.display = "block";
	listBtn.style.display = "none";
	/* 기존 버튼 숨기고, 취소, 저장 버튼 나오게*/
	deleteBtn.style.display = "none";
    modifyBtn.style.display = "none";
	/* inline-block : inline처럼 줄 바꿈 없이 옆에 붙일 수 있고, block처럼 크기 조절 가능  */
    cancelBtn.style.display = "inline-block";
    saveBtn.style.display = "inline-block";
});

cancelBtn.addEventListener("click", (e) => {
    e.preventDefault();
    textarea.style.display = "none";
    content.style.display = "block";
	
    cancelBtn.style.display = "none";
    saveBtn.style.display = "none";
	listBtn.style.display = "inline-block";
	deleteBtn.style.display = "inline-block";
    modifyBtn.style.display = "inline-block";
});

saveBtn.addEventListener("click", (e) => {
    e.preventDefault();
    content.textContent = textarea.value;
    textarea.style.display = "none";
    content.style.display = "block";

    cancelBtn.style.display = "none";
    saveBtn.style.display = "none";
	listBtn.style.display = "inline-block";
	deleteBtn.style.display = "inline-block";
    modifyBtn.style.display = "inline-block";
});

listBtn.addEventListener("click", () => {
	location.href = 'mypage-admin-faq-list.mypage';
})

















