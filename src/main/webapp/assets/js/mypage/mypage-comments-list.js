const comments = document.querySelectorAll(".item");

//comments.forEach((comment) => {
//	comment.addEventListener("click", () => {
//		location.href = "../display/display-detail.display";
//	})
	
comments.forEach((comment, i) => {
	comment.addEventListener("click", () => {
		const id = i + 1; 
	    const url = `../display/display-detail.display?id=${id}`;
	    location.href = url;
	})
})