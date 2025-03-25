document.addEventListener('DOMContentLoaded', () => {
	const replyWrap = document.getElementById('reply-wrap');
	const replyBtn = document.getElementById('answer-button');
	const cancelBtn = document.getElementById('cancel');
	const listBtn = document.getElementById('list-button');
	const btnWrapper = document.getElementById('button-wrapper');
	const registerBtn = document.getElementById('registration');

	replyBtn.addEventListener('click', () => {
		btnWrapper.style.display = 'none';
		replyWrap.style.display = 'flex';
	});

	cancelBtn.addEventListener('click', () => {
		replyWrap.style.display = 'none';
		btnWrapper.style.display = 'flex';
		document.getElementById('textarea').value = ''; 
	});

	registerBtn.addEventListener('click', () => {
		const content = document.getElementById('textarea').value;
		if (content.trim() === '') {
			alert('답변 내용을 입력하세요.');
			return;
		}
		/* 임시 */
		console.log('답변 등록:', content);
	});
	
	listBtn.addEventListener("click", () => {
	    location.href = 'mypage-admin-qna-list-waiting.mypage';
	});

});
