let fileInput = document.querySelector("#file-input");
let fileName = document.querySelector("#file-name");

fileInput.addEventListener('change', () => {
	let fileNames = document.querySelector("#file-input").value;
	console.log(fileNames);
	fileName.textContent = fileNames;
})