const fileButton = document.getElementById("file-button");
const fileInput = document.getElementById("file-input");
const cancelButton = document.getElementById("cancel-button");

fileButton.addEventListener("click", () => {
    fileInput.click();
});

cancelButton.addEventListener("click", () => {
	location.href = "university-exhibition-main.exhibition";
})

const alert = document.getElementById("alert-wrapper");
const overlay = document.getElementById("overlay");

const openAlert = () => {
	alert.style.display = "block";
	overlay.style.display = "block";
}

const closeAlert = () => {
	alert.style.display = "none";
	overlay.style.display = "none";
}

