// 완료버튼
const modifyButton = document.querySelector("#modify-button");
const cancelButton = document.querySelector("#cancel-button");

// 현재 유저 인풋 데이터 가변적
let userNickname = document.querySelector("#user-nickname");
let userName = document.querySelector("#user-name");
let userPhone = document.querySelector("#user-phone");
let userEmail = document.querySelector("#user-email");
let userCode = document.querySelector("#user-code");
let userAddress = document.querySelector("#address");
let userDetailAddress = document.querySelector("#user-detail-address");

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
		location.href='mypage-send-email.mypage?userNickname=' + encodeURIComponent(userNickname.value) +
			"&userName=" + encodeURIComponent(userName.value) +
			"&userPhone=" + encodeURIComponent(userPhone.value) +
			"&userEmail=" + encodeURIComponent(userEmail.value) +
			"&userCode=" + encodeURIComponent(userCode.value) +
			"&userAddress=" + encodeURIComponent(userAddress.value) +
			"&userDetailAddress=" + encodeURIComponent(userDetailAddress.value);		
	}
});

// 이메일 코드 인증
const codeCheckButton = document.querySelector("#code-check-button");
const mailCode = document.querySelector("#mail-code");
const codecheck = false;
codeCheckButton.addEventListener('click', () => {
	update()
	if(mailCode.value == userCode.value) {
		codecheck = true;
	}else {
		codecheck = false;
	}
})

console.log(userEmail.value == userPrevEmail.value);
//	업데이트 활성화 기능 
const checkAll = () => {
	if(codecheck || userEmail.value == userPrevEmail.value) {
		modifyButton.type = 'submit';
	}
}
checkAll();


modifyButton.addEventListener('click', () => {
	console.log("이메일 인증 필요")
});

cancelButton.addEventListener('click', () => {
	location.href='mypage-main.mypage';
});


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