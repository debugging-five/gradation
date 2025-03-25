const comments = document.querySelectorAll(".item");

comments.forEach((comment) => {
	comment.addEventListener("click", () => {
		location.href = "../display/display-detail.display";
	})
})