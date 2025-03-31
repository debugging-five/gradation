const deleteButton = document.querySelector("#delete-button");
const complete = document.querySelector("#complete");
const backButton = document.querySelector("#back-button");
const deleted = new URLSearchParams(window.location.search);

const goodBye = document.querySelector("#good-bye")

deleteButton.addEventListener("click", () => {
	complete.style.display = "block";
})

backButton.addEventListener("click", () => {
	complete.style.display = "none";
})



if(deleted.get("complete")) {
	goodBye.style.display = "block";
}else {
	goodBye.style.display = "none";	
}