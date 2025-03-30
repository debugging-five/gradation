const popup1 = document.getElementById("popup-wrapper1");
const popup2 = document.getElementById("popup-wrapper2");
const overlay1 = document.getElementById("overlay1");
const overlay2 = document.getElementById("overlay2");
const body = document.querySelector('body');
const listButton = document.getElementById("list-button");
const artList = document.querySelectorAll(".art-list");

const openPopup1 = () => {
	popup1.style.display = "block";
	overlay1.style.display = "block";
}

const closePopup1 = () => {
	popup1.style.display = "none";
	overlay1.style.display = "none";
}
const openPopup2 = () => {
	popup2.style.display = "block";
	overlay2.style.display = "block";
}

const closePopup2 = () => {
	popup2.style.display = "none";
	overlay2.style.display = "none";
}

listButton.addEventListener("click", () => {
	location.href = 'auction-main.auction'; 
});

artList.forEach((art) => {
	art.addEventListener("click", () => {
		location.href = "auction-bidding-main.auction";
	})
})

// 실시간 타이머
// 마감시간을 설정 (예시: 현재 시간에서 4일, 4시간, 44분, 44초 뒤)
const deadline = new Date();
deadline.setDate(deadline.getDate() + 4); // 4일 후
deadline.setHours(deadline.getHours() + 4); // 4시간 후
deadline.setMinutes(deadline.getMinutes() + 44); // 44분 후
deadline.setSeconds(deadline.getSeconds() + 44); // 44초 후

// 타이머 업데이트 함수
function updateCountdown() {
  const now = new Date();
  const remainingTime = deadline - now; // 남은 시간 계산 (밀리초 단위)

  if (remainingTime <= 0) {
    document.getElementById('countdown').textContent = '마감되었습니다!';
    clearInterval(timerInterval); // 타이머 종료
    return;
  }

  const days = Math.floor(remainingTime / (1000 * 60 * 60 * 24)); // 남은 일수
  const hours = Math.floor((remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); // 남은 시간
  const minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60)); // 남은 분
  const seconds = Math.floor((remainingTime % (1000 * 60)) / 1000); // 남은 초

  // 타이머 표시 형식 설정
  const countdownText = `${days}일 ${hours}시간 ${minutes}분 <span class="red">${seconds}초</span>`;
  document.getElementById('countdown').innerHTML = countdownText; // innerHTML을 사용하여 span을 포함
}

// 타이머를 매초마다 업데이트
const timerInterval = setInterval(updateCountdown, 1000);

// 페이지 로딩 시에도 한번 호출하여 초기 시간 표시
updateCountdown();




