document.addEventListener('DOMContentLoaded', () => {
	const listBtn = document.getElementById('list-button');
	const answerBtn = document.getElementById('answer-button');

	answerBtn.addEventListener('click', () => {
		const qnaId = answerBtn.dataset.id;
		location.href = `mypage-admin-qna-content-answer.mypage?id=${qnaId}`;
	});
	
	listBtn.addEventListener("click", () => {
	    location.href = 'mypage-admin-qna-list-waiting.mypage';
	});

});
