/**
 * 
 */

const artistWraps = document.querySelectorAll(".artist-wrap");

artistWraps.forEach(artistWrap => {
	artistWrap.addEventListener("click", () => {
		const userId = artistWrap.querySelector("input").value;
		location.href = "artist-detail.artist?userId=" + userId ;
	})	
})