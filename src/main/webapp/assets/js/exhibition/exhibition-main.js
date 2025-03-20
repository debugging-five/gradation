const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementById("img-background");

const likeButton = document.querySelectorAll(".button-like");
const heart = document.querySelector(".fa-regular fa-heart fa-2xs");

universityLogo.addEventListener("click", () => {
	backgroundImage.style.display = "block";
});

likeButton.addEventListener("click", () => {
	heart.style.color = "red";
});