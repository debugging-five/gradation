
const modifyButton = document.querySelector("#modify-button");

modifyButton.addEventListener('click', () => {
	console.log("야임마");
	alert("회원정보 수정이 완료되었습니다.");
	location.href='mypage-main.mypage';
})