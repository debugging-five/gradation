// 입력제한용 변수
let replaceChar = /[~!@\#$%^&*\()\-=+_'\;<>0-9\/.\`:\"\\,\[\]?|{}]/gi;
let replaceNotFullKorean = /[ㄱ-ㅎㅏ-ㅣ]/gi;

// 인풋 객체 초기화
let idCheck = document.querySelector("#id-check-ok");
let mailCode = document.querySelector("#mail-code");
let mailCheck = document.querySelector("#email-check-ok");

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

// 회원가입 완료시 리다이렉트 코드
let isComplete = document.querySelector("#is-complete");
if(isComplete.value == "true"){
	const joinSuccess = document.querySelector("#join-success");
	joinSuccess.style.display = 'block';
}

//	리다이렉트시 요소 처리
//	아이디 인증 완료, 미완료
if(idCheck.value == "true") {
	idCheckButton.textContent = "중복 체크 완료"
	idCheckButton.style.backgroundColor = "var(--color-primary)";
	alreadyUseId.classList.remove("need-write");
}
if(idCheck.value == "false") {
	idCheckButton.style.backgroundColor = "var(--color-gray500)";
	alreadyUseId.classList.add("need-write");
}

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

// 	검사 시작
allOk();

// 아이디 중복확인 버튼 클릭
idCheckButton.addEventListener("click", () => {
	let idLength = id.value.length
	if(id.value) {
		if(idLength >= 6 && idLength <= 20) {
			location.href = 
				'id-check.user?userId=' + id.value +
				'&userPassword=' + pw.value +
				'&checkUserPassword=' + pwCheck.value +
				'&userName=' + uname.value +
				'&userNickname=' + nickname.value +
				'&userPhone=' + phone.value +
				'&userEmail=' + email.value +
				'&checkUserEmail=' + emailcheck.value +
				'&code=' + mailCode.value;
		}else {
			console.log("아이디가 6~20 아님")
		}
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
			'&checkUserEmail=' + emailcheck.value +
			'&code=' + mailCode.value;
			console.log("잘 타냐?");
	}else {
		console.log("이메일 입력 필요");
	}
});

//	메일인증
emailCheckButtonVerify.addEventListener("click",() => {
	if(emailcheck.value) {
		location.href =
			'email-check-verify.user?userId=' + id.value +
			'&userPassword=' + pw.value +
			'&checkUserPassword=' + pwCheck.value +
			'&userName=' + uname.value +
			'&userNickname=' + nickname.value +
			'&userPhone=' + phone.value +
			'&userEmail=' + email.value +
			'&checkUserEmail=' + emailcheck.value +
			'&code=' + mailCode.value;
	}else {
		console.log("인증번호 입력 필요");
	}
});

// 입력에 대한 이벤트
id.addEventListener("input", () => {
//	입력이 일어남 = 값이 변동됨 = 재검사 해야됨
	idCheck.value = "false";
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

// 회색 회원가입 버튼 클릭 시
joinButton.addEventListener("click", () => {
	console.log("조건만족안됨");
	console.log("idCheck.value:", idCheck.value);
	if(idCheck.value != "true") {
		needIdCheck.classList.add("need-write");
		alreadyUseId.classList.remove("need-write");
	}else {
		needIdCheck.classList.remove("need-write");
		
	}
	console.log("mailCheck.value:", mailCheck.value);
	console.log("pw.value:", pw.value);
	console.log("pwCheck.value:", pwCheck.value);
	console.log("uname.value:", uname.value);
	console.log("nickname.value:", nickname.value);
	console.log("phone.value:", phone.value);
	console.log("email.value:", email.value);
	console.log("checkUp14.checked:", checkUp14.checked);
	console.log("checkService.checked:", checkService.checked);
	console.log("checkNeedPrivate.checked:", checkNeedPrivate.checked);
})