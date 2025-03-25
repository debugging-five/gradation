const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementById("display-none");
const likeButtons = document.querySelectorAll(".button-like");
const registerButton = document.querySelector(".button.register");
const inquiryButton = document.querySelector(".button.inquiry");

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

/* 대학교 등록 신청 페이지로 이동*/
registerButton.addEventListener("click", () => {
	location.href = "university-exhibition-form.exhibition";
});

/* 문의 페이지로 이동*/
inquiryButton.addEventListener("click", () => {
	location.href = "";
});
