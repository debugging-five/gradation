const contactDetail = document.querySelectorAll(".item");

contactDetail.forEach((contact, i) => {
	contact.addEventListener("click", () => {
		const id = i + 1; 
	    location.href = `../mypage/mypage-contact-artist-detail.mypage?id=${id}`;
	})
})