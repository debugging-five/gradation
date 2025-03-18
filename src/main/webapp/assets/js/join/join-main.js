// 객체 초기화
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
	
	if(	isIdChecked == "true" &&
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
// 중복 확인 버튼
const idCheckButton = document.querySelector("#id-check-button");

// 회원가입 버튼
const joinButton = document.querySelector("#join-button");

// 쿼리스트링 파라미터 들고오기
function getQueryParam(param) {
	const urlParams = new URLSearchParams(window.location.search);
	return urlParams.get(param);
}

// tempId 값 가져와서 input에 설정
let tempId = getQueryParam('tempId');
let isIdChecked = getQueryParam('idCheck');

// 아이디 인풋에 설정
if (tempId) {
	document.getElementById('id-input').value = tempId;
}
// 검사 시작
allOk();

/*중복확인 버튼 클릭 시 컨트롤러로 리다이렉션*/
idCheckButton.addEventListener("click", () => {
	if(id.value) {
	    /*console.log(id.value);*/
		location.href = 'id-check.user?userId=' + id.value;
	}else {
		console.log("입력 필요함")
	}
});

// 패스워드 입력
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
	allOk();
})

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




