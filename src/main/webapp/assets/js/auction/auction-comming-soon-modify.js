const modifyButton = document.querySelector("#button-modify");
const listButton = document.querySelector("#button-list");

modifyButton.addEventListener("click", () => {
	location.href = 'auction-in-modify-form.auction'; 
});

listButton.addEventListener("click", () => {
	location.href = 'auction-bidding-main.auction';
});


