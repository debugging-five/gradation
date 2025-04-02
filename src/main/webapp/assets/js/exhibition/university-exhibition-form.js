const fileButton = document.getElementById("file-button");
const fileInput = document.getElementById("file-input");
const cancelButton = document.getElementById("cancel-button");
const alert = document.getElementById("alert-wrapper");
const overlay = document.getElementById("overlay");
const registerButton = document.getElementById("register-button");

registerButton.addEventListener("click", () => {
	location.href = "university-exhibition-main.exhibition";
});

fileButton.addEventListener("click", () => {
    fileInput.click();
});

cancelButton.addEventListener("click", () => {
	location.href = "university-exhibition-main.exhibition";
})


const openAlert = () => {
	alert.style.display = "block";
	overlay.style.display = "block";
}

const closeAlert = () => {
	alert.style.display = "none";
	overlay.style.display = "none";
}

