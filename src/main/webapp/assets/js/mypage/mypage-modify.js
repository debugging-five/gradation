// 완료버튼
const modifyButton = document.querySelector("#modify-button");
const cancelButton = document.querySelector("#cancel-button");

//	메일 인증 버튼
const codeCheckButton = document.querySelector("#code-check-button");
const mailCode = document.querySelector("#mail-code");

// 현재 유저 인풋 데이터 가변적
const userIdentification = document.querySelector("#user-identification");
let userNickname = document.querySelector("#user-nickname");
let userName = document.querySelector("#user-name");
let userPhone = document.querySelector("#user-phone");
let userEmail = document.querySelector("#user-email");
let userCode = document.querySelector("#user-code");
let userAddress = document.querySelector("#address");
let userDetailAddress = document.querySelector("#user-detail-address");

let codecheck = false;

// 오류메세지 
const needEmailCheck = document.querySelector("#need-email-check");
const needCodeCheck = document.querySelector("#need-code-check");

// 입력 실시간 업데이트 로직
const update = () => {
//	인풋 재정의
	userNickname = document.querySelector("#user-nickname");
	userName = document.querySelector("#user-name");
	userPhone = document.querySelector("#user-phone");
	userEmail = document.querySelector("#user-email");
	userCode = document.querySelector("#user-code");
	userAddress = document.querySelector("#address");
	userDetailAddress = document.querySelector("#user-detail-address");
}

//	버튼 색상 초기화
codeCheckButton.style.backgroundColor="var(--color-gray500)";


// 이메일 보내기
const userPrevEmail = document.querySelector("#user-prev-email");
const emailSendButton = document.querySelector("#email-send-button");

emailSendButton.addEventListener('click', () => {
	update()
	if(userEmail.value == ""){
		console.log("이메일 입력 필요");
	}else if(userEmail.value == userPrevEmail.value) {
		console.log("동일한 이메일");
	}else {
		console.log(userAddress.value);
		location.href="mypage-send-email.mypage?userIdentification=" + encodeURIComponent(userIdentification.value) +
			"&userNickname=" + encodeURIComponent(userNickname.value) +
			"&userName=" + encodeURIComponent(userName.value) +
			"&userPhone=" + encodeURIComponent(userPhone.value) +
			"&userEmail=" + encodeURIComponent(userEmail.value) +
			"&userCode=" + encodeURIComponent(userCode.value) +
			"&userAddress=" + encodeURIComponent(userAddress.value) +
			"&userDetailAddress=" + encodeURIComponent(userDetailAddress.value);		
	}
});

// 인증번호 확인
codeCheckButton.addEventListener('click', () => {
	update();
	
	console.log(mailCode.value);
	console.log(userCode.value);
	console.log(mailCode.value == userCode.value);
	if(mailCode.value == userCode.value) {
		codecheck = true;
		codeCheckButton.style.backgroundColor="var(--color-primary)"
		needCodeCheck.classList.remove('need-write');
	}else {
		codecheck = false;
		codeCheckButton.style.backgroundColor="var(--color-gray500)"
		needCodeCheck.classList.add('need-write');
	}
	checkAll();
})

console.log(userEmail.value == userPrevEmail.value);
//	업데이트 활성화 기능 
const checkAll = () => {
	if(codecheck || userEmail.value == userPrevEmail.value) {
		modifyButton.type = 'submit';
	}else {
		modifyButton.type = 'button';
	}
}
checkAll();


modifyButton.addEventListener('click', () => {
	console.log("이메일 인증 필요");
	needEmailCheck.classList.add("need-write");
});

cancelButton.addEventListener('click', () => {
	location.href='mypage-main.mypage';
});

userEmail.addEventListener("input", () => {
	update();
	checkAll();
	emailSendButton.style.backgroundColor="var(--color-gray500)";
})

// 주소찾기 API
function execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddress = data.address;
			var extraAddress = '';

			if (data.addressType === 'R') {
				if (data.bname !== '') {
					extraAddress += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddress += (extraAddress !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				fullAddress += (extraAddress !== '' ? ' (' + extraAddress
						+ ')' : '');
			}

			document.getElementById("address").value = fullAddress;
		}
	}).open();
}