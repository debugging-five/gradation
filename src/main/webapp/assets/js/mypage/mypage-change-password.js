/**
 * 
 */
const changePasswordButton = document.querySelector("#change-password-button");
let pwInput;

// 경고 메세지
const needPassword = document.querySelector("#need-password");
const needPasswordCheck = document.querySelector("#need-password-check");

// 비밀번호 불일치
const queryString = new URLSearchParams(window.location.search);
const check = queryString.get("check");
if(check == "false") {
	needPasswordCheck.classList.add("need-write");
}

changePasswordButton.addEventListener("click", () => {
	pwInput = document.querySelector("#pw-input");
	console.log(pwInput.value);
	if(pwInput.value != "") {
		location.href="mypage-change-password-ok.mypage?password=" + pwInput.value;
	}else {
		needPassword.classList.add("need-write");
		needPasswordCheck.classList.remove("need-write");
	}
})