const form = document.querySelector("form");

form.addEventListener('submit', (e) => {
	const faqCategory = document.querySelector("input[name='faqCategory']:checked");
	const title = document.getElementById("input-text").value.trim();
	const content = document.getElementById("register-content").value.trim();

	if (!faqCategory) {
		alert("구분을 하나 선택해주세요");
		e.preventDefault();
		return;
	}
	if (!title) {
		alert("제목을 입력해주세요");
		e.preventDefault();
		return;
	}
	if (!content) {
		alert("답변 내용을 입력하세요.");
		e.preventDefault();
		return;
	}
});
