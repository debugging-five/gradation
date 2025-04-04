document.addEventListener('DOMContentLoaded', () => {
	const cancelBtn = document.getElementById('cancel');
	const registerBtn = document.getElementById('registration');
	const answer = document.getElementById('answer');

	cancelBtn.addEventListener('click', () => {
		const qnaId = cancelBtn.dataset.id;
		location.href = `mypage-admin-qna-content.mypage?id=${qnaId}`;
	});

	registerBtn.addEventListener('click', () => {
		const content = document.getElementById('textarea').value;
		if (!content) {
			alert('답변 내용을 입력하세요.');
			return;
		}
		answer.submit();
	});
	

});
