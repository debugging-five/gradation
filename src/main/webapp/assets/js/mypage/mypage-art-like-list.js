const artList = document.querySelectorAll(".art");

artList.forEach((art) => {
	art.addEventListener("click", () => {
		location.href = "../display/display-detail.display";
	})
})
