/**
 * 
 */

const inputBox = document.querySelector('.login-input-text');
const idInputBox = document.querySelector('#id-input-text');
const pwInputBox = document.querySelector('#pw-input-text');
const loginButton = document.querySelector('.login-button');
const idNeedWrite = document.querySelector('#id-need-write');
const pwNeedWrite = document.querySelector('#pw-need-write');

// 입력 이벤트 리스너 등록
inputBox.addEventListener('input', () => {
	// 입력값이 있으면 버튼에 'active' 클래스 추가
	if (idInputBox.value !== '') {
		loginButton.style.backgroundColor = '#ee3333';
		loginButton.type = 'submit';
	}else {
		loginButton.style.backgroundColor = '#C0C5C7';
		loginButton.type = 'button';			
	}
});

loginButton.addEventListener('click', () => {
	if(idInputBox.value.trim() == '') {
		idNeedWrite.style.color = '#E49804';
		idInputBox.style.color = '#E49804';
	}
	if(idInputBox.value.trim() == '') {
		pwNeedWrite.style.color = '#E49804'
	}
})