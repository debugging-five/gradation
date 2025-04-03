let fileInput = document.querySelector("#file-input");
let fileName = document.querySelector("#file-name");
const checkDisplay = document.querySelector("#check-display");
const checkExhibition = document.querySelector("#check-exhibition");
const checkAuction = document.querySelector("#check-auction");
const checkMypage = document.querySelector("#check-mypage");
const checkOthers = document.querySelector("#check-others");

document.querySelector("#file-input").addEventListener("change", function () {
	let fileName = this.value.split("\\").pop();
	document.querySelector("#file-name").textContent = fileName;
});

window.onload = () => {
	let radioCheck = document.querySelector("#radio-check");
	console.log(radioCheck.value);
	switch (radioCheck.value) {
		case("작품전시"): {
			checkDisplay.checked = true;
			break;
		}
		case("전시회"): {		
			checkExhibition.checked = true;
			break;
		}
		case("경매"): {
			checkAuction.checked = true;
			break;
		}
		case("마이페이지"): {
			checkMypage.checked = true;
			break;
		}
		case("기타"): {
			checkOthers.checked = true;
			break;
		}
	}	
}