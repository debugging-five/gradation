const deleteButton = document.querySelector("#delete-button");
const complete = document.querySelector("#complete");
const backButton = document.querySelector("#back-button");
const deleted = new URLSearchParams(window.location.search);
const dontGo = document.querySelector("#dont-go");

const goodBye = document.querySelector("#good-bye")

deleteButton.addEventListener("click", () => {
	const checkDisplay = document.querySelector("#check-display");
	if(checkDisplay.checked == true) {
		complete.style.display = "block";		
	}else {
		dontGo.classList.add("need-write");
	}
})

backButton.addEventListener("click", () => {
	complete.style.display = "none";
})



if(deleted.get("complete")) {
	goodBye.style.display = "block";
}else {
	goodBye.style.display = "none";	
}

