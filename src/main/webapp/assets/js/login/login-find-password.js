/**
 * 
 */
const findPasswordButton = document.querySelector("#find-password-button")

//	인증값
let passwordMailCode = document.querySelector("#password-mail-code");
let checkEmail = document.querySelector("#check-email");
//	input 초기화
let userId = document.querySelector("#user-id");
let userName = document.querySelector("#user-name");
let userEmail = document.querySelector("#user-email");
let userCode = document.querySelector("#user-code");

//	아이디 조회창
const idAccount = document.querySelector("#id-account")
//	삭제하기

// 	이메일 인증 전송 버튼
const emailCheckButton = document.querySelector("#email-check-button");

//	인증번호 확인 버튼
const codeCheckButton = document.querySelector("#code-check-button");

//	아이디 조회 버튼
const findIdButton = document.querySelector("#find-id-button");

//	아이디 창 닫기 버튼
const findIdCloseButton = document.querySelector("#find-id-close-button");

//	오류 메세지
const needNameInput = document.querySelector("#need-name-input");
const needEmailCheck = document.querySelector("#need-email-check");

//	완료 메세지
const emailComplete = document.querySelector("#email-complete");
const emailCheckComplete = document.querySelector("#email-check-compleate");
const needEmailCheckValidate = document.querySelector("#need-email-check-validate");
const needEmailValidate = document.querySelector("#need-email-validate");

//	아이디 찾기 type : submit 변경 조건
const update = () => {
//	필드 재정의
	userName = document.querySelector("#user-name");
	userEmail = document.querySelector("#user-email");
	userCode = document.querySelector("#user-code");
}

//	총합검증
const checkAll = () => {
	if(userName.value == "") {
		needNameInput.classList.add("need-write");
	}else {
		needNameInput.classList.remove("need-write");
	}
	if(checkEmail.value == "" || checkEmail.value == "false") {
		needEmailCheck.classList.add("need-write");
		needEmailCheckValidate.classList.remove("need-write");
	}else {
		needEmailCheck.classList.remove("need-write");		
		needEmailCheckValidate.classList.remove("need-write");
	}
	
	
}
// 이메일 발송 완료, 미완료
const emailCheckDesign = () => {
	if(passwordMailCode.value == "") {
		emailCheckButton.textContent = "이메일 인증"
		emailCheckButton.style.backgroundColor = "var(--color-gray500)";
	}else if(passwordMailCode.value == "false") {
		console.log("유효하지 않은 사용자")
		needEmailValidate.classList.add("need-write");
	}else {		
		emailCheckButton.textContent = "이메일 재발송"
		emailCheckButton.style.backgroundColor = "var(--color-primary)";
		emailComplete.classList.add("complete-write");
	}
}

// 이메일 발송 버튼 클릭
emailCheckButton.addEventListener("click",() => {
	if(userEmail.value && userName.value) {
		location.href =
			'login-find-password-send-email.user?userId=' + encodeURIComponent(userId.value) +
			'&userName=' + encodeURIComponent(userName.value) +
			'&userEmail=' + encodeURIComponent(userEmail.value) +
			'&userCode=' + encodeURIComponent(userCode.value);							
	}else {
	}
});

// 인증번호 확인 버튼 클릭
codeCheckButton.addEventListener("click",() => {
	needEmailCheck.classList.remove("need-write");
	if(userCode.value == passwordMailCode.value && userCode.value != "") {
		findIdButton.type = "submit";
		codeCheckButton.style.backgroundColor = 'var(--color-primary)'
		emailCheckComplete.classList.add("complete-write");
		needEmailCheckValidate.classList.remove("need-write");
	}else {
		findIdButton.type = 'button';
		codeCheckButton.style.backgroundColor = 'var(--color-gray500)'
		emailCheckComplete.classList.remove("complete-write");
		needEmailCheckValidate.classList.add("need-write");
	}
})

// 메인검증
emailCheckDesign();


findIdButton.addEventListener("click",() => {
	checkAll();
})