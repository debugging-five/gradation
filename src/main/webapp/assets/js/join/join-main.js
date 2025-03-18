const idCheckButton = document.querySelector("#id-check-button");
/*인풋박스*/
let id = document.querySelector("#id-input");
let pw = document.querySelector("#pw-input");
let pwCheck = document.querySelector("#pw-check-input");
let name = document.querySelector("#name-input");
let nickname = document.querySelector("#nickname-input");
let phone = document.querySelector("#phone-input");
let email = document.querySelector("#email-input");
let emailcheck = document.querySelector("#email-check-input");
/*체크박스*/
let checkAll = document.querySelector("#check_all")
let checkUp14 = document.querySelector("#check-up14");
let checkService = document.querySelector("#check-service");
let checkNeedPrivate = document.querySelector("#check-need-private");
let checkPrivate = document.querySelector("#check-private");

const allOk = () => {
	id = document.querySelector("#id-input");
	pw = document.querySelector("#pw-input");
	pwCheck = document.querySelector("#pw-check-input");
	name = document.querySelector("#name-input");
	nickname = document.querySelector("#nickname-input");
	phone = document.querySelector("#phone-input");
	email = document.querySelector("#email-input");
	emailcheck = document.querySelector("#email-check-input");

	checkAll = document.querySelector("#check_all")
	checkUp14 = document.querySelector("#check-up14");
	checkService = document.querySelector("#check-service");
	checkNeedPrivate = document.querySelector("#check-need-private");
	checkPrivate = document.querySelector("#check-private");
}

idCheckButton.addEventListener("click", () => {
	allOk()
	if(id.value) {
	    console.log(id.value);
		location.href = 'id-check.user?userId=' + id.value;		
	}
});
