const popup1 = document.getElementById("popup-wrapper1");
const popup2 = document.getElementById("popup-wrapper2");
const overlay1 = document.getElementById("overlay1");
const overlay2 = document.getElementById("overlay2");
const body = document.querySelector('body');
const listButton = document.getElementById("list-button");

const openPopup1 = () => {
	popup1.style.display = "block";
	overlay1.style.display = "block";
	body.style.overflow = "hidden";
}

const closePopup1 = () => {
	popup1.style.display = "none";
	overlay1.style.display = "none";
	body.style.overflow = "visible";
}
const openPopup2 = () => {
	popup2.style.display = "block";
	overlay2.style.display = "block";
	body.style.overflow = "hidden";
}

const closePopup2 = () => {
	popup2.style.display = "none";
	overlay2.style.display = "none";
	body.style.overflow = "visible";
}

listButton.addEventListener("click", () => {
	location.href = 'auction-main.auction'; 
});




