const items = document.querySelectorAll('.item');

items.forEach((item, index) => {
	item.addEventListener('click', () => {
	    const type = item.querySelector('.item-kind').textContent.trim();
	    const id = index + 1; 
	
	    const url = `mypage/form-detail.mypage?type=${type}&id=${id}`;
	    location.href = url;
	});
});