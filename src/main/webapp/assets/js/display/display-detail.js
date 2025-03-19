// 작품 분류 텍스트 클릭 시 select 박스 보이게 하기
document.getElementById('filter-text').addEventListener('click', function () {
    var filterSelect = document.getElementById('filter-select');
    filterSelect.style.display = 'inline'; // select 박스 보이게 설정
});

// 화살표 아이콘 클릭 시 select 박스를 보이게 하기
document.querySelector('.down-image').addEventListener('click', function (event) {
    event.stopPropagation(); // 이벤트 버블링 방지
    var filterSelect = document.getElementById('filter-select');
    filterSelect.style.display = 'inline';
});

// 분류 항목 선택 시 down.png 유지
document.getElementById('filter-select').addEventListener('change', function () {
    var selectedValue = this.value;
    var filterText = document.getElementById('filter-text');
    var downIcon = document.querySelector(".down-image"); // down.png 요소 가져오기

    filterText.innerHTML = selectedValue + " "; // 선택한 값 적용
    filterText.appendChild(downIcon); // down.png 유지

    this.style.display = 'none'; // select 박스 숨김
});
