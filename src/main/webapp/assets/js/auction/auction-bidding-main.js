const popup = document.getElementById("popup-wrapper");
const overlay = document.getElementById("overlay");
const body = document.querySelector('body');

const openPopup = () => {
	popup.style.display = "block";
	overlay.style.display = "block";
	body.style.overflow = "hidden";
}

const closePopup = () => {
	popup.style.display = "none";
	overlay.style.display = "none";
	body.style.overflow = "visible";
}




