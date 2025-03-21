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

const updateButtonState = () => {
    if (idInputBox.value !== '' && pwInputBox.value !== '') {
        loginButton.style.backgroundColor = '#ee3333';
        loginButton.type = 'submit';
    } else {
        loginButton.style.backgroundColor = '#C0C5C7';
        loginButton.type = 'button';
    }
};

idInputBox.addEventListener('input', updateButtonState);
pwInputBox.addEventListener('input', updateButtonState);

loginButton.addEventListener('click', () => {
	// 아이디 입력 필드 처리
	if (idInputBox.value == '') {
		idNeedWrite.style.color = 'var(--color-warning)';
		idInput.style.color = 'var(--color-warning)';
		idInput.style.borderBottom = '1px solid var(--color-warning)';
		idInputBox.classList.add('placeholder-warning');
		idImg.src = "../assets/images/login/user-wrong.png";
	} else {
		// 아이디 입력값이 있을 경우, 스타일 복원
		idNeedWrite.style.color = '';
		idInput.style.color = '';
		idInput.style.borderBottom = '';
		idInputBox.classList.remove('placeholder-warning');
		idImg.src = "../assets/images/login/user.png";
	}
	
	// 비밀번호 입력 필드 처리
	if (pwInputBox.value == '') {
		pwNeedWrite.style.color = 'var(--color-warning)';
		pwInput.style.color = 'var(--color-warning)';
		pwInput.style.borderBottom = '1px solid var(--color-warning)';
		pwInputBox.classList.add('placeholder-warning');
		pwImg.src = "../assets/images/login/lock-wrong.png";
	} else {
		// 비밀번호 입력값이 있을 경우, 스타일 복원
		pwNeedWrite.style.color = '';
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