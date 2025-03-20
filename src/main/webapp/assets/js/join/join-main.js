// 객체 초기화
let idCheck = document.querySelector("#id-check-ok");
let mailCode = document.querySelector("#mail-code");
let mailCheck = "" + document.querySelector("email-check-ok").value;

// 회원가입 완료시 리다이렉트 코드
let isComplete = document.querySelector("#is-complete");
if(isComplete.value == "true"){
	const joinSuccess = document.querySelector("#join-success");
	joinSuccess.style.display = 'block';
}

let id = document.querySelector("#id-input");
let pw = document.querySelector("#pw-input");
let pwCheck = document.querySelector("#pw-check-input");
let uname = document.querySelector("#name-input");
let nickname = document.querySelector("#nickname-input");
let phone = document.querySelector("#phone-input");
let email = document.querySelector("#email-input");
let emailcheck = document.querySelector("#email-check-input");

let checkAll = document.querySelector("#check_all")
let checkUp14 = document.querySelector("#check-up14");
let checkService = document.querySelector("#check-service");
let checkNeedPrivate = document.querySelector("#check-need-private");
let checkPrivate = document.querySelector("#check-private");

//무결성 확인 함수
const allOk = () => {
	id = document.querySelector("#id-input");
	pw = document.querySelector("#pw-input");
	pwCheck = document.querySelector("#pw-check-input");
	uname = document.querySelector("#name-input");
	nickname = document.querySelector("#nickname-input");
	phone = document.querySelector("#phone-input");
	email = document.querySelector("#email-input");
	emailcheck = document.querySelector("#email-check-input");

	checkAll = document.querySelector("#check-all")
	checkUp14 = document.querySelector("#check-up14");
	checkService = document.querySelector("#check-service");
	checkNeedPrivate = document.querySelector("#check-need-private");
	checkPrivate = document.querySelector("#check-private");
	
//	인풋박스 유효성 검사

	if(	idCheck.value == "true" &&
		mailCheck.value == "true" &&
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
// 	중복 확인 버튼
const idCheckButton = document.querySelector("#id-check-button");

// 	회원가입 버튼
const joinButton = document.querySelector("#join-button");

// 	이메일 인증 전송 버튼
const emailCheckButton = document.querySelector("#email-check-button");

//	이메일 인증 버튼
const emailCheckButtonVerify = document.querySelector("#email-check-button-verify");

// 	검사 시작
allOk();

/*중복확인 버튼 클릭 시 컨트롤러로 리다이렉션*/
idCheckButton.addEventListener("click", () => {
	if(id.value) {
		location.href = 
			'id-check.user?userId=' + id.value +
			'&userPassword=' + pw.value +
			'&checkUserPassword=' + pwCheck.value +
			'&userName=' + uname.value +
			'&userNickname=' + nickname.value +
			'&userPhone=' + phone.value +
			'&userEmail=' + email.value +
			'&checkUserEmail=' + emailcheck.value;
	}else {
		console.log("입력 필요함")
	}
});

// 이메일 인증 눌렀을 때 무결성 검사, 컨트롤러 태우기
emailCheckButton.addEventListener("click",() => {
	if(email.value) {
		location.href =
			'email-check.user?userId=' + id.value +
			'&userPassword=' + pw.value +
			'&checkUserPassword=' + pwCheck.value +
			'&userName=' + uname.value +
			'&userNickname=' + nickname.value +
			'&userPhone=' + phone.value +
			'&userEmail=' + email.value +
			'&checkUserEmail=' + emailcheck.value;
			console.log("잘 타냐?");
	}else {
		console.log("이메일 입력 필요");
	}
});

//	메일인증
emailCheckButtonVerify.addEventListener("click",() => {
	if(emailcheck.value) {
		if(mailCode.value == emailcheck.value) {
			mailCheck.value = "true";
		}else {
			console.log("인증번호 불일치");
		}
	}else {
		console.log("인증번호 입력 필요");
	}
});

// 입력에 대한 이벤트
id.addEventListener("input", () => {
//	입력이 일어남 = 값이 변동됨 = 재검사 해야됨
	idCheck.value = "false";
	allOk();
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
	mailCheck.value = "false";
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




