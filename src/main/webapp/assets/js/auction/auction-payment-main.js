const paymentButton = document.getElementById("payment-button");
const checkUser = document.getElementById("check-user");
const checkPayment = document.getElementById("check-payment");
const addressError = document.getElementById("address-error");
const phoneError = document.getElementById("phone-error");
const emailError = document.getElementById("email-error");

function validateForm() {
    // 입력값을 가져옵니다.
    const address = document.getElementById("address").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const email = document.getElementById("email").value.trim();

    let isValid = true; // 유효성 체크 변수 초기화


    // 필수 항목이 비어있을 경우 오류 메시지를 띄우고 유효성 체크를 위해 isValid를 false로 설정
    if (address === "") {
        addressError.style.display = "inline";
        addressError.style.color = "var(--color-warning)";
        isValid = false;
    }

    if (phone === "") {
        phoneError.style.display = "inline";
        phoneError.style.color = "var(--color-warning)";
        isValid = false;
    }

    if (email === "") {
        emailError.style.display = "inline";
        emailError.style.color = "var(--color-warning)";
        isValid = false;
    }

    // 유효성 체크 후 버튼 스타일 변경
    if (isValid && checkUser.checked && checkPayment.checked) {
        paymentButton.classList.add("active");
        paymentButton.style.cursor = "pointer"; // 버튼 클릭 가능
    } else {
        paymentButton.classList.remove("active");
        paymentButton.style.cursor = "not-allowed"; // 버튼 클릭 불가
    }

    return isValid; // 폼 제출 여부 결정
}

const changePaymentButton = () => {
    // 체크박스가 모두 체크되었을 때 결제 버튼 스타일 변경
    if (checkUser.checked && checkPayment.checked) {
        paymentButton.classList.add("active");
        paymentButton.style.cursor = "pointer"; // 버튼 클릭 가능
    } else {
        paymentButton.classList.remove("active");
        paymentButton.style.cursor = "not-allowed"; // 버튼 클릭 불가
    }
};

checkUser.addEventListener("change", changePaymentButton);
checkPayment.addEventListener("change", changePaymentButton);

paymentButton.addEventListener("click", function(event) {
    if (!validateForm()) {
        event.preventDefault(); // 폼이 유효하지 않으면 제출을 막음
    }
});
