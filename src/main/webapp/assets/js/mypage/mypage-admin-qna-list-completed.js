const item = document.querySelectorAll(".item")

item.forEach((item) => {
    item.addEventListener('click', () => {
		/* const id = item.dataset.id; */
		location.href = 'mypage-admin-qna-content-completed.mypage';
	});
});