const registerButton = document.getElementsByClassName("button register");

registerButton.addEventListener("click", () => {
	location.href = "exhibition-form.exhibition";
});

const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementsById("img-background");

universityLogo.addEventListener("click", () => {
	backgroundImage.style.display = "block";
	});