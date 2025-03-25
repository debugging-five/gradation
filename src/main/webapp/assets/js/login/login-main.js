/**
 * 
 */

const inputBox = document.querySelector('.login-input-text');
const idInputBox = document.querySelector('#id-input-text');
const pwInputBox = document.querySelector('#pw-input-text');
const loginButton = document.querySelector('.login-button');
const idNeedWrite = document.querySelector('#id-need-write');
const pwNeedWrite = document.querySelector('#pw-need-write');
const idInput = document.querySelector('#id-input');
const pwInput = document.querySelector('#pw-input');
const idImg = document.querySelector('#id-img');
const pwImg = document.querySelector('#pw-img');

const loginFailWrong1 = document.querySelector('#login-fail-wrong1');
const loginFailWrong2 = document.querySelector('#login-fail-wrong2');

//	쿼리스트링 가져오기
const islogin = (new URLSearchParams(location.search)).get("login");
console.log("값"+islogin+"값");

//로그인 실패시
if(islogin == "false") {
	loginFailWrong1.classList.add("need-write");
	loginFailWrong2.classList.add("need-write");
}

const updateButtonState = () => {
    if (idInputBox.value !== '' && pwInputBox.value !== '') {
        loginButton.style.backgroundColor = '#ee3333';
        loginButton.type = 'submit';
    } else {
        loginButton.style.backgroundColor = '#C0C5C7';
        loginButton.type = 'button';
    }
};

// 입력이 이루어지면 로그인버튼 활성화
idInputBox.addEventListener('input',() => {
	loginFailWrong1.classList.remove("need-write");
	loginFailWrong2.classList.remove("need-write");
	updateButtonState()
});
pwInputBox.addEventListener('input',() => {
	loginFailWrong1.classList.remove("need-write");
	loginFailWrong2.classList.remove("need-write"); 
	updateButtonState()
});

loginButton.addEventListener('click', () => {
	// 아이디 입력 필드 처리
	if (idInputBox.value == '') {
		idNeedWrite.classList.add("need-write")
		idInput.style.color = 'var(--color-warning)';
		idInput.style.borderBottom = '1px solid var(--color-warning)';
		idInputBox.classList.add('placeholder-warning')
		idImg.src = "../assets/images/login/user-wrong.png";
	} else {
		// 아이디 입력값이 있을 경우, 스타일 복원
		idNeedWrite.classList.remove("need-write")
		idInput.style.color = '';
		idInput.style.borderBottom = '';
		idInputBox.classList.remove('placeholder-warning');
		idImg.src = "../assets/images/login/user.png";
	}
	
	// 비밀번호 입력 필드 처리
	if (pwInputBox.value == '') {
		pwNeedWrite.classList.add("need-write")
		pwInput.style.color = 'var(--color-warning)';
		pwInput.style.borderBottom = '1px solid var(--color-warning)';
		pwInputBox.classList.add('placeholder-warning');
		pwImg.src = "../assets/images/login/lock-wrong.png";
	} else {
		// 비밀번호 입력값이 있을 경우, 스타일 복원
		pwNeedWrite.classList.remove("need-write")
		pwInput.style.color = '';
		pwInput.style.borderBottom = '';
		pwInputBox.classList.remove('placeholder-warning');
		pwImg.src = "../assets/images/login/lock.png";
	}
});

// 눈깔 클릭
const showPassword = document.querySelector("#show-password");

showPassword.addEventListener("click",() => {
	const isPw = pwInputBox.type == "password" ? true : false;
	if(isPw) {
		pwInputBox.type = "text"
		showPassword.src = "../assets/images/login/open-eye.png";
	}else {
		pwInputBox.type = "password";
		showPassword.src = "../assets/images/login/close-eye.png"
	}
})