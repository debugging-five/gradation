const paymentButton = document.getElementById("payment-button");
const checkUser = document.getElementById("check-user");
const checkPayment = document.getElementById("check-payment");

const nameError = document.getElementById("name-error");
const addressError = document.getElementById("address-error");
const detailAddressError = document.getElementById("detail-address-error");
const phoneError = document.getElementById("phone-error");
const emailError = document.getElementById("email-error");

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
