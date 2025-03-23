const listButton = document.getElementById("list-button");
const deleteButton = document.getElementById("delete-button");
const modifyButton = document.getElementById("modify-button");

/* 내 활동 / 작가와 연락 리스트 페이지로 이동 */
listButton.addEventListener("click", () => {
	location.href = "mypage-contact-artist-list.mypage";
});

