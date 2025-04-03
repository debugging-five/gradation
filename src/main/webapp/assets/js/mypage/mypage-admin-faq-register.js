const form = document.querySelector("#faq-register-form");
const button = document.querySelector("#new-register");
const inputText = document.querySelector("#input-text");
const registerContent = document.querySelector("#register-content");

button.addEventListener("click", () => {
	const categorys = document.querySelector("input[name='faqCategory']:checked");

	if (!categorys) {
		alert("구분을 하나 선택해주세요.");
		return;
	}
	if (!inputText.value) {
		alert("제목을 입력하세요.");
		return;
	}
	if (!registerContent.value) {
		alert("내용을 입력하세요.");
		return;
	}

	form.submit();
});
