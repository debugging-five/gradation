const fileButton = document.getElementById("file-button");
const fileInput = document.getElementById("file-input");
const cancelButton = document.getElementById("cancel-button");

fileButton.addEventListener("click", () => {
    fileInput.click();
});

cancelButton.addEventListener("click", () => {
	location.href = "university-exhibition-main.exhibition";
})