const universityLogo = document.getElementById("university-logo1");
const backgroundImage = document.getElementById("display-none");
const likeButtons = document.querySelectorAll(".button-like");
const registerButton = document.querySelector(".button.register");
const inquiryButton = document.querySelector(".button.inquiry");
const exhibitionImage = document.querySelector("#img-wrapper img");
const logo1 = document.getElementById("logo1"); 
const logo2 = document.getElementById("logo2"); 

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

/* 마이페이지 문의 페이지로 이동*/
inquiryButton.addEventListener("click", () => {
	location.href = "../mypage/mypage-service-center-send-qna.mypage";
});

logo1.addEventListener("click", function () {
    exhibitionImage.src = "../assets/images/exhibition/university-exhibition-1.jpg";
});

logo2.addEventListener("click", function () {
    exhibitionImage.src = "../assets/images/exhibition/university-exhibition-2.png";
});

