/**
 * 
 */

const findIdButton = document.querySelector("#find-id-button");
const findIdCloseButton = document.querySelector("#find-id-close-button");
const idAccount = document.querySelector("#id-account")

findIdButton.addEventListener("click",() => {
	idAccount.style.display = 'block';
})

findIdCloseButton.addEventListener("click",() => {
	idAccount.style.display = 'none';
})