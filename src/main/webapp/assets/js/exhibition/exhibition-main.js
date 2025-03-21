const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementById("img-background");
const likeButtons = document.querySelectorAll(".button-like");

universityLogo.addEventListener("click", () => {
	backgroundImage.style.display = "block";
});


likeButtons.forEach((likeButton) => {
	likeButton.addEventListener("click", () => {
	likeButton.classList.toggle("liked");
	})
});

/* 클릭했을 때 좋아요 버튼 색상 변경 */
likeButtons.forEach((likeButton) => {
	likeButton.addEventListener("click", () => {
		if (likeButton.style.backgroundColor === "var(--color-primary)") {
            likeButton.style.color = "";
            likeButton.style.backgroundColor = "";
        } else {
            likeButton.style.color = "var(--color-gray100)";
            likeButton.style.backgroundColor = "var(--color-primary)";
        }
    })
});
