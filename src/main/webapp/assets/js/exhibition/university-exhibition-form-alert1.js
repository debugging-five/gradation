const popup = document.getElementById("popup-wrapper");
const overlay = document.getElementById("overlay");
const okButton = document.getElementById("alert-ok-button");
const cancelButton = document.getElementById("alert-cancel-button");

const openPopup = () => {
	popup.style.display = "block";
	overlay.style.display = "block";
}
