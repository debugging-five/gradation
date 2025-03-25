const item = document.getquerySelectorAll(".item")

item.forEach((item) => {
    item.addEventListener('click', () => {
		location.href = 'mypage-admin-qna-content.mypage';
	});
});