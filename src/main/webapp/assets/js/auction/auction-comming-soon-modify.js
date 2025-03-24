const modifyButton = document.querySelector("#button-modify");
const listButton = document.querySelector("#button-list");

/* 경매 수정 페이지로 이동*/
modifyButton.addEventListener("click", () => {
	location.href = "auction-in-modify-form.auction"; 
});

/* 경매 메인 페이지로 이동 */
listButton.addEventListener("click", () => {
	location.href = "auction-main.auction";
});


