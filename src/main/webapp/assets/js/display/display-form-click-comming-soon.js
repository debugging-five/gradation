document.addEventListener("DOMContentLoaded", function () {
    // 필드와 에러 메시지 설정
    const formFields = [
        { id: "file-input", errorClass: "image-error" },
        { id: "author", errorClass: "author-error" },
        { id: "title", errorClass: "title-error" },
        { id: "category-select", errorClass: "category-error" },
        { id: "material", errorClass: "material-error" },
        { id: "description", errorClass: "description-error" }
    ];
    const sizeInputs = ["size"]; // 작품 규격
    const dateInput = document.getElementById("date-input"); // 날짜 입력

    // 유효성 검사 함수
    function validateForm() {
        let isValid = true;

        // 필드 유효성 검사
        formFields.forEach(field => {
            const inputElement = document.getElementById(field.id);
            const errorElement = document.querySelector(`.${field.errorClass}`);
            if (!inputElement.value.trim()) {
                errorElement.style.display = "block";
                isValid = false;
            } else {
                errorElement.style.display = "none";
            }
        });

        // 작품 규격 유효성 검사
        const isSizeValid = sizeInputs.some(id => document.getElementById(id).value.trim());
        const sizeErrorElement = document.querySelector(".size-error");
        if (!isSizeValid) {
            sizeErrorElement.style.display = "block";
            isValid = false;
        } else {
            sizeErrorElement.style.display = "none";
        }

        // 날짜 유효성 검사
        const dateErrorElement = document.querySelector(".date-error");
        if (!dateInput.value.trim()) {
            dateErrorElement.style.display = "block";
            isValid = false;
        } else {
            dateErrorElement.style.display = "none";
        }

        return isValid;
    }

    // 입력 시 에러 메시지 숨기기
    formFields.forEach(field => {
        const inputElement = document.getElementById(field.id);
        const errorElement = document.querySelector(`.${field.errorClass}`);
        inputElement.addEventListener("input", function () {
            if (inputElement.value.trim()) {
                errorElement.style.display = "none";
            }
        });
    });

    // 작품 규격 입력 시 에러 메시지 숨기기
    sizeInputs.forEach(id => {
        document.getElementById(id).addEventListener("input", function () {
            document.querySelector(".size-error").style.display = "none";
        });
    });

    // 카테고리 선택 시 에러 메시지 숨기기
    document.getElementById("category-select").addEventListener("change", function () {
        document.querySelector(".category-error").style.display = "none";
    });

    // 파일 업로드 시 에러 메시지 숨기기
    document.getElementById("file-input").addEventListener("change", function () {
        document.querySelector(".image-error").style.display = "none";
    });

	// 등록 버튼 클릭 시 유효성 검사
	    document.querySelector(".button-upload").addEventListener("click", function (event) {
	        event.preventDefault();  // 기본 제출 동작 막기
	        if (validateForm()) {  // 유효성 검사 통과 시
	            openPopup();  // 제출 확인 팝업 띄우기
	        }else {
				openEmptyPopup(); 
			}
	    });
		
		// 날짜 입력 시 에러 메시지 숨기기
		dateInput.addEventListener("input", function () {
		    document.querySelector(".date-error").style.display = "none";
		});
		
		
		// 빈 내용 팝업 확인 버튼 클릭 시 닫기
		document.querySelector("#modalBgNo .empty").addEventListener("click", function () {
		    closeEmptyPopup(); 
		});
		// 빈 내용 팝업 열기 함수
		function openEmptyPopup() {
		    document.getElementById('modalBgNo').style.display = 'block';
		}

		// 빈 내용 팝업 닫기 함수
		function closeEmptyPopup() {
		    document.getElementById('modalBgNo').style.display = 'none';
		}

	    // 팝업 열기 함수
	    function openPopup() {
	        document.getElementById('modalBg').style.display = 'block';
	    }

	    // 팝업 닫기 함수
	    function closePopup() {
	        document.getElementById('modalBg').style.display = 'none';

	    }

	    // 제출 완료 팝업 열기 함수
	    function openSubmitCompletePopup() {
	        document.getElementById('popupOverlay').style.display = 'block'; // 제출 완료 팝업을 띄운다
	    }

		// 팝업 확인 버튼 클릭 시 (확인 눌렀을 때만 제출 완료 팝업 띄우기)
		document.querySelector(".modal .send").addEventListener("click", function () {
		    closePopup();
		    openSubmitCompletePopup();  
		});

		// 팝업 취소 버튼 클릭 시 (팝업만 닫기)
		document.querySelector(".modal .cancel").addEventListener("click", function () {
		    closePopup(); 
		});

	    // 제출 완료 팝업에서 '확인' 클릭 시 팝업 닫기
	    document.getElementById("closeModalBtn").addEventListener("click", function () {
	        document.getElementById('popupOverlay').style.display = 'none'; // 제출 완료 팝업 닫기
	    });
		
		document.querySelector(".close-btn2").addEventListener("click", function () {
	        document.getElementById('popupOverlay').style.display = 'none'; // 제출 완료 팝업 닫기
		});
	});
