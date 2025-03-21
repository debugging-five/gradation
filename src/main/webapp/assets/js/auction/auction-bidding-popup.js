    function openPopup() {
        document.getElementById('wrapper').style.display = 'block';
        document.getElementById('overlay').style.display = 'block';
    }

    // 팝업을 닫기 위한 함수
    function closePopup() {
        document.getElementById('wrapper').style.display = 'none';
        document.getElementById('overlay').style.display = 'none';
    }

    // 팝업 열기 버튼 클릭 이벤트
    document.getElementById('open-popup-btn').addEventListener('click', openPopup);

    // 오버레이 클릭 시 팝업 닫기 (배경 클릭 시 닫기 기능)
    document.getElementById('overlay').addEventListener('click', closePopup);