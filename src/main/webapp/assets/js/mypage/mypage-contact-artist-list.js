const contactDetail = document.querySelectorAll(".item");

contactDetail.forEach((contact) => {
	contact.addEventListener("click", () => {
		location.href = "mypage-contact-artist-detail.mypage";
	})
})