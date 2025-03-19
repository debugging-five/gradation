/**
 * 
 */
const changeButton = document.querySelector("#change-button");
const completeCloseButton = document.querySelector("#complete-close-button");
const complete = document.querySelector("#complete")
changeButton.addEventListener("click",() => {
	complete.style.display = 'block';
})

completeCloseButton.addEventListener("click",() => {
	complete.style.display = 'none';
})