
const modifyButton = document.querySelector("#modify-button");
const cancelButton = document.querySelector("#cancel-button");

modifyButton.addEventListener('click', () => {
	alert("회원정보 수정이 완료되었습니다.");
	location.href='mypage-main.mypage';
})

cancelButton.addEventListener('click', () => {
	location.href='mypage-main.mypage';
})

function execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddress = data.address;
			var extraAddress = '';

			if (data.addressType === 'R') {
				if (data.bname !== '') {
					extraAddress += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddress += (extraAddress !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				fullAddress += (extraAddress !== '' ? ' (' + extraAddress
						+ ')' : '');
			}

			document.getElementById("address").value = fullAddress;
		}
	}).open();
}