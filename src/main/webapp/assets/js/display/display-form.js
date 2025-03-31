// 작품 분류 텍스트 클릭 시 select 박스 보이게 하기
document.getElementById('category-text').addEventListener('click', function () {
    var categorySelect = document.getElementById('category-select');
    categorySelect.style.display = 'inline'; // select 박스 보이게 설정
});

// 화살표 아이콘 클릭 시 select 박스를 보이게 하기
document.querySelector('.down-image').addEventListener('click', function (event) {
    event.stopPropagation(); // 이벤트 버블링 방지
    var categorySelect = document.getElementById('category-select');
    categorySelect.style.display = 'inline';
});

// 분류 항목 선택 시 down.png 유지
document.getElementById('category-select').addEventListener('change', function () {
    var selectedValue = this.value;
    var categoryText = document.getElementById('category-text');
    var downIcon = document.querySelector(".down-image"); // down.png 요소 가져오기

    categoryText.innerHTML = selectedValue + " "; // 선택한 값 적용
    categoryText.appendChild(downIcon); // down.png 유지

    this.style.display = 'none'; // select 박스 숨김
});




	
/* 사진 */
	function previewImage(event) {
	    var file = event.target.files[0]; // 첫 번째 파일만 선택
	    var reader = new FileReader();

	    reader.onload = function(e) {
	        // 첨부파일 박스의 배경 이미지를 선택한 이미지로 변경
	        var attachmentBox = document.querySelector('.attachment-box');
	        attachmentBox.style.backgroundImage = "url('" + e.target.result + "')";
	        attachmentBox.style.backgroundSize = "cover"; // 이미지를 박스에 맞게 크기 조정
	        attachmentBox.style.backgroundPosition = "center"; // 이미지를 중앙에 배치
	        attachmentBox.querySelector('.add-image').style.display = "none"; // 아이콘 숨기기
	        attachmentBox.querySelector('.add-text').style.display = "none"; // 텍스트 숨기기
	    };

	    reader.readAsDataURL(file); // 파일을 Data URL로 읽음
	}
	
	



	
	
	

	
	
	