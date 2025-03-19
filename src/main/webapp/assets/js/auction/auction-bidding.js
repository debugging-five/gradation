const popup = document.querySelector("#popup-wrapper")
const button = document.querySelector(".button-bidding")


button.addEventListener("click", () => {
	popup.style.display = "block";
}

function openPopup() {
	popup.style.display = "block";
}