/**
 * 
 */

const findPasswordButton = document.querySelector("#find-password-button");
const findPasswordCloseButton = document.querySelector("#find-password-close-button");
const passwordAccount = document.querySelector("#password-account")
findIdButton.addEventListener("click",() => {
	passwordAccount.style.display = 'block';
})

findIdCloseButton.addEventListener("click",() => {
	passwordAccount.style.display = 'none';
})