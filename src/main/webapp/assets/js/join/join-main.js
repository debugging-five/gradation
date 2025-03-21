// 입력제한용 변수
const engAndNum = /^[a-zA-Z0-9]+$/;
const passwordRange = /^[a-zA-Z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?`~]*$/;
const isEmail = /[@]/;

// 인풋 객체 초기화
let idCheck = document.querySelector("#id-check-ok");
let mailCode = document.querySelector("#mail-code");
let emailChecked = document.querySelector("#email-check-ok");
let emailAlready = document.querySelector("#email-already");

let id = document.querySelector("#id-input");
let pw = document.querySelector("#pw-input");
let pwCheck = document.querySelector("#pw-check-input");
let uname = document.querySelector("#name-input");
let nickname = document.querySelector("#nickname-input");
let phone = document.querySelector("#phone-input");
let email = document.querySelector("#email-input");
let emailCheck = document.querySelector("#email-check-input");

let checkAll = document.querySelector("#check_all")
let checkUp14 = document.querySelector("#check-up14");
let checkService = document.querySelector("#check-service");
let checkNeedPrivate = document.querySelector("#check-need-private");
let checkPrivate = document.querySelector("#check-private");

// 	중복 확인 버튼
const idCheckButton = document.querySelector("#id-check-button");

// 	회원가입 버튼
const joinButton = document.querySelector("#join-button");

// 	이메일 인증 전송 버튼
const emailCheckButton = document.querySelector("#email-check-button");

//	이메일 인증 버튼
const emailCheckButtonVerify = document.querySelector("#email-check-button-verify");

// 오류메세지 객체
const needIdCheck = document.querySelector("#need-id-check");
const alreadyUseId = document.querySelector("#already-use-id");
const needIdValidate = document.querySelector("#need-id-validate");
const needPwInput = document.querySelector("#need-pw-input");
const needPwInputCheck = document.querySelector("#need-pw-input-check");
const needPwInputValidate = document.querySelector("#need-pw-input-validate");
const needNameInput = document.querySelector("#need-name-input");
const needPhoneInput = document.querySelector("#need-phone-input");
const needEmailCheck = document.querySelector("#need-email-check");
const alreadyUseEmail = document.querySelector("#already-use-email");
const needEmailValidate = document.querySelector("#need-email-validate");
const needEmailCheckValidate = document.querySelector("#need-email-check-validate");

// 완료 메세지
const emailCompleate = document.querySelector("#email-compleate");
const emailCheckCompleate = document.querySelector("#email-check-compleate");


// 눈깔 클릭
const showPassword = document.querySelector("#show-password");
const showPasswordCheck = document.querySelector("#show-password-check");

showPassword.addEventListener("click",() => {
	const isPw = pw.type == "password" ? true : false;
	if(isPw) {
		pw.type = "text"
		showPassword.src = "../assets/images/join/open-eye.png";
	}else {
		pw.type = "password";
		showPassword.src = "../assets/images/join/close-eye.png"
	}
})
showPasswordCheck.addEventListener("click",() => {
	const isPw = pwCheck.type == "password" ? true : false;
	if(isPw) {
		pwCheck.type = "text"
		showPasswordCheck.src = "../assets/images/join/open-eye.png";
	}else {
		pwCheck.type = "password";
		showPasswordCheck.src = "../assets/images/join/close-eye.png";
	}
})

// 회원가입 완료시 리다이렉트 코드
let isComplete = document.querySelector("#is-complete");
if(isComplete.value == "true"){
	const joinSuccess = document.querySelector("#join-success");
	joinSuccess.style.display = 'block';
}

//	리다이렉트시 요소 처리
//	아이디 인증 완료, 미완료
const idCheckDesign = () => {
	if(idCheck.value == "true") {
		idCheckButton.textContent = "중복 체크 완료"
		idCheckButton.style.backgroundColor = "var(--color-primary)";
		alreadyUseId.classList.remove("need-write");
	}else if(idCheck.value == "already") {
		idCheckButton.textContent = "중복 체크"
		idCheckButton.style.backgroundColor = "var(--color-gray500)";
		alreadyUseId.classList.add("need-write");
	}else if(idCheck.value == "false") {
		idCheckButton.textContent = "중복 체크"
		idCheckButton.style.backgroundColor = "var(--color-gray500)";
		alreadyUseId.classList.remove("need-write");
	}
}

// 이메일 발송 완료, 미완료
const emailCheckDesign = () => {
	if(mailCode.value == "") {
		emailCheckButton.textContent = "이메일 인증"
		emailCheckButton.style.backgroundColor = "var(--color-gray500)";
		emailCompleate.classList.remove("complete-write");
		needEmailCheckValidate.classList.remove("need-write");		
	}else {		
		emailCheckButton.textContent = "이메일 재발송"
		emailCheckButton.style.backgroundColor = "var(--color-primary)";
		alreadyUseEmail.classList.remove("need-write");
		emailCompleate.classList.add("complete-write");
	}
}

//	이메일 중복여부 검사
const isEmailDup = () => {
	if(emailAlready.value == "true") {
		alreadyUseEmail.classList.add("need-write");
		needEmailCheck.classList.remove("need-write");
		needEmailCheckValidate.classList.remove("need-write");
	}else {
		alreadyUseEmail.classList.remove("need-write");
		needEmailCheckValidate.classList.remove("need-write");
	}	
}

//	이메일 인증여부 검사
const isEmailChecked = () => {
	if(emailChecked.value == "true") {
		emailCheckButtonVerify.textContent = "인증 완료"
		emailCheckButtonVerify.style.backgroundColor = "var(--color-primary)";
		needEmailCheckValidate.classList.remove("need-write");
		emailCheckCompleate.classList.add("complete-write");
	}else if(emailChecked.value == "false"){
		emailCheckButtonVerify.textContent = "인증 번호 확인"
		emailCheckButtonVerify.style.backgroundColor = "var(--color-gray500)";
		emailCheckCompleate.classList.remove("complete-write");
		needEmailCheckValidate.classList.add("need-write");
	}
}

//	무결성 확인 함수
const allOk = () => {
	id = document.querySelector("#id-input");
	pw = document.querySelector("#pw-input");
	pwCheck = document.querySelector("#pw-check-input");
	uname = document.querySelector("#name-input");
	nickname = document.querySelector("#nickname-input");
	phone = document.querySelector("#phone-input");
	email = document.querySelector("#email-input");
	emailCheck = document.querySelector("#email-check-input");

	checkAll = document.querySelector("#check-all")
	checkUp14 = document.querySelector("#check-up14");
	checkService = document.querySelector("#check-service");
	checkNeedPrivate = document.querySelector("#check-need-private");
	checkPrivate = document.querySelector("#check-private");
	
//	인풋박스 유효성 검사

	if(	idCheck.value == "true" &&
		emailChecked.value == "true" &&
		pwCheck.value == pw.value &&
	 	pw.value &&
		pwCheck.value &&
		uname.value &&
		nickname.value && 
		phone.value &&
		email.value &&
		checkUp14.checked &&
		checkService.checked &&
		checkNeedPrivate.checked
		) {			
		joinButton.type = 'submit';
		joinButton.style.backgroundColor = 'var(--color-primary)'
	}else {
		joinButton.type = 'button';
		joinButton.style.backgroundColor = 'var(--color-gray500)'
	}
	
}

//	기본 검사 시작
allOk();
idCheckDesign();
emailCheckDesign();
isEmailDup();
isEmailChecked();

// !!테스트용 삭제 필!!
const joinSuccess = document.querySelector("#join-success");
joinSuccess.style.display = 'block';

//	아이디 중복확인 버튼 클릭
idCheckButton.addEventListener("click", () => {
	let idLength = id.value.length
	if(id.value) {
		if(idLength >= 6 && idLength <= 20 && engAndNum.test(id.value)) {
			location.href = 
				'id-check.user?userId=' + encodeURIComponent(id.value) +
				'&userPassword=' + encodeURIComponent(pw.value) +
				'&checkUserPassword=' + encodeURIComponent(pwCheck.value) +
				'&userName=' + encodeURIComponent(uname.value) +
				'&userNickname=' + encodeURIComponent(nickname.value) +
				'&userPhone=' + encodeURIComponent(phone.value) +
				'&userEmail=' + encodeURIComponent(email.value) +
				'&checkUserEmail=' + encodeURIComponent(emailCheck.value) +
				'&code=' + encodeURIComponent(mailCode.value) +
				'&emailChecked=' + encodeURIComponent(emailChecked.value);
				
		}else {
			needIdValidate.classList.add("need-write");
			needIdCheck.classList.remove("need-write");
		}
	}else {
	}
});

// 이메일 발송 버튼 클릭
emailCheckButton.addEventListener("click",() => {
	if(email.value) {
		if(isEmail.test(email.value)) {
				location.href =
					'email-check.user?userId=' + encodeURIComponent(id.value) +
					'&userPassword=' + encodeURIComponent(pw.value) +
					'&checkUserPassword=' + encodeURIComponent(pwCheck.value) +
					'&userName=' + encodeURIComponent(uname.value) +
					'&userNickname=' + encodeURIComponent(nickname.value) +
					'&userPhone=' + encodeURIComponent(phone.value) +
					'&userEmail=' + encodeURIComponent(email.value) +
					'&checkUserEmail=' + encodeURIComponent(emailCheck.value) +
					'&code=' + encodeURIComponent(mailCode.value) + 
					'&checkId=' + encodeURIComponent(idCheck.value);							
		}else {
			needEmailValidate.classList.add("need-write");
			alreadyUseEmail.classList.remove("need-write");
			emailCompleate.classList.remove("complete-write");
		}
	}else {
		needEmailValidate.classList.add("need-write")
		alreadyUseEmail.classList.remove("need-write")
		emailCompleate.classList.remove("complete-write");
	}
});

//	메일코드 인증버튼 클릭
emailCheckButtonVerify.addEventListener("click",() => {
	if(emailCheck.value) {
		location.href =
			'email-check-verify.user?userId=' + encodeURIComponent(id.value) +
			'&userPassword=' + encodeURIComponent(pw.value) +
			'&checkUserPassword=' + encodeURIComponent(pwCheck.value) +
			'&userName=' + encodeURIComponent(uname.value) +
			'&userNickname=' + encodeURIComponent(nickname.value) +
			'&userPhone=' + encodeURIComponent(phone.value) +
			'&userEmail=' + encodeURIComponent(email.value) +
			'&checkUserEmail=' + encodeURIComponent(emailCheck.value) +
			'&code=' + encodeURIComponent(mailCode.value) +
			'&checkId=' + encodeURIComponent(idCheck.value);
	}else {
		console.log("인증번호 입력 필요");
	}
});

// 입력에 대한 이벤트
id.addEventListener("input", () => {
//	입력이 일어남 = 값이 변동됨 = 재검사 해야됨
	idCheck.value = "false";
	idCheckDesign()
	let idLength = id.value.length 
//	입력이 조건을 만족할 때
	if(idLength >= 6 && idLength <= 20) allOk();
})
pw.addEventListener("input", () => {
	allOk();
})
pwCheck.addEventListener("input", () => {
	allOk();
})
uname.addEventListener("input", () => {
	allOk();
})
nickname.addEventListener("input", () => {
	allOk();
})
phone.addEventListener("input", () => {
	allOk();
})
email.addEventListener("input", () => {
	emailChecked.value = "false";
	mailCode.value = "";
	allOk();
})

// 체크박스 체크에 대한 이벤트
checkAll.addEventListener("click", () => {
	if(checkAll.checked) {
		checkUp14.checked = true
		checkService.checked = true
		checkNeedPrivate.checked = true
		checkPrivate.checked = true
	}else {
		checkUp14.checked = false
		checkService.checked = false
		checkNeedPrivate.checked = false
		checkPrivate.checked = false
	}
	allOk();
})


checkUp14.addEventListener("click", () => {
	if(!checkUp14.checked) {
		checkAll.checked = false
	}
	allOk();
});
checkService.addEventListener("click", () => {
	if(!checkService.checked) {
		checkAll.checked = false
	}
	allOk();
});
checkNeedPrivate.addEventListener("click", () => {
	if(!checkNeedPrivate.checked) {
		checkAll.checked = false
	}
	allOk();
});
checkPrivate.addEventListener("click", () => {
	if(!checkPrivate.checked) {
		checkAll.checked = false
	}
	allOk();
});

// 회색 회원가입 버튼 클릭 시
joinButton.addEventListener("click", () => {
	if(idCheck.value != "true") {
		needIdCheck.classList.add("need-write");
		alreadyUseId.classList.remove("need-write");
		needIdValidate.classList.remove("need-write");
	}else {
		needIdCheck.classList.remove("need-write");
	}
	
	if(passwordRange.test(pw.value) && pw.value.length >= 8 && pw.value.length <= 12) {
		needPwInputValidate.classList.remove("need-write");
	}else {
		needPwInputValidate.classList.add("need-write");
		if(pw.value == "") {
				needPwInputValidate.classList.remove("need-write");
				needPwInput.classList.add("need-write");
			}else {
				needPwInput.classList.remove("need-write");		
			}
	}
	if(pwCheck.value != pw.value){
		needPwInputCheck.classList.add("need-write");
	}else {
		needPwInputCheck.classList.remove("need-write");		
	}
	if(uname.value == "") {
		needNameInput.classList.add("need-write");
	}else {
		needNameInput.classList.remove("need-write");
	}
	if(phone.value == "") {
		needPhoneInput.classList.add("need-write");
	}else {
		needPhoneInput.classList.remove("need-write");
	}
	if(phone.value == "") {
		needPhoneInput.classList.add("need-write");
	}else {
		needPhoneInput.classList.remove("need-write");
	}
	if(emailChecked.value == "" || emailChecked.value == "false") {
		needEmailCheck.classList.add("need-write");
		needEmailCheckValidate.classList.remove("need-write");
	}else {
		needEmailCheck.classList.remove("need-write");		
		needEmailCheckValidate.classList.remove("need-write");
	}
	console.log(emailChecked.value)
})