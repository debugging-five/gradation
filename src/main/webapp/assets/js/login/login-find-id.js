/**
 * 
 */

//	아이디 찾기 완료 시 리다이렉트
let isComplete = document.querySelector("#is-complete");
if(isComplete.value == "true"){
	const idAccount = document.querySelector("#id-account");
	idAccount.style.display = 'block';
}

const findIdButton = document.querySelector("#find-id-button");
const findIdCloseButton = document.querySelector("#find-id-close-button");

//	아이디 조회창
const idAccount = document.querySelector("#id-account")

let userName = document.querySelector("#user-name");

//	아이디 찾기 type : submit 변경 조건
const update = () => {
//	필드 재정의
	let name
	
}


findIdButton.addEventListener("click",() => {
	checkAll();
})

findIdCloseButton.addEventListener("click",() => {
	idAccount.style.display = 'none';
})