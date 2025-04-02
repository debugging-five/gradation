/**
 * 
 */
const certificationButton = document.querySelector("#certification-button");

document.querySelector("#file").addEventListener("change", function () {
	let fileName = this.value.split("\\").pop();
	document.querySelector(".upload-name").value = fileName;
	certificationButton.type = "submit";
});

certificationButton.addEventListener('click',() => {
	console.log("필수사항");
})