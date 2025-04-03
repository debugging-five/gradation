const submitButton = document.querySelector("#submit-button");

let checkDisplay = document.querySelector("#check-display");
let checkExhibition = document.querySelector("#check-exhibition");
let checkAuction = document.querySelector("#check-auction");
let checkMypage = document.querySelector("#check-mypage");
let checkOthers = document.querySelector("#check-others");
let qnaTitle = document.querySelector("#qna-title");
let qnaContent = document.querySelector("#qna-content");
	

// 파일 첨부
document.querySelector("#file-input").addEventListener("change", function () {
	let fileName = this.value.split("\\").pop();
	document.querySelector("#file-name").textContent = fileName;
});

// submit이 아닐때
submitButton.addEventListener("click", () => {
	if(submitButton.type != "submit"){
		alert("필수사항을 입력해 주세요");
	}
});

// submit조건
const allOk = () => {
	let checkDisplay = document.querySelector("#check-display");
	let checkExhibition = document.querySelector("#check-exhibition");
	let checkAuction = document.querySelector("#check-auction");
	let checkMypage = document.querySelector("#check-mypage");
	let checkOthers = document.querySelector("#check-others");
	let qnaTitle = document.querySelector("#qna-title");
	let qnaContent = document.querySelector("#qna-content");
	
	if((checkDisplay.checked == true ||
		checkExhibition.checked == true ||
		checkAuction.checked == true ||
		checkMypage.checked == true ||
		checkOthers.checked == true
	) && qnaTitle.value != "" && qnaContent.value != "") {
		submitButton.type = "submit";
	}
}

checkDisplay.addEventListener('click', () => {
	allOk()
});
checkExhibition.addEventListener('click', () => {
	allOk()
});
checkAuction.addEventListener('click', () => {
	allOk()
});
checkMypage.addEventListener('click', () => {
	allOk()
});
checkOthers.addEventListener('click', () => {
	allOk()
});

qnaTitle.addEventListener('input', () => {
	allOk()
});

qnaContent.addEventListener('input', () => {
	allOk()
});