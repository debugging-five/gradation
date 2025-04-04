//	입력제한
const passwordRange = /^[a-zA-Z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?`~]*$/;

let pw = document.querySelector("#pw-input");
let pwCheck = document.querySelector("#pw-check-input");

// 눈깔 클릭
const showPassword = document.querySelector("#show-password");
const showPasswordCheck = document.querySelector("#show-password-check");

//	경고 메세지
const needPwInput = document.querySelector("#need-pw-input");
const needPwInputValid = document.querySelector("#need-pw-input-valid");
const needPwInputCheck = document.querySelector("#need-pw-input-check");

//	눈알 클릭
showPassword.addEventListener("click",() => {
	const isPw = pw.type == "password" ? true : false;
	if(isPw) {
		pw.type = "text"
		showPassword.src = "../assets/images/login/open-eye.png";
	}else {
		pw.type = "password";
		showPassword.src = "../assets/images/login/close-eye.png"
	}
})
showPasswordCheck.addEventListener("click",() => {
	const isPw = pwCheck.type == "password" ? true : false;
	if(isPw) {
		pwCheck.type = "text"
		showPasswordCheck.src = "../assets/images/login/open-eye.png";
	}else {
		pwCheck.type = "password";
		showPasswordCheck.src = "../assets/images/login/close-eye.png";
	}
})

// 회원가입 완료시 리다이렉트 코드
const queryString = new URLSearchParams(location.search);
let changeComplete = queryString.get("changeComplete");
if(changeComplete) {
	const complete = document.querySelector("#complete");
	complete.style.display = 'block';
}
// 확인 버튼
const changeButton = document.querySelector("#change-button");

const completeCloseButton = document.querySelector("#complete-close-button");

changeButton.addEventListener("click",() => {
	if(pw.value == "") {
		needPwInput.classList.add("need-write");
	}else {
		needPwInput.classList.remove("need-write");
	}
	if(pw.value == pwCheck.value) {
		needPwInputCheck.classList.remove("need-write");		
	}else {
		needPwInputCheck.classList.add("need-write");
	}
})

const allCheck = () => {
	if(
		pw.value != "" && 
		pwCheck.value != "" && 
		pw.value == pwCheck.value
	) {
		changeButton.type = "submit";
	}else {
		changeButton.type = "button";
	}
} 

pw.addEventListener("input", () => {
	allCheck();
})

pwCheck.addEventListener("input", () => {
	allCheck();
})