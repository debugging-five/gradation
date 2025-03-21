const fileInput = document.getElementById("file-input")
const icon = document.getElementById("update-icon");;

icon.addEventListener("click", () => {
	fileInput.click();
});

fileInput.addEventListener("change", (e) => {
	/* console.log("event!") */
	const file = e.target.files[0];
});