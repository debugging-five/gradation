
window.onload = function () {
    let currentIndex = 0;
    const slides = document.querySelectorAll(".slide");
    const totalSlides = slides.length;
    const slider = document.querySelector(".slider");

    function updateSlide() {
        slider.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    function moveSlide(n) {
        currentIndex += n;
        if (currentIndex >= totalSlides) {
            currentIndex = 0;
        } else if (currentIndex < 0) {
            currentIndex = totalSlides - 1;
        }
        updateSlide();
    }

    // 버튼 이벤트 리스너 추가
    document.querySelector(".prev").addEventListener("click", function () {
        moveSlide(-1);
    });

    document.querySelector(".next").addEventListener("click", function () {
        moveSlide(1);
    });

    // 자동 슬라이드
    setInterval(() => moveSlide(1), 5000);
};