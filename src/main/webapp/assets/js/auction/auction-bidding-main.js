const popup = document.getElementById("popup-wrapper");
const overlay = document.getElementById("overlay");

const openPopup = () => {
	popup.style.display = "block";
	overlay.style.display = "block";
}

const closePopup = () => {
	popup.style.display = "none";
	overlay.style.display = "none";
}