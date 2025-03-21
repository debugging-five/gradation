// 팝업 열기
function openPopup() {
    document.getElementById("modalBg").style.display = "flex";
}

// 팝업 닫기
function closePopup() {
    document.getElementById("modalBg").style.display = "none";
	document.getElementById("popupOverlay").style.display = "none"; // 문의 완료 모달도 닫기
}

// "제출하시겠습니까?"에서 확인 버튼을 눌렀을 때 실행
function confirmSubmission() {
    document.getElementById("modalBg").style.display = "none";  // 기존 모달 닫기
    document.getElementById("popupOverlay").style.display = "flex"; // 문의 완료 모달 표시
}

// "제출완료" 모달에서 확인 버튼 클릭 시 팝업 닫기
document.getElementById("closeModalBtn").addEventListener("click", closePopup);







// 작가명 필드 검사 함수
function validateAuthor() {
    const authorInput = document.getElementById('author');
    const errorMessageElement = document.querySelector('.author-error-message'); // 기존 에러 메시지 가져오기

    // 값이 비어 있으면 에러 메시지 표시
    if (authorInput.value.trim() === "") {
        if (!errorMessageElement) {
            showError(authorInput, "필수 항목입니다.", 'author-error-message');
        }
    } else {
        // 값이 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            authorInput.style.borderColor = ""; // 테두리 색상 복원
        }
    }
}

// 작품명 필드 검사 함수
function validateTitle() {
    const titleInput = document.getElementById('title');
    const errorMessageElement = document.querySelector('.title-error-message'); // 기존 에러 메시지 가져오기

    // 값이 비어 있으면 에러 메시지 표시
    if (titleInput.value.trim() === "") {
        if (!errorMessageElement) {
            showError(titleInput, "필수 항목입니다.", 'title-error-message');
        }
    } else {
        // 값이 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            titleInput.style.borderColor = ""; // 테두리 색상 복원
        }
    }
}

// 작품 분류 선택 시 검사 실행
function validateCategory() {
    const categorySelect = document.getElementById('category-select');
    const categoryText = document.getElementById('category-text');
    const errorMessageElement = document.querySelector('.category-error-message'); // 기존 에러 메시지 가져오기

    // 작품 분류가 선택되지 않으면 에러 메시지 표시
    if (categorySelect.value === "") {
        if (!errorMessageElement) {
            showError(categoryText, "필수 항목입니다.", 'category-error-message');
        }
    } else {
        // 선택된 값으로 category-text 업데이트
        categoryText.innerText = categorySelect.value;

        // 값이 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            categoryText.style.color = ""; // 기본 색상 복원
        }
    }
}
// 작품 분류 클릭 시 select 박스 보이기
document.getElementById('category-text').addEventListener('click', function () {
    var categorySelect = document.getElementById('category-select');
    categorySelect.style.display = 'inline'; // select 박스 보이게 설정
});

// 작품 분류 선택 후 텍스트 업데이트
document.getElementById('category-select').addEventListener('change', function () {
    validateCategory(); // 선택 후 검사를 실행하여 텍스트 업데이트 및 에러 메시지 처리
});


// 작품 재료 필수 항목 검사
function validateMaterial() {
    const materialInput = document.getElementById('material'); // 작품 재료 입력 필드
    const errorMessageElement = document.querySelector('.material-error-message'); // 기존 에러 메시지 가져오기

    // 작품 재료 값이 비어 있으면 에러 메시지 표시
    if (materialInput.value.trim() === "") {
        if (!errorMessageElement) {
            showError(materialInput, "필수 항목입니다.", 'material-error-message');
        }
    } else {
        // 값이 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            materialInput.style.borderColor = ""; // 테두리 색상 복원
        }
    }
}

// 작품 규격 필수 항목 검사
function validateDimensions() {
    const widthInput = document.getElementById('width');  // 가로 입력 필드
    const heightInput = document.getElementById('height'); // 세로 입력 필드
    const depthInput = document.getElementById('depth'); // 높이 입력 필드
    const errorMessageElement = document.querySelector('.dimension-error-message'); // 기존 에러 메시지 가져오기

    // 가로, 세로, 높이 중 하나라도 비어 있으면 경고 메시지 표시
    if (widthInput.value.trim() === "" || heightInput.value.trim() === "" || depthInput.value.trim() === "") {
        // 이미 경고 메시지가 표시되지 않았다면 한 번만 표시
        if (!errorMessageElement) {
            showError(widthInput, "필수 항목입니다.", 'dimension-error-message');
        }
    } else {
        // 값이 모두 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            widthInput.style.borderColor = ""; // 테두리 색상 복원
            heightInput.style.borderColor = "";
            depthInput.style.borderColor = "";
        }
    }
}

// 제작 완료일 필수 항목 검사 함수
function validateCompletionDate() {
    const completionDateInput = document.getElementById('completion-date');
    const errorMessageElement = document.querySelector('.completion-date-error-message'); // 기존 에러 메시지 가져오기

    // 값이 비어 있으면 에러 메시지 표시
    if (completionDateInput.value.trim() === "") {
        if (!errorMessageElement) {
            showError(completionDateInput, "필수 항목입니다.", 'completion-date-error-message');
        }
    } else {
        // 값이 있으면 에러 메시지 제거
        if (errorMessageElement) {
            errorMessageElement.remove();
            completionDateInput.style.borderColor = ""; // 테두리 색상 복원
        }
    }
}


// 에러 메시지를 표시하는 함수
function showError(element, message, className) {
    let errorMessage = document.createElement("div");
    errorMessage.className = "error-message " + className; // 중복 에러 메시지 방지
    errorMessage.style.color = "red";
    errorMessage.style.fontSize = "12px";
    errorMessage.style.marginTop = "5px";
    errorMessage.innerText = message;

    element.style.borderColor = "yellow"; // 경고 색을 노란색으로 변경
    element.parentNode.appendChild(errorMessage); // 에러 메시지 추가
}



// 등록 버튼 클릭 시 폼 검사 실행
document.querySelector(".button-upload").addEventListener("click", function (event) {
    event.preventDefault(); // 기본 동작 방지
    validateAuthor(); // 작가명 필드 검사 실행
    validateTitle(); // 작품명 필드 검사 실행
	validateCategory(); // 작품 분류 검사 실행
	validateMaterial(); // 작품 재료 검사 실행
    validateDimensions(); // 작품 규격 검사 실행
	validateCompletionDate(); // 제작완료일 검사 실행

	// 에러가 있으면 팝업을 띄우지 않음
	if (document.querySelector('.author-error-message') || 
	    document.querySelector('.title-error-message') || 
	    document.querySelector('.category-error-message') || 
	    document.querySelector('.material-error-message') || 
	    document.querySelector('.dimensions-error-message') || 
	    document.querySelector('.completion-date-error-message')) {
	    return;
	}
    // 팝업 열기 코드 작성
    openPopup();
});

// 작가명 값 변경 시 검사 실행
document.getElementById('author').addEventListener('input', validateAuthor);
// 작품명 값 변경 시 검사 실행
document.getElementById('title').addEventListener('input', validateTitle);
// 작품 재료 값 변경 시 검사 실행
document.getElementById('material').addEventListener('input', validateMaterial);
// 작품 규격 값 변경 시 검사 실행
document.getElementById('width').addEventListener('input', validateDimensions);
document.getElementById('height').addEventListener('input', validateDimensions);
document.getElementById('depth').addEventListener('input', validateDimensions);
// 제작 완료일 값 변경 시 검사 실행
document.getElementById('completion-date').addEventListener('input', validateCompletionDate);