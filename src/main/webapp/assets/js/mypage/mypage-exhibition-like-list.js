const info = document.querySelectorAll(".exhibition-info");

info.forEach((image) => {
	image.addEventListener("click", () => {
		location.href = "https://multidesign.kangwon.ac.kr/multidesign/community/photo-gallery.do?mode=view&articleNo=429939&title=%5B%EC%84%9C%EC%9A%B8%5D+2023+%EA%B0%95%EC%9B%90%EB%8C%80%ED%95%99%EA%B5%90+%EC%82%BC%EC%B2%99%EC%BA%A0%ED%8D%BC%EC%8A%A4+%EB%A9%80%ED%8B%B0%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%99%EA%B3%BC+%EC%A0%9C8%ED%9A%8C+%EC%A1%B8%EC%97%85%EC%A0%84%EC%8B%9C%ED%9A%8C%E3%80%8AUNLOCK+THE+FUTURE%E3%80%8B"
	})
})
;