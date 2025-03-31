const popup = document.getElementById("popup-wrapper");
const overlay = document.getElementById("overlay");

const openPopup = () => {
	popup.style.display = "block";
	overlay.style.display = "block";
	body.style.overflow = "hidden";
}

const closePopup = () => {
	popup.style.display = "none";
	overlay.style.display = "none";
	body.style.overflow = "visible";
}

const paymentButton = document.getElementById("payment-button");
const checkUser = document.getElementById("check-user");
const checkPayment = document.getElementById("check-payment");

const nameError = document.getElementById("name-error");
const addressError = document.getElementById("address-error");
const detailAddressError = document.getElementById("detail-address-error");
const phoneError = document.getElementById("phone-error");
const emailError = document.getElementById("email-error");

/*
paymentButton.addEventListener("click", () => {
	location.href = "auction-successful-bid.jsp"
})
*/

function validateForm() {
    const name = document.getElementById("name").value.trim();
    const address = document.getElementById("address").value.trim();
    const detailAddress = document.getElementById("datail-address").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const email = document.getElementById("email").value.trim();

    let isValid = true; 

    if (name === "") {
        nameError.style.display = "inline";
        nameError.style.color = "var(--color-warning)";
        isValid = false;
    }
    
    if (address === "") {
        addressError.style.display = "inline";
        addressError.style.color = "var(--color-warning)";
        isValid = false;
    }
    
    if (detailAddress === "") {
        detailAddressError.style.display = "inline";
        detailAddressError.style.color = "var(--color-warning)";
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

    if (isValid && checkUser.checked && checkPayment.checked) {
        paymentButton.classList.add("active");
    } else {
        paymentButton.classList.remove("active");
    }

    return isValid;
}

const changePaymentButton = () => {
    if (checkUser.checked && checkPayment.checked) {
        paymentButton.classList.add("active");
    } else {
        paymentButton.classList.remove("active");
    }
};

checkUser.addEventListener("change", changePaymentButton);
checkPayment.addEventListener("change", changePaymentButton);

paymentButton.addEventListener("click", function(event) {
    if (!validateForm()) {
        event.preventDefault();
    }
});

document.getElementById("name").addEventListener("input", function() {
    if (this.value.trim() !== "") {
        nameError.style.display = "none";
    }
});

document.getElementById("address").addEventListener("input", function() {
    if (this.value.trim() !== "") {
        addressError.style.display = "none";
    }
});

document.getElementById("detail-address").addEventListener("input", function() {
    if (this.value.trim() !== "") {
        detailAddressError.style.display = "none";
    }
});

document.getElementById("phone").addEventListener("input", function() {
    if (this.value.trim() !== "") {
        phoneError.style.display = "none";
    }
});

document.getElementById("email").addEventListener("input", function() {
    if (this.value.trim() !== "") {
        emailError.style.display = "none";
    }
});

// 토스페이
  // 결제하기 버튼 클릭 시 TossPay 결제창 호출
  document.getElementById("payment-button").addEventListener("click", function() {
    // TossPay 결제 API 호출 코드
    tosspay.popup({
      key: "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm", // TossPay에서 발급받은 API Key
      orderId: "unique_order_id_1234", // 주문 ID (고유값)
      amount: 999999999, // 결제 금액
      successUrl: "http://yourwebsite.com/success", // 결제 성공 후 리디렉션 URL
      failUrl: "http://yourwebsite.com/fail", // 결제 실패 후 리디렉션 URL
      cancelUrl: "http://yourwebsite.com/cancel", // 결제 취소 후 리디렉션 URL
    });
  });
