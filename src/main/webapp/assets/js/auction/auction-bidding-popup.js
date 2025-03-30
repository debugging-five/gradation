function openPopup() {
    document.getElementById('wrapper').style.display = 'block';
    document.getElementById('overlay').style.display = 'block';
}

function closePopup() {
    document.getElementById('wrapper').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}

document.getElementById('open-popup-btn').addEventListener('click', openPopup);

document.getElementById('overlay').addEventListener('click', closePopup);
 
// 응찰하기 버튼 클릭 시
   document.getElementById("bid-button").addEventListener("click", function(event) {
      const bidAmountInput = document.getElementById("bid-amount").value.trim(); // 입력값
      const errorMsg = document.getElementById("error-msg");

      if (bidAmountInput === "") {  // 빈 값 체크
         errorMsg.style.display = "block";  // 에러 메시지 표시
         event.preventDefault();  // form 제출 방지 (페이지 넘어가지 않도록)
      } else {
         errorMsg.style.display = "none";  // 에러 메시지 숨기기
         alert("응찰이 완료되었습니다!");
         // 정상적으로 응찰을 진행하려면 여기에 추가 동작이 필요할 수 있음
      }
   });